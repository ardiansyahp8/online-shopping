const express = require('express')
const bodyParser = require('body-parser')
const path = require('path')
const app = express()

const produkRouter = require('./route/produk')

app.use('/produk', produkRouter)
app.use(bodyParser.json())

module.exports = app