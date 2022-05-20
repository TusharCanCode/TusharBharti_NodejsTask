const express = require('express');
const jwt = require('jsonwebtoken');
const router = express.Router();
const maxAge = 24 * 60 * 60;
const db = require('../database');
const util = require('util');
const fetchUser = require('../middleware/fetchuser');
const storage = require('../firebase');
const { ref, uploadBytesResumable, getDownloadURL } = require('firebase/storage');
require('dotenv').config();

const query = util.promisify(db.query).bind(db);

//Route-1: Registering a new psychiatrist
router.post('/newPatient', fetchUser, async (req, res) => {
    const { name, address, email, phoneNumber, password } = req.body;
    let error = { name: '', address: '', phoneNumber: '', email: '', password: '', patientPhoto: '', other: '' };
    // console.log(req.files.photo)
    try {
        let isError = false;
        if (!name || name.length < 3) {
            error['name'] = "Name can't be empty and should be of minimum 3 characters";
            isError = true;
        }
        if (!address || address.length < 10) {
            error['address'] = "Address can't be empty and should be of minimum 10 characters";
            isError = true;
        }
        if (!email || !ValidateEmail(email)) {
            error['email'] = "Enter valid email";
            isError = true;
        }
        if (!password || !ValidatePassword(password)) {
            error['password'] = "Password must contain one upper character, one lower character and a number. Max length 15 and min length 8";
            isError = true;
        }
        if (phoneNumber && !ValidatePhoneNumber(phoneNumber)) {
            error['phoneNumber'] = "Invalid Phone Number - Enter 10 digit phone number with country code";
            isError = true;
        }
        if (!req.files.photo) {
            error['patientPhoto'] = "Upload patient photo";
            isError = true;
        }

        if (isError)
            return res.status(400).json({ errors: error });


        const metadata = {
            contentType: 'image/jpeg/jpg/png'
        };
        const imageFile = req.files.photo;
        const imgName = Date.now() + imageFile.name;
        const storageRef = ref(storage, 'patientImages/' + imgName);
        const uploadTask = uploadBytesResumable(storageRef, imageFile.data, metadata);
        uploadTask.on('state_changed',
            (snapshot) => {
                const progress = (snapshot.bytesTransferred / snapshot.totalBytes) * 100;
                console.log('Upload is ' + progress + '% done');
                switch (snapshot.state) {
                    case 'paused':
                        console.log('Upload is paused');
                        break;
                    case 'running':
                        console.log('Upload is running');
                        break;
                    default:
                        break;
                }
            },
            (error) => {
                console.log("error:", error.code);
            },
            () => {
                getDownloadURL(uploadTask.snapshot.ref).then(async (downloadURL) => {
                    const url = downloadURL;
                    try {
                        const sqlQuery = `INSERT INTO patient (Name, Address, email, phoneNumber, password, patientPhoto, psychiatristID) VALUES("${name}", "${address}", "${email}", "${phoneNumber}", "${password}", "${url}", ${req.user.id})`;
                        await query(sqlQuery)
                        return res.status(200).json({ alert: "Patient added successfully!" });
                    }
                    catch (err) {
                        console.log(err);
                        error['other'] = err.message;
                        res.status(400).json({ errors: error });
                    }
                });
            }
        );

    } catch (err) {
        console.log(err);
        error['other'] = err.message;
        res.status(400).json({ errors: error });
    }
});

//Route-2: Fetching all patients of a psychiatrist
router.get('/allPatients', fetchUser, async (req, res) => {
    try {
        const sqlQuery = `SELECT ID, Name, Address, email, phoneNumber, password FROM patient WHERE psychiatristID=${req.user.id}`;
        const response = await query(sqlQuery);
        return res.status(200).json({ patients: response });

    } catch (err) {
        res.status(400).json({ errors: err.message });
    }
});

//Route-3: Fetching patients registered for each psychiatrist
router.get('/patientList', fetchUser, async (req, res) => {
    try {
        const sqlQuery = `select T1.hospitalName As 'Hospital Name', T1.FirstName As 'Psychiatrist First Name', T1.LastName As 'Psychiatrist Last Name', count(T2.ID)As'Total Patients' from psychiatrist As T1 Left join patient As T2 ON T1.ID = T2.psychiatristID group by(T1.ID)`;
        const response = await query(sqlQuery);
        return res.status(200).json({ list: response });

    } catch (err) {
        res.status(400).json({ errors: err.message });
    }
});

//Utility Functions
function ValidateEmail(mail) {
    let mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
    if (!(mail.match(mailformat)))
        return false;

    return true;
}

function ValidatePassword(password) {
    let paswd = /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,15}$/;
    if (!(password.match(paswd)))
        return false;

    return true;
}

function ValidatePhoneNumber(phoneNumber) {
    var phoneno = /^\+([0-9]{2})\)?[-. ]?([0-9]{5})[-. ]?([0-9]{5})$/;
    if (!(phoneNumber.match(phoneno)))
        return false;

    return true;
}

function generateAccessToken(id) {
    return jwt.sign({ user: { id: id } }, process.env.ACCESS_TOKEN, { expiresIn: maxAge });
}
module.exports = router;