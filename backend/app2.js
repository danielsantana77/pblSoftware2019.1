const express = require("express")
const app = express();
const path = require('path')
const bodyparser = require("body-parser")
const { createEngine } = require('express-react-views')
const cors = require('cors');
const mysql = require('mysql');

const connection = mysql.createConnection({
    host: 'localhost',
    user: 'Administrador',
    password: 'educate',
    database: 'educatebd'
});

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

app.post('/login', function (req, res) {
    //Atribui os valores do body que sao enviados em formatos json
    const { username } = req.body
    const { password } = req.body

    console.log(username);// Teste para ver se esta recebendo do front
    console.log(password);

    if (username && password) {
        connection.connect();
        connection.query('SELECT * FROM usuarios WHERE usuario = ? AND senha = ?',
            [username, password], function (error, results, fields) {
                if (results.length > 0) {
                    //req.session.username = username;
                    console.log("Conectado!");
                    results.sendStatus(200);//Não envia
                } else {
                    console.log('Incorrect Username and/or Password!');
                    results.sendStatus(204);//Não envia
                }
                res.end();
            })
        connection.end();
    } else {
        console.log('Please enter Username and Password!');
        res.sendStatus();
        res.end();
    }
    //connection.end();
})


// Inicia o servidor na Porta 3000 
const PORT = 4000

app.listen(PORT, function () {
    console.log("Ouvindo na porta " + PORT + "....")
})