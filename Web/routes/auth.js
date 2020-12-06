const path = require('path');
const express = require('express');
const authController = require('../controllers/auth');
// const isAuth = require('../middleware/is-auth');

const router = express.Router();

router.get('/login', authController.getLogin);

router.get('/signUp', authController.getSignUp);

router.get('/logOut', authController.getLogOut);

router.post('/login', authController.postLogin);

router.post('/signUp', authController.postSignUp);

router.post('/logOut', authController.postLogOut);

module.exports = router;