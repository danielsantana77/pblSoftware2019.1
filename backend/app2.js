const express = require("express")
const app = express.Router()
const cors = require('cors')
const jwt = require("jsonwebtoken")
const bcrypt = require('bcrypt')

const User = require('./models/Admin')

app.use(cors({
    origin: 'http://localhost:3000'
}));
process.env.SECRET_KEY = 'secret'

app.post('/login', (req, res) => {
    User.findOne({
        where: {
            email: req.body.email
        }
    })
    .then(user => {
        if(user){
            if(bcrypt.compareSync(req.body.password, user.password)) {
                let token = jwt.sign(user.dataValues, process.env.SECRET_KEY, {
                    expiresIn: 1440
                })
                res.send(token)
            }else{
                res.status(400).json({error: 'Usuário não existe'})
            }
        }
    })
    .catch(err => {
        res.status(400).json({ error: err })
    })
})

module.exports = app