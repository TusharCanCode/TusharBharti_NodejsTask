const mysql = require('mysql2');
require('dotenv').config()

const db = mysql.createConnection({
    host: process.env.SQL_HOST,
    user: process.env.SQL_USER,
    password: process.env.SQL_PASSWORD,
    database: process.env.SQL_DB_NAME,
    connectionLimit: process.env.SQL_CONNECTION_LIMIT,
});

module.exports = db;