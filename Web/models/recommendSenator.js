const Sequelize = require('sequelize');
const sequelize = require('../util/database');

const RecommendSenator = sequelize.define('recommendSenator', {
    recommendResultsId: {
      type: Sequelize.INTEGER,
      primaryKey: true
    },
    senatorsId: {
      type: Sequelize.INTEGER,
      primaryKey: true
    }
}, {
  timestamps: false
});

module.exports = RecommendSenator;