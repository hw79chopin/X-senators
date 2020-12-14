const Sequelize = require('sequelize');
const sequelize = require('../util/database');

const BillsProposer = sequelize.define('billsProposer', {
    snt_id: Sequelize.INTEGER,
    bill_id: Sequelize.STRING,
}, {
    timestamps: false
});

module.exports = BillsProposer;