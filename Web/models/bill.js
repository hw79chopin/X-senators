const Sequelize = require('sequelize');
const sequelize = require('../util/database');

const Bill = sequelize.define('bill', {
    id : {
        type: Sequelize.STRING,
        allowNull: false,
        primaryKey: true
      },
    BILL_NO: Sequelize.STRING,
    BILL_NAME: Sequelize.STRING,
    COMMITTEE: Sequelize.STRING,
    PROPOSE_DT: Sequelize.STRING,
    PROC_RESULT: Sequelize.STRING,
    RST_PROPOSER: Sequelize.STRING,
    bill_content: Sequelize.STRING,
    senators_list: Sequelize.STRING
}, {
    timestamps: false
});

module.exports = Bill;