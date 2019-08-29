import React, { Component } from "react";
import { Button } from "react-bootstrap";
import axios from "axios"

import { FormInputs } from "components/FormInputs/FormInputs.jsx";
import Footer from "components/Footer/Footer";
//import CustomButton from "components/CustomButton/CustomButton"
import logo from "assets/img/loginlogo.png"


class Login extends Component {
    constructor(props) {
        super(props);
        this.state = {
            _notificationSystem: null,
            color: "black",
            fixedClasses: "dropdown show-dropdown open",
            username: '',
            password: ''
        };
        this.handleClick = this.handleClick.bind(this);
    }


    /*handleClick(event){
        window.console.log(this.state.username);
        window.console.log(this.state.password);
    }//*/

    handleClick(event) {
        var apiBaseUrl = "http://localhost:4000/";
        //var self = this;
        var payload = {
            "username": this.state.username,
            "password": this.state.password
        }
        axios.post(apiBaseUrl + 'login', payload)
            .then(function (response) {
                console.log(response);
                if (response.data.code === 200) {
                    console.log("Login successfull");
                }
                else if (response.data.code === 204) {
                    console.log("Senha incorreta");
                    alert("Senha incorreta")
                }
                else {
                    console.log("Usuário não cadastrado");
                    alert("Usuário não cadastrado");
                }
            })
            .catch(function (error) {
                console.log(error);
                alert("Desconectado");
            });
    }//*/

    render() {
        return (
            <div>
                <div className="col-md-offset-4 col-md-4" style={{ float: 'none', marginTop: '100px' }}>
                    <div className="logo-img text-center">
                        <img src={logo} alt="logo_image" className="col-md-12 col-sm-12 col-xs-12" />
                    </div>
                    <h4 className="text-center">Login</h4>
                    <FormInputs
                        ncols={[""]}
                        properties={[
                            {
                                label: "Usuário",
                                type: "text",
                                bsClass: "form-control",
                                placeholder: "Usuário",
                                onChange: (event) => this.setState({ username: event.target.value })
                            }]} />
                    <FormInputs
                        ncols={[""]}
                        properties={[
                            {
                                label: "Senha",
                                type: "password",
                                bsClass: "form-control",
                                placeholder: "Senha",
                                onChange: (event) => this.setState({ password: event.target.value })
                            }
                        ]}
                    />
                    <Button onClick={(event) => this.handleClick(event)}> Entrar</Button>
                    
                    <Button onClick={(event) => this.handleClick(event)}  > Esqueceu sua senha?</Button>
                </div>
                <Footer />
            </div>
        );
    }
}

export default Login;