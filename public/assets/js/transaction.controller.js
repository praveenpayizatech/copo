console.log("testing");

const express = require("express");
const router = express.Router();
const Joi = require("joi");
var uniqid = require("uniqid");
const axios = require("axios");
const moment = require('moment');
const { object, func } = require("joi");
const { max } = require("moment-timezone");
var Tx = require('@ethereumjs/tx').Transaction;
const { SENDER_PRIVATE_KEY, SENDER_ADDRESS, WEB3_WS_URL } = process.env;
const Web3 = require('web3');
let web3 = new Web3(WEB3_WS_URL);
const options = {
    abortEarly: false,
    allowUnknown: true,
    stripUnknown: true,
};

router.get("/user/transfer/matic", maticTransfer);
module.exports = router;

async function maticTransfer(req, res, next) {
    console.log('req.clientIp :>', req.clientIp);
    const schema = Joi.object({
        address: Joi.string().min(3).max(46).required().label('Address'),
        amount: Joi.number().positive().required().label('Amount')
    });
    const { error, value } = schema.validate(req.body, options);
    if (error) return res.status(400).json({ success: false, message: error.details[0].message });
    try {
        const nonce = await web3.eth.getTransactionCount(SENDER_ADDRESS, 'latest');
        const gas = await web3.eth.estimateGas({ from: SENDER_ADDRESS, to: value.address, amount: Web3.utils.toWei(String(value.amount), "ether") });
        const transaction = {
            'to': value.address,
            'value': Web3.utils.toWei(String(value.amount), 'ether'),
            'gas': gas,
            'nonce': nonce
        };
        console.log('transaction:::>', transaction);
        const signedTx = await web3.eth.accounts.signTransaction(transaction, SENDER_PRIVATE_KEY);
        web3.eth.sendSignedTransaction(signedTx.rawTransaction, function (error, hash) {
            if (!error) {
                console.log("🎉 The hash of your transaction is: ", hash);
                return res.json({ success: true, message: 'Transaction submit successfully', hash });
            } else {
                console.log("❗Something went wrong while submitting your transaction:", error)
                return res.status(400).json({ success: false, message: '❗Something went wrong while submitting your transaction' });
            }
        });
    } catch (err) {
        console.log('err ::::>', err);
        return res.status(400).json({ success: false, message: 'Something went wrong while submitting your transaction..' });
    }
}