const Sequelize = require('sequelize');
const sequelize = require('../util/database');

const Senator = sequelize.define('senator', {
  id: {
    type: Sequelize.STRING,
    allowNull: false,
    primaryKey: true
  },
  DAESU: Sequelize.INTEGER,
  DAE: Sequelize.STRING,
  DAE_NM: Sequelize.STRING,
  NAME: Sequelize.STRING,
  NAME_HAN: Sequelize.STRING,
  JA: Sequelize.STRING,
  HO: Sequelize.STRING,
  BIRTH: Sequelize.STRING,
  BON: Sequelize.STRING,
  POSI: Sequelize.STRING,
  HAK: Sequelize.STRING,
  HOBBY: Sequelize.STRING,
  BOOK: Sequelize.STRING,
  SANG: Sequelize.STRING,
  DEAD: Sequelize.STRING,
  URL: Sequelize.STRING,
  PARTY: Sequelize.STRING,
  vector: Sequelize.STRING
}, {
  timestamps: false
});

module.exports = Senator;