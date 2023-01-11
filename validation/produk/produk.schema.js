const Joi = require('joi')

const schema = {
    create: Joi.object({
        title: Joi.string().max(150).required()
    })
}