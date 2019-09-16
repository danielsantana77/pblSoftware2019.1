const express = require("express")
const app = express();
const path = require('path')
const bodyparser = require("body-parser")
const Sequelize = require('sequelize')
const admin = require('./models/Admin')
const { createEngine } = require('express-react-views')
const cors = require('cors');
//const axios = require('axios')

//Conectar com o DB via banco de Dados
// USER    //BD     // SENHA
/* const sequelize = new Sequelize('daniel','daniel','Ecompuefs',{
    host: 'localhost',
    dialect:'mysql'
}) 
*/

//Criar a tabela
//User.sync({force: true})

//Inserir registros no banco de Dados
/*
User.create({
    nome: "Daniel",
    lastName: "Santana"
})
*/

//setup view engine
app.set('views', path.join(__dirname, 'views'))
app.set('view engine', 'jsx')
app.engine('jsx', createEngine())

//Parse Aplication
app.use(bodyparser.urlencoded({ extended: false })) /
    app.use(bodyparser.json())
app.use(bodyparser.text())

app.use(cors({
    origin: 'http://localhost:3000'
}));
//*/

//Inicia a pagina inicial
app.get("/", function (req, res, next) {

    res.render('index');
    /*console.log('index');*/

});

/*
app.use((req, res) => {
    res.send("Estou bem !")
})
*/
/*app.post('/login', function (req, res, next) {
    //Metodo do Sequelize pra criar um registro na tabela 
    admin.create({
        username: req.body.username,
        password: req.body.password
    }).then(function () {
        res.redirect('/telaprofessor')

    }).catch(function (erro) {
        res.send("Erro : Usuario nao cadastrado " + erro)
    })    
})*/

app.post('/login', function(req,res){   
    //Atribui os valores do body que sao enviados em formatos json
    const {username} = req.body 
    const {password} = req.body

    console.log(username);
    console.log(password);
    
    admin.findOne({where: {username: username, password: password} }).then(function(){
            res.render('/admin')// Ainda Não Autenticou!!!!
            console.log("Achou")

    }).catch(function(erro){
            console.log("Usuario Nao cadastrado!!!!!!!!!!!!!!")            
    })     

   // res.send("Eh noiz")
 })

// Inicia o servidor na Porta 3000 
const PORT = 4000

app.listen(PORT, function () {
    console.log("Ouvindo na porta " + PORT + "....")
})


///Query que mostra na tela o conteudo da tabela
/*const express = require('express');
const bodyParser = require('body-parser');
const mysql      = require('mysql');


const connection = mysql.createConnection({
    host     : 'localhost',
    user     : 'Administrador',
    password : 'educate',
    database : 'educatebd'
  });

// Initialize the app
const app = express();

app.get('/posts', function (req, res) {
    connection.connect();

    connection.query('SELECT * FROM usuario ', function (error, results, fields) {
      if (error) throw error;
      res.send(results)      
    });
    connection.end();
});
// Start the server
app.listen(3000, () => {
 console.log('Go to http://localhost:3000/posts to see posts');
});
 */