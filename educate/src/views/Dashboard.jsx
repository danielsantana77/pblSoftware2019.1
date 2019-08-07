import React, { Component } from "react";
import ChartistGraph from "react-chartist";
import { Grid, Row, Col, Alert, Table } from "react-bootstrap";

import { Card } from "components/Card/Card.jsx";
import { CustomButtom } from "components/CustomButton/CustomButton.jsx";
import { StatsCard } from "components/StatsCard/StatsCard.jsx";
import { Tasks } from "components/Tasks/Tasks.jsx";
import {
  dataPie,
  legendPie,
  dataSales,
  optionsSales,
  responsiveSales,
  legendSales,
  dataBar,
  optionsBar,
  responsiveBar,
  legendBar,
  iconsArray,
  dataDisciplines
} from "variables/Variables.jsx";
import CustomButton from "components/CustomButton/CustomButton";

class Dashboard extends Component {
  createLegend(json) {
    var legend = [];
    for (var i = 0; i < json["names"].length; i++) {
      var type = "fa fa-circle text-" + json["types"][i];
      legend.push(<i className={type} key={i} />);
      legend.push(" ");
      legend.push(json["names"][i]);
    }
    return legend;
  }
  render() {
    return (
      <div className="content">
        <Grid fluid>
          <Row>
            <Col md={8}>
              <Card
                title="Tabela de horários"
                content={
                  <div className="content">
                    <Table responsive bordered>
                      <thead>
                        <tr bgcolor="bbbbff">
                          <th bgcolor="white"></th>
                          <th>Domingo</th>
                          <th>Segunda</th>
                          <th>Terça</th>
                          <th>Quarta</th>
                          <th>Quinta</th>
                          <th>Sexta</th>
                          <th>Sábado</th>
                        </tr>
                      </thead>
                      <tbody>
                        <tr>
                          <td bgcolor="bbbbff">7:30</td>
                          <td>Table cell</td>
                          <td>Table cell</td>
                          <td>Table cell</td>
                          <td>Table cell</td>
                          <td>Table cell</td>
                          <td>Table cell</td>
                          <td>Table cell</td>
                        </tr>
                        <tr>
                          <td bgcolor="bbbbff">9:30</td>
                          <td>Table cell</td>
                          <td>Table cell</td>
                          <td>Table cell</td>
                          <td>Table cell</td>
                          <td>Table cell</td>
                          <td>Table cell</td>
                          <td>Table cell</td>
                        </tr>
                        <tr bgcolor="#ffbbbb">
                          <td bgcolor="bbbbff">11:30</td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                        </tr>
                        <tr>
                          <td bgcolor="bbbbff">13:30</td>
                          <td>Table cell</td>
                          <td>Table cell</td>
                          <td>Table cell</td>
                          <td>Table cell</td>
                          <td>Table cell</td>
                          <td>Table cell</td>
                          <td>Table cell</td>
                        </tr>
                        <tr>
                          <td bgcolor="bbbbff">15:30</td>
                          <td>Table cell</td>
                          <td>Table cell</td>
                          <td>Table cell</td>
                          <td>Table cell</td>
                          <td>Table cell</td>
                          <td>Table cell</td>
                          <td>Table cell</td>
                        </tr>
                        <tr bgcolor="#ffbbbb">
                          <td bgcolor="bbbbff">17:30</td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                        </tr>
                        <tr>

                        </tr>
                        <tr>
                          <td bgcolor="bbbbff">19:00</td>
                          <td>Table cell</td>
                          <td>Table cell</td>
                          <td>Table cell</td>
                          <td>Table cell</td>
                          <td>Table cell</td>
                          <td>Table cell</td>
                          <td>Table cell</td>
                        </tr>
                        <tr>
                          <td bgcolor="bbbbff">21:00</td>
                          <td>Table cell</td>
                          <td>Table cell</td>
                          <td>Table cell</td>
                          <td>Table cell</td>
                          <td>Table cell</td>
                          <td>Table cell</td>
                          <td>Table cell</td>
                        </tr>

                      </tbody>
                    </Table>
                  </div>


                }
              />

              <Card
                statsIcon="fa fa-history"
                title="Disciplinas"
                category="Diciplinas Cadastradas"
                stats="Atualizado faz 3 minutos"
                content={
                  <Row>
                    {dataDisciplines.map((prop, key) => {
                      return (
                        <Col
                          lg={6}
                          key={key}
                        >

                          <Card
                            statsIcon="fa fa-clock-o"
                            category={prop}
                            stats="Atualizado em 02/05/2012"
                            height="200px"
                            content={
                              <CustomButton>Selecionar</CustomButton>
                            }
                          />

                        </Col>
                      );
                    })}
                  </Row>

                }//*/
              />

            </Col>
            <Col md={4}>
              <Card
                statsIcon="fa fa-history"
                title="Mensagens"
                category="Últimas mensagens"
                stats="Atualizado faz 3 minutos"
                content={
                  <div>
                    <Alert bsStyle="danger" className="alert-with-icon">
                      <button type="button" aria-hidden="true" className="close">
                        &#x2715;
                    </button>
                      <span data-notify="icon" className="pe-7s-bell" />
                      <span data-notify="message">
                        Lorem ipsum dolor sit amet consectetur adipisicing elit.
                        Est, vel quod eos praesentium cupiditate et vero...
                    </span>
                    </Alert>

                    <Card
                      statsIcon="fa fa-clock-o"
                      category="Mensagem 1"
                      stats="3 horas atrás"
                      content={
                        <span data-notify="message">
                          Lorem ipsum dolor sit amet consectetur adipisicing elit.
                          Est, vel quod eos praesentium cupiditate et vero...
                    </span>
                      }
                    />
                    <Card
                      statsIcon="fa fa-clock-o"
                      category="Mensagem 2"
                      stats="3 horas atrás"
                      content={
                        <span data-notify="message">
                          Lorem ipsum dolor sit amet consectetur adipisicing elit.
                          Est, vel quod eos praesentium cupiditate et vero...
                    </span>
                      }
                    />
                    <Card
                      statsIcon="fa fa-clock-o"
                      category="Mensagem 3"
                      stats="3 horas atrás"
                      content={
                        <span data-notify="message">
                          Lorem ipsum dolor sit amet consectetur adipisicing elit.
                          Est, vel quod eos praesentium cupiditate et vero...
                    </span>
                      }
                    />
                    <Card
                      statsIcon="fa fa-clock-o"
                      category="Mensagem 4"
                      stats="3 horas atrás"
                      content={
                        <span data-notify="message">
                          Lorem ipsum dolor sit amet consectetur adipisicing elit.
                          Est, vel quod eos praesentium cupiditate et vero...
                    </span>
                      }
                    />
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

export default Dashboard;
