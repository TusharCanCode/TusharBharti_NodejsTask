const { initializeApp } = require('firebase/app');
const { getStorage } = require('firebase/storage');
require('dotenv').config();

const firebaseConfig = {
  apiKey: process.env.FIREBASE_KEY,
  authDomain: "lattice-assignment.firebaseapp.com",
  projectId: "lattice-assignment",
  storageBucket: "lattice-assignment.appspot.com",
  messagingSenderId: "443448050975",
  appId: "1:443448050975:web:5cd783cbdfc5a69a95dc2a",
  measurementId: "G-YWK2K11ZJW"
};

const app = initializeApp(firebaseConfig);
const storage = getStorage(app);
module.exports = storage;