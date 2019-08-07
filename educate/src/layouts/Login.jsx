import React, { Component } from "react";

import { FormInputs } from "components/FormInputs/FormInputs.jsx";
import Footer from "components/Footer/Footer";
import CustomButton from "components/CustomButton/CustomButton"

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
                <div className="col-md-offset-4 col-md-4" style={{ float: 'none', marginTop: '200px' }}>
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
                    <CustomButton> Entrar</CustomButton>
                </div>
                <Footer />
            </div>
        );
    }
}

export default Login;