// 필요한 module import하기
const bcrypt = require('bcryptjs');
const User = require('../models/user');

// functions
exports.getLogin = (req, res, next) => {
  let message = req.flash('error');
  if (message.length > 0) {
    message = message[0];
  } else {
    message = null;
  }
  res.render('auth/logIn.ejs', {
    pageTitle: 'Login',
    errorMessage: message,
    path: '/logIn'
  });
};

exports.getLogOut = (req, res, next) => {
  res.render('auth/logOut.ejs', {
    pageTitle: 'LogOut',
    path: '/logOut'
  });
};

exports.getSignUp = (req, res, next) => {
  let message = req.flash('error');
  if (message.length > 0) {
    message = message[0];
  } else {
    message = null;
  }
  res.render('auth/signUp.ejs', {
    pageTitle: 'signUp',
    errorMessage: message,
    path: '/logIn'
  });
};

exports.postLogin = (req, res, next) => {
  const email = req.body.email;
  const password = req.body.password;
  User.findOne({ where: { EMAIL: email } })
    .then(user => {
      if (!user) {
        req.flash('error', 'Invalid email.');
        return res.redirect('/logIn');
      }
      bcrypt
        .compare(password, user.PASSWORD)
        .then(doMatch => {
          if (doMatch) {
            req.session.isLoggedIn = true;
            req.session.user = user;
            return req.session.save(err => {
              console.log(err);
              res.redirect('/');
            });
          }
          req.flash('error', 'Invalid password.');
          res.redirect('/logIn');
        })
        .catch(err => {
          console.log(err);
          res.redirect('/logIn');
        });
    })
    .catch(err => console.log(err));
};


exports.postSignUp = (req, res, next) => {
  const email = req.body.email;
  const password = req.body.password;
  const confirmPassword = req.body.confirmPassword;
  if (password !== confirmPassword) {
    req.flash('error', 'Password is different.');
    return res.redirect('/signUp');
  }
  User.findOne({ where : { EMAIL: email }})
    .then(userDoc => {
      if (userDoc) {
        req.flash('error', 'Email address already taken.');
        return res.redirect('/signUp');
      }
      return bcrypt
        .hash(password, 12)
        .then(hashedPassword => {
          User.create({
            EMAIL: email,
            PASSWORD: hashedPassword,
          })
        })
        .then(result => {
          console.log("*".repeat(20), 'SignUp successed', "*".repeat(20))
          res.redirect('/logIn');
        }).catch(err => console.log(err));
    })
    .catch(err => {
      console.log(err);
    });
};

exports.postLogOut = (req, res, next) => {
  req.session.destroy(err => {
    console.log(err);
    res.redirect('/');
  })
};