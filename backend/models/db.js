const Sequelize = require('sequelize')

const sequelize = new Sequelize('daniel' ,'daniel', 'Ecompuefs',{
    host: 'localhost',
    dialect: 'mysql'

})

sequelize.authenticate().then(function(){
    console.log('Conexao com o Banco de Dados realizada com Sucesso')
}).catch(function(err){
    console.log('Erro ao realizar a conexao com o BD:' + err)
})

module.exports = {
    Sequelize : Sequelize,
    sequelize: sequelize
}