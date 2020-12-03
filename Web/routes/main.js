const path = require('path');
const express = require('express');
const mainController = require('../controllers/main');
// const isAuth = require('../middleware/is-auth');

const router = express.Router();

router.get('/', mainController.getIndex);

router.get('/gallery', mainController.getGallery);

router.get('/login', mainController.getLogin);

// router.get('/quotes-list/:quoteId', quoteController.getQuote);

// router.get('/quotes-list', quoteController.getQuotesList);

// router.get('/add-quote', isAuth, quoteController.getAddQuote);

// router.post('/add-quote', isAuth, quoteController.postAddQuote);

// router.get('/edit-quote/:quoteId', isAuth, quoteController.getEditQuote);

// router.post('/edit-quote', isAuth, quoteController.postEditQuote);

// router.get('/search-quotes', isAuth, quoteController.getSearchQuotes);

module.exports = router;