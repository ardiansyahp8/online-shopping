const db = require('../models/bundle.model')
const Op = db.Sequelize.Op
const func = require('../libs/function')
const {v4: uuidv4} = require('uuid')

exports.getProdukHome = async (req, res) => {
    db.produk.findAll({
        limit: 8
    }).then(result => {
        if (result.length > 0){
            res.send({
                code: 200,
                message: 'OK',
                data: result
            })
        } else {
            res.status(404).send({
                code: 404,
                message: 'Data tidak tersedia'
            })
        }
    }).catch(err => {
        res.status(500).send({
            code: 500,
            message: 'Error Find Data > ' + err
        })
    })
}

exports.getProdukPage = async (req, res) => {
    let keyword = ''
    const condition = []
    if (req.query.keyword) {
        keyword = req.query.keyword
        condition.push({title: { [Op.like]: '%' + keyword + '%' }})
    }

    db.produk.findAll({
        where: condition
    }).then(result => {
        if (result.length > 0) {
            res.send({
                code: 200,
                message: 'OK',
                data: result
            })
        } else {
            res.status(404).send({
                code: 404,
                message: `Tidak ada data yang cocok dengan keyword '${keyword}'`
            })
        }
    }).catch(err => {
        res.status(500).send({
            code: 500,
            message: 'Error Find Data > ' + err
        })
    })
}

exports.getProdukDetil = async (req, res) => {
    const id = req.params.id

    db.Produk.detail({
    }).then(result => {
        if (result.length > 0) {
            res.send({
                code: 200,
                message: 'OK',
                data: result
            })
        } else {
            res.status(404).send({
                code: 404,
                message: `Produk tidak ditemukan`
            })
        }
    }).catch(err => {
        res.status(500).send({
            code:500,
            message: 'Error Find Data > ' + err
        })
    })
}
