const multer = require('multer')

const storage = multer.diskStorage({
    destination: (req, file, cb) => {
        cb(null, './public')
    },
    filename: (req, file, cb) => {
        cb(null, Date.now() + '_' + file.originalname)
    }
})

const fileFilter = (req, file, cb) => {
    if (file.mimitype === 'image/png' || file.mimitype === 'image/jpeg' || file.mimitype === 'image/jpg'){
        cb(null, true)
    } else {
        cb(null, true)
    }
}

const upload = multer({
    storage: storage,
    limits: {
        fileSize: 1024 * 1024 * 3
    },
    fileFilter: fileFilter
})

module.exports = upload