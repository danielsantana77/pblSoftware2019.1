import Dashboard from "views/Dashboard.jsx";
import UserProfile from "views/UserProfile.jsx";
//import TableList from "views/TableList.jsx";
import Typography from "views/Typography.jsx";
//import Icons from "views/Icons.jsx";
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
    layout: "/depart"
  },
  {
    path: "/perfil",
    name: "Perfil",
    icon: "pe-7s-user",
    component: UserProfile,
    layout: "/depart"
  },
  {
    path: "/cadastrarDisciplinas",
    name: "Cadastrar Disciplinas",
    icon: "pe-7s-note2",
    component: Typography,
    layout: "/depart"
  },
  {
    path: "/cadastrarArea",
    name: "Área de Conhecimento",
    icon: "pe-7s-notebook",
    component: Typography,
    layout: "/depart"
  },
  {
    path: "/manusearProfessor",
    name: "Manusear Professor",
    icon: "pe-7s-users",
    component: Notifications,
    layout: "/depart"
  },
  {
    path: "/notificacoes",
    name: "Notificações",
    icon: "pe-7s-bell",
    component: Notifications,
    layout: "/depart"
  },
  /*{
    path: "/icons",
    name: "Icons",
    icon: "pe-7s-science",
    component: Icons,
    layout: "/depart"
  }//,*/
];

export default Routes;