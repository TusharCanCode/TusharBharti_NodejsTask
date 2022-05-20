const db = require('./database');

const connect = () => {
    db.connect(function (err) {
        if (err) {
            console.log(err);
        } else {
            console.log("Connection to database successful");
        }
    })
}

module.exports = connect;