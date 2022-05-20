# Deployed web link (Heroku)
### `https://tushar-bharti-nodejs-task.herokuapp.com/`

# Libraries/Frameworks used:
### `express`
Used for routing in nodeJS. Express is easy to use and if you have knowledge of javascript it becomes easier
### `mysql2`
Needed for interacting with MySQL database. 
### `dotenv`
Used to take in environment variables.
### `firebase`
Required for uploading images to google firebase
### `jsonwebtoken`
For safe routing. Generates token for authorized users.
### `cookie-parser`
To generate cookie which stores the JWT inside it.

# API Endpoints
### `POST /api/auth/newPsychiatrist`
This route is for psychiatrist to register themselves.
Request Body (JSON): 
{
	"firstName": "Doctor",
	"lastName": "Z",
	"hospitalName": "Indira Gandhi Institute of Medical Sciences (IGIMS)",
	"phoneNumber": "+919876543235",
	"pincode": 110045,
	"state": "New Delhi",
	"email": "DoctorZ@gmail.com",
	"password": "Test@2021"
}

### `POST /api/auth/login`
This route is for the registerd psychiatrist to login themselves.
Request Body (JSON) : 
{
    "email": "DoctorZ@gmail.com",
    "password": "Test@2021"
}

### `POST /api/patient/newPatient`
This route is for the registerd psychiatrist to register a new patient.
Request Body (Form-data) : 
name (Text) : Patient 4
address (Text) : Address of patient 4
email (Text) : patient4@gmail.com
password (Text) : Test@2022
phoneNumber (Text) : +919876543252
photo (File) : image.jpg

### `GET /api/patient/allPatients`
This route is created for fetching all patients of logged in psychiatrist.

### `GET /api/patient/patientList`
This route is created for fetching patients registered for each psychiatrist.

# Postman Link
### `https://www.postman.com/naivedev/workspace/tushar-bharti-nodejs-task/collection/16542984-16026d42-714b-4b87-a6cc-0c784dc48da8?action=share&creator=16542984`

# How to deploy project
### `If you are downloading the project in your system:`
1. Use command : `npm i` to install all the required packages
2. Create a .env file with following key-value pairs:
   1. SQL_HOST = Mysql database host
   2. SQL_USER = Mysql database user
   3. SQL_PASSWORD = Mysql database password
   4. SQL_DB_NAME = Mysql database name
   5. SQL_CONNECTION_LIMIT = Connections limit
   6. ACCESS_TOKEN = Secret Key to sign JWT
   7. FIREBASE_KEY = firebase api key
3. Use command : `npm start` to deploy the project at localhost
4. Test the project through postman collection endpoints

### `If you are using the project already deployed on heroku:`
1. Test the project through postman collection endpoints.

# Repository url
### `https://github.com/TusharCanCode/TusharBharti_NodejsTask`