const express = require('express')
const bodyParser = require('body-parser')
const path = require('path')
const app = express()
const db = require('./models/bundle.model')

app.use(bodyParser.json())

db.sequelize.sync({force: false})
const produkRouter = require('./route/produk')

app.use('/produk', produkRouter)

module.exports = app