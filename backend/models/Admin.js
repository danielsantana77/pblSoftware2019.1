/*const db = require('./db')
//Criando a tabela              //Nome da Tabela  
const Admin = db.sequelize.define('admins',{
    username:{
        type: db.Sequelize.STRING
    },
    password: {
        type: db.Sequelize.STRING
    }      
})
// Sincroniza o model com o mysql , criando uma tabela no BD
//Admin.sync({force: true})

module.exports = Admin*/



const Sequelize = require("sequelize")
const db = require('./db')

module.exports = db.sequelize.define(
    'usuarios',
    {
        id: {
            type: Sequelize.INTEGER,
            primaryKey: true,
            autoIncrement: true
        },
        username: {
            type: Sequelize.STRING
        },
        password: {
            type: Sequelize.STRING
        },
        name: {
            type: Sequelize.STRING
        },
        /*created: {
            type: Sequelize.DATE,
            defaultValue: Sequelize.NOW
        }*/
    }/*,
    {
        timestamps: false
    }*/
)