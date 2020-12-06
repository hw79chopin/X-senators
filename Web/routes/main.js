const path = require('path');
const express = require('express');
const mainController = require('../controllers/main');
// const isAuth = require('../middleware/is-auth');

const router = express.Router();

router.get('/', mainController.getIndex);

router.get('/gallery', mainController.getGallery);

router.get('/userInput', mainController.getUserInput);

router.get('/recommend-result', mainController.getRecommendResult);

router.get('/senator-info/:senatorId', mainController.getSenatorInfo);

router.get('/sponsor-senator/:senatorId', mainController.getSponsorSenator);

router.post('/add-user-interest', mainController.postUserInterest);

router.post('/sponsor-senator', mainController.postSponsorSenator);

router.get('/sponsor-success', mainController.getSponsorSuccess);

module.exports = router;