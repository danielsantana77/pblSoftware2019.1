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
                    console.log(username + " Conectado!");
                    status = '200';
                    res.sendStatus(status);
                } else {
                    console.log('Incorrect Username and/or Password!');
                    status = '204';
                    res.sendStatus(status);                    
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
const PORT = 4000// se botar 3000 ele buga

app.listen(PORT, function () {
    console.log("Ouvindo na porta " + PORT + "....")
})