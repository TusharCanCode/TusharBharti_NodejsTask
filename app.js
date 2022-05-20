const express = require('express');
const app = express();
const helmet = require('helmet');
const cookieParser = require('cookie-parser');
const cors = require('cors');
const expressFileUpload = require('express-fileupload');
const connection = require('./connect');

//Middleware:
app.use(helmet());
app.use(expressFileUpload())
app.use(express.json());
app.use(cors({ credentials: true, origin: true }));
app.use(cookieParser());

//Routers:
const authRoute = require('./routes/auth');
const patientRoute = require('./routes/patient');

//API routes:
app.use('/api/auth', authRoute);
app.use('/api/patient', patientRoute);

connection();
app.get('/', (req, res)=>{
    res.send("Assignment by Tushar Bharti.")
})
app.listen(process.env.PORT || 5000, () => {
    console.log('The server is running successfully!');
})