const Sequelize = require('sequelize');
const sequelize = require('../util/database');

const SponsorSenator = sequelize.define('sponsorSenator', {
  id: {
    type: Sequelize.INTEGER,
    autoIncrement: true,
    allowNull: false,
    primaryKey: true
  },
  senatorId: Sequelize.INTEGER,
  userId: Sequelize.INTEGER,
  sponsorFirstName: Sequelize.STRING,
  sponsorLastName: Sequelize.STRING,
  sponsorMessage: Sequelize.STRING,
  sponsorMoney: Sequelize.STRING,
  emailReceipt: Sequelize.STRING,
  sponsorView: Sequelize.STRING
}, {
  timestamps: false
});

module.exports = SponsorSenator;