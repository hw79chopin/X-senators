const Sequelize = require('sequelize');

const sequelize = new Sequelize('mySenators', 'root', '12341234', {
  dialect: 'mysql',
  host: 'localhost'
});

module.exports = sequelize;