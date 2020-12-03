// import modules
const path = require('path');
const express = require('express');
const bodyParser = require('body-parser');
const sequelize = require('./util/database');

// import my models
// const errorController = require('./controllers/error');
// const Product = require('./models/product');
const User = require('./models/user');
// const Cart = require('./models/cart');
// const CartItem = require('./models/cart-item');
// const Order = require('./models/order');
// const OrderItem = require('./models/order-item');
const Main = require('./models/user');
 
// Setting App
const app = express();
app.set('view engine', 'ejs');
app.set('views', 'views');

// Importing routers
const mainRoutes = require('./routes/main');

// Setting bodyparser, path, flash
app.use(bodyParser.urlencoded({ extended: false }));
app.use(express.static(path.join(__dirname, 'public')));

// app.use(
//   session({
//     secret: 'my secret',
//     resave: false,
//     saveUninitialized: false,
//     store: store
//   })
// );
// app.use(csrfProtection);
// app.use(flash());

// Ver 1.0: 로그인 여부 확인한 다음에 request에 user 붙여주기
// app.use((req, res, next) => {
//   if (!req.session.user) {
//     return next();
//   }
//   User.findById(req.session.user._id)
//     .then(user => {
//       req.user = user;
//       next();
//     })
//     .catch(err => console.log(err));
// });

// Ver 2.0: 임의의 유저 보내기
// app.use((req, res, next) => {
//   User.findById(1)
//     .then(user => {
//       req.user = user;
//       next();
//     })
//     .catch(err => console.log(err));
// });

// 모든 views에 csrfToken을 추가하는 방법!
// app.use((req, res, next) => {
//   res.locals.isAuthenticated = req.session.isLoggedIn;
//   res.locals.csrfToken = req.csrfToken();
//   next();
// });

// Routers
app.use(mainRoutes);
// app.use(shopRoutes);
// app.use(errorController.get404);

// Setting relations
// Product.belongsTo(User, { constraints: true, onDelete: 'CASCADE' });
// User.hasMany(Product);
// User.hasOne(Cart);
// Cart.belongsTo(User);
// Cart.belongsToMany(Product, { through: CartItem });
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
