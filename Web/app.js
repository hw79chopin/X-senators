// import modules
const path = require('path');
const express = require('express');
const bodyParser = require('body-parser');
const sequelize = require('./util/database');
const flash = require('connect-flash');
const cookieParser = require('cookie-parser');
const expressSession = require('express-session');
const errorController = require('./controllers/error');
const SessionStore = require('express-session-sequelize')(expressSession.Store);
const sequelizeSessionStore = new SessionStore({
  db: sequelize,
});
// const csrf = require('csurf');

// import my models
const User = require('./models/user');
const UserInterest = require('./models/userInterest');
const Senator = require('./models/Senator');
const Bill = require('./models/bill');
const BillsProposer = require('./models/billsProposer');
const RecommendResult = require('./models/recommendResult');
const RecommendSenator = require('./models/recommendSenator');
const SponSenator = require('./models/sponSenator');

// Setting App
const app = express();
app.set('view engine', 'ejs');
app.set('views', 'views');

// Importing routers
const mainRoutes = require('./routes/main');
const authRoutes = require('./routes/auth');

// Setting bodyparser, path, flash
app.use(bodyParser.urlencoded({ extended: false }));
app.use(bodyParser.json());
app.use(express.static(path.join(__dirname, 'public')));

app.use(cookieParser());
app.use(expressSession({
    secret: 'keep it secret, keep it safe.',
    store: sequelizeSessionStore,
    resave: false,
    saveUninitialized: false,
}));
// app.use(csrfProtection);
app.use(flash());

// 로그인 여부 확인한 다음에 request에 user 붙여주기
app.use((req, res, next) => {
  if (!req.session.user) {
    return next();
  }
  User.findByPk(req.session.user.id)
    .then(user => {
      req.user = user;
      next();
    })
    .catch(err => console.log(err));
});

// 모든 views에 csrfToken을 추가하는 방법!
app.use((req, res, next) => {
  res.locals.isAuthenticated = req.session.isLoggedIn;
  // res.locals.csrfToken = req.csrfToken();
  next();
});

// Routers
app.use(mainRoutes);
app.use(authRoutes);
app.use(errorController.get404);

// Setting relations
// Product.belongsTo(User, { constraints: true, onDelete: 'CASCADE' });
// User.hasMany(Product);
// User.hasOne(Cart);
// Cart.belongsTo(User);
// RecommendSenator.belongsTo(RecommendResult);
// Senator.belongsToMany(RecommendSenator, { through: RecommendResult });
// Product.belongsToMany(Cart, { through: CartItem });
// Order.belongsTo(User);
// User.hasMany(Order);
// Order.belongsToMany(Product, { through: OrderItem });

sequelize
.sync()
  .then(result => {
    return User.findByPk(1);
  })
  .then(user => {
    if (!user) {
      return User.create({ name: 'Hyun', email: 'test@test.com', pwd : '1q2w3e'});
    }
    return user;
  })
  .then(user => {
    app.listen(3000);
  })
  .catch(err => {
    console.log(err);
  });