const express = require('express')
const bodyParser = require('body-parser')
const path = require('path')
const app = express()
const db = require('./models/bundle.model')

app.use('/public', express.static('public'))
app.use(bodyParser.json())
app.use(bodyParser.urlencoded({extended: false}))

db.sequelize.sync({force: false})

const produkRouter = require('./route/produk')
app.use('/produk', produkRouter)
const kategoriRouter = require('./route/kategori')
app.use('/kategori', kategoriRouter)

const frontendRouter = require('./route/frontend')
app.use('/frontend', frontendRouter)
const backendRouter = require('./route/backend')
app.use('/backend', backendRouter)

module.exports = app