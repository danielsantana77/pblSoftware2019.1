import React, { Component } from "react";
import { Grid, Row, Col } from "react-bootstrap";
import { Button } from "react-bootstrap";

import Card from "components/Card/Card.jsx";

import { FormInputs } from "components/FormInputs/FormInputs.jsx";

class ManusearProfessor extends Component { 
  
  /*handleClick(event) {
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
      <div className="content">
        <Grid fluid>
          <Row>
            <Col md={12}>
              <Card
                title="Manusear Professor"
                category="_______________________________"
                content={
                  <div>                   

                    <div className="typo-line">
                      <h2>
                        <p className="category"></p>Nome do Professor:                        
                      </h2>
                      <FormInputs
                        ncols={[""]}
                        properties={[
                            {                                
                                type: "text",
                                bsClass: "form-control",
                                placeholder: "Nome da Disciplina",
                                onChange: (event) => this.setState({ username: event.target.value })
                            }]} />
                    </div>   

                    <div className="typo-line">
                      <h2>
                        <p className="category"></p>Disciplina:
                      </h2>
                      <div class="dropdown">
                        <button class="btn btn-secondary dropdown-toggle" 
                        type="button" 
                        id="dropdownMenuButton" 
                        data-toggle="dropdown" 
                        aria-haspopup="true" 
                        aria-expanded="false">
                            Dropdown button
                        </button>
                        <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                            {/*<a class="dropdown-item" href="#">Action</a>
                            <a class="dropdown-item" href="#">Another action</a>
                        <a class="dropdown-item" href="#">Something else here</a>*/}
                        </div>
                        </div>
                    </div>  
                    <Button onClick={(event) => this.handleClick(event)}> Alocar</Button>                  
                  </div>
                }
              />
            </Col>
          </Row>
        </Grid>
      </div>
    );
  }
}

export default ManusearProfessor;