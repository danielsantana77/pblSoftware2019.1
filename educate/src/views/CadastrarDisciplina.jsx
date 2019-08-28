import React, { Component } from "react";
import { Grid, Row, Col } from "react-bootstrap";

import Card from "components/Card/Card.jsx";

import { FormInputs } from "components/FormInputs/FormInputs.jsx";

class CadastrarDisciplina extends Component {    
  render() {
    return (
      <div className="content">
        <Grid fluid>
          <Row>
            <Col md={12}>
              <Card
                title="Cadastrar Disciplina"
                category="_______________________________"
                content={
                  <div>                   

                    <div className="typo-line">
                      <h2>
                        <p className="category"></p>Nome da Disciplina:                        
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
                        <p className="category"></p>Área de Conhecimento:
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

                    <div className="typo-line">
                      <h2>
                        <p className="category"></p>Carga Horária:
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

                    <div className="typo-line">
                      <h2>
                        <p className="category"></p>Professor Encarregado:
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

export default CadastrarDisciplina;