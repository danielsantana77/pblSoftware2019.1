const db = require('./db')
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

module.exports = Admin