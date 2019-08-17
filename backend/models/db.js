const Sequelize = require('sequelize')

//Conexao com o Banco de Dados mysql
const sequelize = new Sequelize('daniel' ,'daniel', 'Ecompuefs',{
    host: 'localhost',
    dialect: 'mysql'

})

//Inicia o servidor do Banco após a autenticação
sequelize.authenticate().then(function(){
    console.log('Conexao com o Banco de Dados realizada com Sucesso')
}).catch(function(err){
    console.log('Erro ao realizar a conexao com o BD:' + err)
})

module.exports = {
    Sequelize : Sequelize,
    sequelize: sequelize
}