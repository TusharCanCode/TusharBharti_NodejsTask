const express = require('express');
const jwt = require('jsonwebtoken');
const router = express.Router();
const maxAge = 24 * 60 * 60;
const db = require('../database');
const util = require('util');
require('dotenv').config();

const query = util.promisify(db.query).bind(db);

//Route-1: Registering a new psychiatrist
router.post('/newPsychiatrist', async (req, res) => {
    const { firstName, lastName, hospitalName, phoneNumber, pincode, state, email, password } = req.body;
    let error = { firstName: '', lastName: '', hospitalName: '', phoneNumber: '', pincode: '', state: '', email: '', password: '', other: '' };

    try {
        let isError = false;
        if (!firstName || firstName.length > 20) {
            error['firstName'] = "First Name can't be empty and should be of maximum 20 characters";
            isError = true;
        }
        if (!lastName || lastName.length > 20) {
            error['lastName'] = "Last Name can't be empty and should be of maximum 20 characters";
            isError = true;
        }
        if (!hospitalName) {
            error['hospitalName'] = "This field is mandatory";
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
        if(phoneNumber && !ValidatePhoneNumber(phoneNumber)) {
            error['phoneNumber'] = "Invalid Phone Number";
            isError = true;
        }

        if (isError)
            return res.status(400).json({ errors: error });

        const sqlQuery = `INSERT INTO psychiatrist (FirstName, LastName, hospitalName, phoneNumber, pincode, State, email, password) VALUES("${firstName}", "${lastName}", "${hospitalName}", "${phoneNumber}", ${pincode}, "${state}", "${email}", "${password}")`;
        const response = await query(sqlQuery)
        const authToken = generateAccessToken(response.insertId);
        res.cookie('JWT', authToken, { httpOnly: true, maxAge: maxAge * 1000, sameSite: "lax" });
        return res.status(200).json({ "Token": authToken });

    } catch (err) {
        error['other'] = err.message;
        res.status(400).json({ errors: error });
    }
});

//Route-2: Login route for psychiatrist
router.post('/login', async (req, res) => {
    const { email, password } = req.body;
    let error = { email: '', password: '', other: '' };

    try {
        let isError = false;
        if (!email || !ValidateEmail(email)) {
            error['email'] = "Enter valid email";
            isError = true;
        }
        if (!password) {
            error['password'] = "Enter password";
            isError = true;
        }

        if (isError)
            return res.status(400).json({ errors: error });

        const sqlQuery = `SELECT * FROM psychiatrist WHERE email="${email}" AND password="${password}"`;
        const response = await query(sqlQuery);
        if (!response[0])
            return res.status(404).json({ errors: { other: "404 Not found" } });
        const authToken = generateAccessToken(response[0].ID);
        res.cookie('JWT', authToken, { httpOnly: true, maxAge: maxAge * 1000, sameSite: "lax" });
        return res.status(200).json({ "Token": authToken });

    } catch (err) {
        error['other'] = err.message;
        res.status(400).json({ errors: error });
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