const express = require("express")
const app = express();
const path = require('path')
const bodyparser = require("body-parser")
const Sequelize = require('sequelize')
const admin = require('./models/Admin')
const saudacao = require('./validar')



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
app.set('view engine','ejs')

//Parse Aplication
app.use(bodyparser.urlencoded({extended: false}))/
app.use(bodyparser.json())
app.use(bodyparser.text())


//Inicia a pagina inicial

app.get("/", function (req, res, next){

    res.render('index');
    

});


/*
app.use((req, res) => {
    res.send("Estou bem !")
})
*/
app.post('/cadastrar', function(req,res,next){
    
   //Metodo do Sequelize pra criar um registro na tabela 
    admin.create({
        username: req.body.username,
        password:req.body.password
    }).then(function(){
       res.redirect('/telaprofessor')
        
    }).catch(function(erro){
        res.send("Erro : Usuario nao cadastrado " + erro)
    }) 

    //res.send("Nome: " +req.body.nome +"<br>Email : " +req.body.email  )

})

app.post('/login', function(req,res){
     

    //Atribui os valores do body que sao enviados em formatos json
    const {username} = req.body 
    const {password} = req.body

    admin.findOne({where: {username: username, password: password} }).then(function(){
            res.render('/telaprofessor')

    }).catch(function(erro){
            res.send("Usuario Nao cadastrado!")
    })
      
 

   // res.send("Eh noiz")

 })


// Inicia o servidor na Porta 3000 
const PORT = 3000

app.listen(PORT, function(){
    console.log("Ouvindo na porta "+PORT+"....")
})



