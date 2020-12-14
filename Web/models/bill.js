const Sequelize = require('sequelize');
const sequelize = require('../util/database');

const Bill = sequelize.define('bill', {
    id : {
        type: Sequelize.STRING,
        allowNull: false,
        primaryKey: true
      },
    BILL_NAME: Sequelize.STRING,
    COMMITTEE: Sequelize.STRING,
    PROPOSE_DT: Sequelize.STRING,
    PROC_RESULT: Sequelize.STRING,
    bill_content: Sequelize.STRING,
    vector: Sequelize.STRING
}, {
    timestamps: false
});

module.exports = Bill;