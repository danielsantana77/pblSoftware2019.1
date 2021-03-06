import Dashboard from "views/Dashboard.jsx";
import UserProfile from "views/UserProfile.jsx";
import TableList from "views/TableList.jsx";
import Typography from "views/Typography.jsx";
import Icons from "views/Icons.jsx";
//import Maps from "views/Maps.jsx";
import Notifications from "views/Notifications.jsx";
//import Upgrade from "views/Upgrade.jsx";

// Rotas do Dashboard
const Routes = [
  {
    path: "/home",
    name: "Página Inicial",
    icon: "pe-7s-home",
    component: Dashboard,
    layout: "/padrao"
  },
  {
    path: "/perfil",
    name: "Perfil",
    icon: "pe-7s-user",
    component: UserProfile,
    layout: "/padrao"
  },
  {
    path: "/calendario",
    name: "Montar Calendário",
    icon: "pe-7s-date",
    component: TableList,
    layout: "/padrao"
  },
  {
    path: "/alocarDisciplinas",
    name: "Alocar Disciplinas",
    icon: "pe-7s-wristwatch",
    component: Typography,
    layout: "/padrao"
  },
  {
    path: "/alocarTurmas",
    name: "Alocar Turmas",
    icon: "pe-7s-way",
    component: Typography,
    layout: "/padrao"
  },
  {
    path: "/notificacoes",
    name: "Notificações",
    icon: "pe-7s-bell",
    component: Notifications,
    layout: "/padrao"
  },
  {
    path: "/icons",
    name: "Icons",
    icon: "pe-7s-science",
    component: Icons,
    layout: "/padrao"
  }//,*/
];

export default Routes;
