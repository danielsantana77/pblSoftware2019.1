-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: localhost    Database: pbl03
-- ------------------------------------------------------
-- Server version	8.0.17

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `administrador`
--

DROP TABLE IF EXISTS `administrador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `administrador` (
  `Usuarioid` int(10) NOT NULL,
  `idAdm` int(11) NOT NULL,
  PRIMARY KEY (`Usuarioid`,`idAdm`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administrador`
--

LOCK TABLES `administrador` WRITE;
/*!40000 ALTER TABLE `administrador` DISABLE KEYS */;
INSERT INTO `administrador` VALUES (3,0);
/*!40000 ALTER TABLE `administrador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alocaçãoprofdisciplina`
--

DROP TABLE IF EXISTS `alocaçãoprofdisciplina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alocaçãoprofdisciplina` (
  `CoordenadorProfessorIDProf` int(10) NOT NULL,
  `DisciplinaID` int(10) NOT NULL,
  PRIMARY KEY (`CoordenadorProfessorIDProf`,`DisciplinaID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alocaçãoprofdisciplina`
--

LOCK TABLES `alocaçãoprofdisciplina` WRITE;
/*!40000 ALTER TABLE `alocaçãoprofdisciplina` DISABLE KEYS */;
/*!40000 ALTER TABLE `alocaçãoprofdisciplina` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `areaconhecimento`
--

DROP TABLE IF EXISTS `areaconhecimento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `areaconhecimento` (
  `IDArea` int(10) NOT NULL AUTO_INCREMENT,
  `nomeArea` char(20) DEFAULT NULL,
  PRIMARY KEY (`IDArea`)
) ENGINE=InnoDB AUTO_INCREMENT=1236 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `areaconhecimento`
--

LOCK TABLES `areaconhecimento` WRITE;
/*!40000 ALTER TABLE `areaconhecimento` DISABLE KEYS */;
INSERT INTO `areaconhecimento` VALUES (1235,'Ciências Humanas');
/*!40000 ALTER TABLE `areaconhecimento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cadastrodisciplina`
--

DROP TABLE IF EXISTS `cadastrodisciplina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cadastrodisciplina` (
  `FuncionarioColegiadoID` int(10) NOT NULL,
  `DisciplinaID` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cadastrodisciplina`
--

LOCK TABLES `cadastrodisciplina` WRITE;
/*!40000 ALTER TABLE `cadastrodisciplina` DISABLE KEYS */;
/*!40000 ALTER TABLE `cadastrodisciplina` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cadastroprofessor`
--

DROP TABLE IF EXISTS `cadastroprofessor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cadastroprofessor` (
  `ProfessorIDProf` int(10) NOT NULL,
  `FuncionarioDepartamentoID` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cadastroprofessor`
--

LOCK TABLES `cadastroprofessor` WRITE;
/*!40000 ALTER TABLE `cadastroprofessor` DISABLE KEYS */;
/*!40000 ALTER TABLE `cadastroprofessor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calendariosemestral`
--

DROP TABLE IF EXISTS `calendariosemestral`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `calendariosemestral` (
  `Semestreid` int(10) NOT NULL,
  `FuncionarioColegiadoID` int(10) NOT NULL,
  `DisciplinaID` int(10) NOT NULL,
  PRIMARY KEY (`Semestreid`,`FuncionarioColegiadoID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calendariosemestral`
--

LOCK TABLES `calendariosemestral` WRITE;
/*!40000 ALTER TABLE `calendariosemestral` DISABLE KEYS */;
/*!40000 ALTER TABLE `calendariosemestral` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coordenador`
--

DROP TABLE IF EXISTS `coordenador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `coordenador` (
  `ProfessorIDProf` int(10) NOT NULL,
  PRIMARY KEY (`ProfessorIDProf`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coordenador`
--

LOCK TABLES `coordenador` WRITE;
/*!40000 ALTER TABLE `coordenador` DISABLE KEYS */;
/*!40000 ALTER TABLE `coordenador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `disciplina`
--

DROP TABLE IF EXISTS `disciplina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `disciplina` (
  `Nome` varchar(50) DEFAULT NULL,
  `AreaConhecimentoIDArea` int(10) NOT NULL,
  `Carga Horaria` int(5) DEFAULT NULL,
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `disciplina`
--

LOCK TABLES `disciplina` WRITE;
/*!40000 ALTER TABLE `disciplina` DISABLE KEYS */;
/*!40000 ALTER TABLE `disciplina` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funcionariocolegiado`
--

DROP TABLE IF EXISTS `funcionariocolegiado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `funcionariocolegiado` (
  `ID` int(10) NOT NULL,
  `TurmaDisciplinaID` int(10) DEFAULT NULL,
  `NomeColegiado` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcionariocolegiado`
--

LOCK TABLES `funcionariocolegiado` WRITE;
/*!40000 ALTER TABLE `funcionariocolegiado` DISABLE KEYS */;
INSERT INTO `funcionariocolegiado` VALUES (4,10,'Engenharia de Computação');
/*!40000 ALTER TABLE `funcionariocolegiado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funcionariodepartamento`
--

DROP TABLE IF EXISTS `funcionariodepartamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `funcionariodepartamento` (
  `ID` int(10) NOT NULL,
  `NomeDepartamento` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcionariodepartamento`
--

LOCK TABLES `funcionariodepartamento` WRITE;
/*!40000 ALTER TABLE `funcionariodepartamento` DISABLE KEYS */;
INSERT INTO `funcionariodepartamento` VALUES (2,'Departmento de ciências exatas');
/*!40000 ALTER TABLE `funcionariodepartamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funcionariodepartamento_areaconhecimento`
--

DROP TABLE IF EXISTS `funcionariodepartamento_areaconhecimento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `funcionariodepartamento_areaconhecimento` (
  `FuncionarioDepartamentoID` int(10) NOT NULL,
  `AreaConhecimentoIDArea` int(10) NOT NULL,
  PRIMARY KEY (`FuncionarioDepartamentoID`,`AreaConhecimentoIDArea`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcionariodepartamento_areaconhecimento`
--

LOCK TABLES `funcionariodepartamento_areaconhecimento` WRITE;
/*!40000 ALTER TABLE `funcionariodepartamento_areaconhecimento` DISABLE KEYS */;
/*!40000 ALTER TABLE `funcionariodepartamento_areaconhecimento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gerarrelatório`
--

DROP TABLE IF EXISTS `gerarrelatório`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gerarrelatório` (
  `FuncionarioColegiadoID` int(10) NOT NULL,
  `RelatórioID` int(10) NOT NULL,
  `InfoRelatorio` binary(100) NOT NULL,
  `CoordenadorProfessorIDProf` int(10) NOT NULL,
  `FuncionarioDepartamentoID` int(10) NOT NULL,
  PRIMARY KEY (`RelatórioID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gerarrelatório`
--

LOCK TABLES `gerarrelatório` WRITE;
/*!40000 ALTER TABLE `gerarrelatório` DISABLE KEYS */;
/*!40000 ALTER TABLE `gerarrelatório` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mensagem`
--

DROP TABLE IF EXISTS `mensagem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mensagem` (
  `ConteudoMSG` varchar(300) DEFAULT NULL,
  `Usuarioid` int(10) NOT NULL,
  `IdDestinatario` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mensagem`
--

LOCK TABLES `mensagem` WRITE;
/*!40000 ALTER TABLE `mensagem` DISABLE KEYS */;
/*!40000 ALTER TABLE `mensagem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `professor`
--

DROP TABLE IF EXISTS `professor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `professor` (
  `IDProf` int(10) NOT NULL,
  `AreaConhecimentoIDArea` int(10) NOT NULL,
  PRIMARY KEY (`IDProf`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `professor`
--

LOCK TABLES `professor` WRITE;
/*!40000 ALTER TABLE `professor` DISABLE KEYS */;
INSERT INTO `professor` VALUES (1,1235);
/*!40000 ALTER TABLE `professor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `relatório`
--

DROP TABLE IF EXISTS `relatório`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `relatório` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `Tipo` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `relatório`
--

LOCK TABLES `relatório` WRITE;
/*!40000 ALTER TABLE `relatório` DISABLE KEYS */;
/*!40000 ALTER TABLE `relatório` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `selecionarcoordenador`
--

DROP TABLE IF EXISTS `selecionarcoordenador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `selecionarcoordenador` (
  `FuncionarioDepartamentoID` int(10) NOT NULL,
  `CoordenadorProfessorIDProf` int(10) NOT NULL,
  PRIMARY KEY (`FuncionarioDepartamentoID`,`CoordenadorProfessorIDProf`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `selecionarcoordenador`
--

LOCK TABLES `selecionarcoordenador` WRITE;
/*!40000 ALTER TABLE `selecionarcoordenador` DISABLE KEYS */;
/*!40000 ALTER TABLE `selecionarcoordenador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `semestre`
--

DROP TABLE IF EXISTS `semestre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `semestre` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `DataSem` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `semestre`
--

LOCK TABLES `semestre` WRITE;
/*!40000 ALTER TABLE `semestre` DISABLE KEYS */;
/*!40000 ALTER TABLE `semestre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `turma`
--

DROP TABLE IF EXISTS `turma`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `turma` (
  `DisciplinaID` int(10) NOT NULL,
  `ProfessorIDProf` int(10) NOT NULL,
  `HorarioAula` char(10) DEFAULT NULL,
  PRIMARY KEY (`DisciplinaID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `turma`
--

LOCK TABLES `turma` WRITE;
/*!40000 ALTER TABLE `turma` DISABLE KEYS */;
/*!40000 ALTER TABLE `turma` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `Usuario` varchar(20) NOT NULL,
  `Senha` varchar(20) NOT NULL,
  `nome` varchar(40) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `Usuario` (`Usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'joao123','password123','João Silva'),(2,'luana123','password123','Luana Silva'),(3,'carlos123','password123','Carlos Silva'),(4,'larissa123','password123','Larissa Silva');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-08-11 18:11:05
