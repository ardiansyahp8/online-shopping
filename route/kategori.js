const express = require('express')
const router = express.Router()
const kategori = require('../controllers/kategori.controller')
const Validation = require('../validation/kategori/kategori.validation')

router.get('/', kategori.findAll)
router.get('/:id', kategori.findOne)
router.post('/', Validation.createProduk, kategori.create)
router.put('/:id', Validation.createProduk, kategori.update)
router.delete('/:id', kategori.delete)

module.exports = router