module.exports = (sequelize, Sequelize) => {
    const Produk = sequelize.define('kategori', {
        name: {
            type: Sequelize.STRING
        }
    })

    return Produk
}