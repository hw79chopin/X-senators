const Sequelize = require('sequelize');
const sequelize = require('../util/database');

const User = sequelize.define('user', {
  id: {
    type: Sequelize.INTEGER,
    autoIncrement: true,
    allowNull: false,
    primaryKey: true
  },
  EMAIL: Sequelize.STRING,
  PASSWORD: Sequelize.STRING
}, {
  timestamps: false
});

module.exports = User;
