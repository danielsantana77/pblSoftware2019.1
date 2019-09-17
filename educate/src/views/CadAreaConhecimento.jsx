import React, { Component } from "react";
import { Grid, Row, Col } from "react-bootstrap";
import { Button } from "react-bootstrap";

import Card from "components/Card/Card.jsx";

import { FormInputs } from "components/FormInputs/FormInputs.jsx";

class CadAreaConhecimento extends Component {
  render() {
    return (
      <div className="content">
        <Grid fluid>
          <Row>
            <Col md={12}>
              <Card
                title="Cadastrar Area de Conhecimento"
                category="_______________________________"
                content={
                  <div>

                    <div className="typo-line">
                      <h2>
                        <p className="category"></p>Nome da Area de Conhecimento:
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
                    <Button onClick={(event) => this.handleClick(event)}> Confirmar</Button>
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

export default CadAreaConhecimento;