import React, { Component } from "react";
import { Button } from "react-bootstrap";

import { FormInputs } from "components/FormInputs/FormInputs.jsx";
import Footer from "components/Footer/Footer";
import CustomButton from "components/CustomButton/CustomButton"
import logo from "assets/img/loginlogo.png"
import bg from "assets/img/sidebar-2.jpg"

class Login extends Component {
    constructor(props) {
        super(props);
        this.state = {
            _notificationSystem: null,
            color: "black",
            fixedClasses: "dropdown show-dropdown open"
        };
    }

    render() {
        return (
            <div>
                <div className="col-md-offset-4 col-md-4" style={{ float: 'none', marginTop: '100px' }}>
                    <div className="logo-img text-center">
                        <img src={logo} alt="logo_image" className="col-md-12 col-sm-12 col-xs-12"/>
                    </div>
                    <h4 className="text-center">Login</h4>
                    <FormInputs
                        ncols={[""]}
                        properties={[
                            {
                                label: "Usuário",
                                type: "text",
                                bsClass: "form-control",
                                placeholder: "Usuário"
                            }]} />
                    <FormInputs
                        ncols={[""]}
                        properties={[
                            {
                                label: "Senha",
                                type: "password",
                                bsClass: "form-control",
                                placeholder: "Senha"
                            }
                        ]}
                    />
                    <Button href="./admin/home"> Entrar</Button>
                </div>
                <Footer />
            </div>
        );
    }
}

export default Login;