import React, { Component } from "react";
import { Button } from "react-bootstrap";
import axios from "axios"

import { FormInputs } from "components/FormInputs/FormInputs.jsx";
import Footer from "components/Footer/Footer";
import logo from "assets/img/loginlogo.png"

class Recsenha extends Component {
    constructor(props) {
        super(props);
        this.state = {
            _notificationSystem: null,
            color: "black",
            fixedClasses: "dropdown show-dropdown open",
            email: ''        
        };
        this.handleClick = this.handleClick.bind(this);
    }
    handleClick(event) {
        var apiBaseUrl = "http://localhost:4000/";
        //var self = this;
        var payload = {
            "email": this.state.email,            
        }
        axios.post(apiBaseUrl + 'Recuperar Senha', payload)
            .then(function (response) {
                console.log(response);
                if (response.data.code === 200) {
                    console.log("Código de verificação enviado");
                }               
                else {
                    console.log("Email não cadastrado");
                    alert("Email não cadastrado");
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
                    <h4 className="text-center">Recuperar Senha</h4>
                    <FormInputs
                        ncols={[""]}
                        properties={[
                            {
                                label: "Email",
                                type: "text",
                                bsClass: "form-control",
                                placeholder: "Email",
                                onChange: (event) => this.setState({ email: event.target.value })
                            }]} />                   
                    <p><Button onClick={(event) => this.handleClick(event)}> Enviar</Button></p> 
                    <p><Button onClick={(event) => this.handleClick(event)}> Voltar</Button></p>
                </div>
                <Footer />
            </div>
        );
    }
}

export default Recsenha;