const UserInterest = require('../models/userInterest');
const User = require('../models/user');
const Senator = require('../models/senator');
const Sequelize = require('sequelize');
const Bill = require('../models/bill');
const BillsProposer = require('../models/billsProposer');
const RecommendResult = require('../models/recommendResult');
const RecommendSenator = require('../models/recommendSenator');
const SponSenator = require('../models/sponSenator');
const http = require('http');
const bodyParser = require('body-parser');
const request = require('request-promise');

// const PythonShell =require('python-shell'); 

exports.getIndex = (req, res, next) => {
    res.render('index', {
        pageTitle: "나의 국회의원은?",
        path: '/index'
    })
};

exports.getGallery = (req, res, next) => {
    Senator.findAll()
        .then(senatorsInfo => {
            res.render('gallery', {
                pageTitle: "21대 국회의원 둘러보기",
                path: '/gallery',
                senatorsInfo: senatorsInfo
            })
        })
};


exports.getUserInput = (req, res, next) => {
    res.render('userInput', {
        pageTitle: "관심사를 알려줘!",
        path: '/userInput'
    })
};

exports.postUserInterest = (req, res, next) => {
    const userInput = req.body.userInput;
    const userId = req.user.id;
    UserInterest.create({
        USER_ID: userId,
        USER_INPUT: userInput
    })
        .then(result => {
            res.redirect('/recommend-result');
        })
        .catch(err => {
            console.log(err);
        })
};

exports.getRecommendResult = (req, res, next) => {
    let senatorOutput = {};
    let userVector = [];
    let userInterestID = '';
    let senatorsIdString = '';
    let senator_info = {};
    UserInterest.findAll({
        where: { USER_ID: req.user.id }, order: ['id']
    })
        .then(interests => {
            userInterestID = parseInt(interests[interests.length - 1].id);
            userInput = interests[interests.length - 1].USER_INPUT;
            return userInput
        })
        .then(userInput => {
            const options = {
                uri: 'http://127.0.0.1:5000/recommend',
                method: 'POST',
                body: { 'user_input': userInput },
                json: true
            };
            return request(options)
        })
        .then(parsedBody => {
            senatorOutput = parsedBody[['message']];
            userVector = parsedBody[['vector']];
            const senatorsId = Object.keys(parsedBody['message']);
            senatorsIdString = senatorsId.join(",")
            senatorsId.forEach((val, index) => {
                senatorsId[index] = parseInt(val)
            });
            Senator.findAll({
                where: {
                    id: senatorsId
                }
            })
                .then(senatorInfo => {
                    senator_info = senatorInfo;
                    RecommendResult.create({
                        userInterestID: userInterestID,
                        userVector: userVector,
                        SenatorID: senatorsIdString
                    })
                        .then(result => {
                            RecommendResult.findAll({
                                limit:1,
                                where: {userInterestID : userInterestID},
                                order:[['id','DESC']]
                            })
                            .then(lastRecord => {
                                for (var i=0; i < senatorsId.length; i++) {
                                    RecommendSenator.create({
                                        recommendResultsId: lastRecord[0]['id'],
                                        senatorsId: senatorsId[i]
                                    })
                                }
                                res.render('recommend-result', {
                                    pageTitle: "당신의 국회의원은!?!",
                                    path: '/userInput',
                                    senators: senator_info,
                                    similarity: senatorOutput,
                                    senatorsIdString: senatorsIdString,
                                    userInterestID: userInterestID,
                            })
                            })
                            .catch(function (err) {
                                console.log(err);
                            });
                        })
                        .catch(function (err) {
                    console.log(err);
                });
                })
                .catch(function (err) {
                    console.log(err);
                });
        })
        .catch(err => {
            console.log(err);
        })
};

exports.getSenatorInfoSimilarBills = (req, res, next) => {
    const senatorId = req.params.senatorId;
    var senatorInfo = {};
    Senator.findByPk(senatorId)
        .then(senatorInfo => {
            senatorInfo = senatorInfo;
            UserInterest.findAll({
                where: { USER_ID: req.user.id }, order: ['id']
            })
                .then(interests => {
                    userInterestID = parseInt(interests[interests.length - 1].id);
                    userInputId = interests[interests.length - 1].id;
                    return userInputId
                })
                .then(userInputId => {
                    RecommendResult.findAll({
                        where: { userInterestId: userInputId }
                    })
                        .then(results => {
                            userVector = results[results.length - 1]['userVector'];
                            const options = {
                                uri: 'http://127.0.0.1:5000/similar_bills',
                                method: 'POST',
                                body: { 'userVector': userVector, 'senatorId': senatorId },
                                json: true
                            };
                            return request(options)
                        })
                        .then(bills_id => {
                            bills_id = Object.keys(bills_id['message']);
                            Bill.findAll({
                                where: { id: bills_id },
                            })
                                .then(bills => {
                                    res.render('senator-info', {
                                        pageTitle: "의원 상세정보",
                                        senatorInfo: senatorInfo,
                                        path: '/userInput',
                                        bills: bills
                                    })
                                })
                        })
                })
                .catch(err => console.log(err));
        }
        )};

exports.getSenatorInfo = (req, res, next) => {
    const senatorId = req.params.senatorId;
    var senatorInfo = {};
    Senator.findByPk(senatorId)
        .then(senatorInfo => {
            senatorInfo = senatorInfo;
            var senatorName = senatorInfo['NAME']
            Bill.findAll({
                where: { RST_PROPOSER: senatorName },
                order: Sequelize.literal('rand()'),
                limit: 5
            })
                .then(bills => {
                    console.log(senatorInfo['id']);
                    res.render('senator-info', {
                        pageTitle: "의원 상세정보",
                        senatorInfo: senatorInfo,
                        path: '/userInput',
                        bills: bills
                    })
                });
        })
        .catch(err => console.log(err));
};

exports.getSponsorSenator = (req, res, next) => {
    const senatorId = req.params.senatorId;
    var senatorInfo = {};
    Senator.findByPk(senatorId)
        .then(senatorInfo => {
            res.render('sponsor-senator', {
                pageTitle: "의원 후원하기",
                senatorInfo: senatorInfo,
                path: '/sponsor-senator',
            })
        })
        .catch(err => {
            console.log(err)
        });
};

exports.postSponsorSenator = (req, res, next) => {
    var useremailReceipt = 'off';
    const userFirstName = req.body.firstName;
    const userLastName = req.body.lastName;
    const userMessage = req.body.message;
    const senatorId = req.body.senatorId;
    const userMoney = req.body.money;
    const userView = req.body.view;
    const userId = req.user.id;
    if (req.body.emailReceipt) {
        useremailReceipt = req.body.emailReceipt;
    }

    SponSenator.create({
        senatorId: senatorId,
        userId: userId,
        sponsorFirstName: userFirstName,
        sponsorLastName: userLastName,
        sponsorMessage: userMessage,
        sponsorMoney: userMoney,
        emailReceipt: useremailReceipt,
        sponsorView: userView,
    })
        .then(result => {
            console.log("DB에 저장 완료");
            res.redirect('/sponsor-success'
            );
        })
        .catch(err => {
            console.log(err);
        })
};

exports.getSponsorSuccess = (req, res, next) => {
    res.render('sponsor-success', {
        pageTitle: "후원 성공!",
        path: '/sponsor-success',
    })
};