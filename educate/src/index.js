import React from "react";
import ReactDOM from "react-dom";

import { BrowserRouter, Route, Switch, Redirect } from "react-router-dom";

import "bootstrap/dist/css/bootstrap.min.css";
import "./assets/css/animate.min.css";
import "./assets/sass/light-bootstrap-dashboard-react.scss?v=1.3.0";
import "./assets/css/demo.css";
import "./assets/css/pe-icon-7-stroke.css";

import AdminLayout from "./layouts/Admin.jsx";
import LoginLayout from "./layouts/Login.jsx";
import DepartLayout from "./layouts/Departamento.jsx"
import ProfLayout from "./layouts/Professor.jsx"
import RecLayout from "./layouts/Recuperarsenha.jsx"
import PadraoLayout from "./layouts/LayoutsPadrao.jsx"

ReactDOM.render(
  <BrowserRouter>
    <Switch>
      <Route path="/login" render={props => <LoginLayout {...props} />} />
      <Route path="/admin" render={props => <AdminLayout {...props} />} />
      <Route path="/depart" render={props => <DepartLayout {...props} />} />
      <Route path="/prof" render={props => <ProfLayout {...props} />} />
      <Route path="/rec" render={props => <RecLayout {...props} />} />
      <Route path="/padrao" render={props => <PadraoLayout {...props} />} />

      <Redirect from="/" to="/login" />
    </Switch>
  </BrowserRouter>,
  document.getElementById("root")
);
