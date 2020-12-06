const Sequelize = require('sequelize');
const sequelize = require('../util/database');

const RecommendResult = sequelize.define('recommendResult', {
  id: {
    type: Sequelize.INTEGER,
    autoIncrement: true,
    allowNull: false,
    primaryKey: true
  },
  userInterestID: Sequelize.STRING,
  SenatorID: Sequelize.STRING,
}, {
  timestamps: false
});

module.exports = RecommendResult;