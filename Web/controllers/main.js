// const Product = require('../models/product');

exports.getIndex = (req, res, next) => {
    res.render('index', {
        pageTitle: "나의 국회의원은?",
        path: '/'
    })
};

exports.getGallery = (req, res, next) => {
    res.render('gallery', {
        pageTitle: "21대 국회의원 둘러보기",
        path: '/gallery'
    })
};

exports.getLogin = (req, res, next) => {
    res.render('auth/login', {
        pageTitle: "로그인하기",
        path: '/login'
    })
};