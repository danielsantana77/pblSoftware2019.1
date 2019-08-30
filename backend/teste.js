const Sequelize = require('sequelize')

//Conexao com o Banco de Dados mysql

//                                --BD--       --Usuario--     -Senha-
const sequelize = new Sequelize('educatebd' ,'Administrador', 'educate',{
    host: 'localhost',
    dialect: 'mysql'

})

//Inicia o servidor do Banco após a autenticação
sequelize.authenticate().then(function(){
    console.log('Conexao com o Banco de Dados realizada com Sucesso');
}).catch(function(err){
    console.log('Erro ao realizar a conexao com o BD:' , err);
});

module.exports = {
    sequelize: sequelize
}

//Criando a tabela              //Nome da Tabela  
const Admin = sequelize.define('Admins',{
    username:{
        type: Sequelize.STRING
    },
    password: {
        type: Sequelize.STRING
    }      
})
// Incluir o registro na tabela
sequelize.sync().then(function () {
    Admin.create({
       username: 'foi',
       password: '123'
    })
});

// listar todos os registros da tabela Admin
sequelize.sync().then(function () {
    Admin.findAll().then(function(admin) {
      console.log(admin)
  });

});

// Sincroniza o model com o mysql , criando uma tabela no BD
//Admin.sync({force: true})
module.exports = Admin