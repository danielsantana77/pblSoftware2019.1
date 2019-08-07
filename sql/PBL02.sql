CREATE DATABASE  IF NOT EXISTS `pbl02` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `pbl02`;
-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: localhost    Database: pbl02
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
  `ID` char(10) NOT NULL,
  `Login` varchar(50) DEFAULT NULL,
  `Senha` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administrador`
--

LOCK TABLES `administrador` WRITE;
/*!40000 ALTER TABLE `administrador` DISABLE KEYS */;
INSERT INTO `administrador` VALUES ('10','adm1320','adm1040');
/*!40000 ALTER TABLE `administrador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alocaçãoprofdisciplina`
--

DROP TABLE IF EXISTS `alocaçãoprofdisciplina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alocaçãoprofdisciplina` (
  `CoordenadorProfessorIDProf` char(10) NOT NULL,
  `DisciplinaID` char(10) NOT NULL,
  PRIMARY KEY (`CoordenadorProfessorIDProf`,`DisciplinaID`),
  KEY `FKAlocaçãoPr10063` (`DisciplinaID`),
  CONSTRAINT `FKAlocaçãoPr10063` FOREIGN KEY (`DisciplinaID`) REFERENCES `disciplina` (`ID`),
  CONSTRAINT `FKAlocaçãoPr202079` FOREIGN KEY (`CoordenadorProfessorIDProf`) REFERENCES `coordenador` (`ProfessorIDProf`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
  `IDArea` char(10) NOT NULL,
  PRIMARY KEY (`IDArea`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `areaconhecimento`
--

LOCK TABLES `areaconhecimento` WRITE;
/*!40000 ALTER TABLE `areaconhecimento` DISABLE KEYS */;
INSERT INTO `areaconhecimento` VALUES ('5');
/*!40000 ALTER TABLE `areaconhecimento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `browse photo view`
--

DROP TABLE IF EXISTS `browse photo view`;
/*!50001 DROP VIEW IF EXISTS `browse photo view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `browse photo view` AS SELECT 
 1 AS `IDArea`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `cadastrodisciplina`
--

DROP TABLE IF EXISTS `cadastrodisciplina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cadastrodisciplina` (
  `FuncionarioColegiadoID` char(10) NOT NULL,
  `DisciplinaID` char(10) NOT NULL,
  KEY `FKCadastroDi664707` (`FuncionarioColegiadoID`),
  KEY `FKCadastroDi790566` (`DisciplinaID`),
  CONSTRAINT `FKCadastroDi664707` FOREIGN KEY (`FuncionarioColegiadoID`) REFERENCES `funcionariocolegiado` (`ID`),
  CONSTRAINT `FKCadastroDi790566` FOREIGN KEY (`DisciplinaID`) REFERENCES `disciplina` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
  `ProfessorIDProf` char(10) NOT NULL,
  `FuncionarioDepartamentoID` char(10) NOT NULL,
  KEY `FKCadastroPr186256` (`ProfessorIDProf`),
  KEY `FKCadastroPr382520` (`FuncionarioDepartamentoID`),
  CONSTRAINT `FKCadastroPr186256` FOREIGN KEY (`ProfessorIDProf`) REFERENCES `professor` (`IDProf`),
  CONSTRAINT `FKCadastroPr382520` FOREIGN KEY (`FuncionarioDepartamentoID`) REFERENCES `funcionariodepartamento` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
  `Semestreid` char(10) NOT NULL,
  `FuncionarioColegiadoID` char(10) NOT NULL,
  `DisciplinaID` char(10) NOT NULL,
  PRIMARY KEY (`Semestreid`,`FuncionarioColegiadoID`),
  KEY `FKCalendario807296` (`DisciplinaID`),
  KEY `FKCalendario647977` (`FuncionarioColegiadoID`),
  CONSTRAINT `FKCalendario647977` FOREIGN KEY (`FuncionarioColegiadoID`) REFERENCES `funcionariocolegiado` (`ID`),
  CONSTRAINT `FKCalendario794478` FOREIGN KEY (`Semestreid`) REFERENCES `semestre` (`id`),
  CONSTRAINT `FKCalendario807296` FOREIGN KEY (`DisciplinaID`) REFERENCES `disciplina` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calendariosemestral`
--

LOCK TABLES `calendariosemestral` WRITE;
/*!40000 ALTER TABLE `calendariosemestral` DISABLE KEYS */;
INSERT INTO `calendariosemestral` VALUES ('1509','3031','3134');
/*!40000 ALTER TABLE `calendariosemestral` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coordenador`
--

DROP TABLE IF EXISTS `coordenador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `coordenador` (
  `ProfessorIDProf` char(10) NOT NULL,
  PRIMARY KEY (`ProfessorIDProf`),
  CONSTRAINT `FKCoordenado562506` FOREIGN KEY (`ProfessorIDProf`) REFERENCES `professor` (`IDProf`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coordenador`
--

LOCK TABLES `coordenador` WRITE;
/*!40000 ALTER TABLE `coordenador` DISABLE KEYS */;
INSERT INTO `coordenador` VALUES ('05694259');
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
  `AreaConhecimentoIDArea` char(10) NOT NULL,
  `Carga Horaria` int(5) DEFAULT NULL,
  `ID` char(10) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FKDisciplina804916` (`AreaConhecimentoIDArea`),
  CONSTRAINT `FKDisciplina804916` FOREIGN KEY (`AreaConhecimentoIDArea`) REFERENCES `areaconhecimento` (`IDArea`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `disciplina`
--

LOCK TABLES `disciplina` WRITE;
/*!40000 ALTER TABLE `disciplina` DISABLE KEYS */;
INSERT INTO `disciplina` VALUES ('Estruturas de dados','5',30,'3134');
/*!40000 ALTER TABLE `disciplina` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funcionariocolegiado`
--

DROP TABLE IF EXISTS `funcionariocolegiado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `funcionariocolegiado` (
  `ID` char(10) NOT NULL,
  `Login` varchar(50) DEFAULT NULL,
  `Senha` varchar(50) DEFAULT NULL,
  `TurmaDisciplinaID` char(10) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FKFuncionari804499` (`TurmaDisciplinaID`),
  CONSTRAINT `FKFuncionari804499` FOREIGN KEY (`TurmaDisciplinaID`) REFERENCES `turma` (`DisciplinaID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcionariocolegiado`
--

LOCK TABLES `funcionariocolegiado` WRITE;
/*!40000 ALTER TABLE `funcionariocolegiado` DISABLE KEYS */;
INSERT INTO `funcionariocolegiado` VALUES ('3031','funcol12345','pass12345','3134');
/*!40000 ALTER TABLE `funcionariocolegiado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funcionariodepartamento`
--

DROP TABLE IF EXISTS `funcionariodepartamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `funcionariodepartamento` (
  `ID` char(10) NOT NULL,
  `NomeDepartamento` varchar(50) DEFAULT NULL,
  `Login` varchar(50) DEFAULT NULL,
  `Senha` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcionariodepartamento`
--

LOCK TABLES `funcionariodepartamento` WRITE;
/*!40000 ALTER TABLE `funcionariodepartamento` DISABLE KEYS */;
INSERT INTO `funcionariodepartamento` VALUES ('10','Departmento de ciências exatas','fnc1234','senha1234');
/*!40000 ALTER TABLE `funcionariodepartamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funcionariodepartamento_areaconhecimento`
--

DROP TABLE IF EXISTS `funcionariodepartamento_areaconhecimento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `funcionariodepartamento_areaconhecimento` (
  `FuncionarioDepartamentoID` char(10) NOT NULL,
  `AreaConhecimentoIDArea` char(10) NOT NULL,
  PRIMARY KEY (`FuncionarioDepartamentoID`,`AreaConhecimentoIDArea`),
  KEY `FKFuncionari209020` (`AreaConhecimentoIDArea`),
  CONSTRAINT `FKFuncionari209020` FOREIGN KEY (`AreaConhecimentoIDArea`) REFERENCES `areaconhecimento` (`IDArea`),
  CONSTRAINT `FKFuncionari638916` FOREIGN KEY (`FuncionarioDepartamentoID`) REFERENCES `funcionariodepartamento` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
  `FuncionarioColegiadoID` char(10) NOT NULL,
  `RelatórioID` char(10) NOT NULL,
  `InfoRelatorio` binary(100) NOT NULL,
  `CoordenadorProfessorIDProf` char(10) NOT NULL,
  `FuncionarioDepartamentoID` char(10) NOT NULL,
  `AdministradorID` char(10) NOT NULL,
  PRIMARY KEY (`RelatórioID`),
  KEY `FKGerarRelat972275` (`FuncionarioColegiadoID`),
  KEY `FKGerarRelat303489` (`CoordenadorProfessorIDProf`),
  KEY `FKGerarRelat844950` (`FuncionarioDepartamentoID`),
  KEY `FKGerarRelat10039` (`AdministradorID`),
  CONSTRAINT `FKGerarRelat10039` FOREIGN KEY (`AdministradorID`) REFERENCES `administrador` (`ID`),
  CONSTRAINT `FKGerarRelat303489` FOREIGN KEY (`CoordenadorProfessorIDProf`) REFERENCES `coordenador` (`ProfessorIDProf`),
  CONSTRAINT `FKGerarRelat844950` FOREIGN KEY (`FuncionarioDepartamentoID`) REFERENCES `funcionariodepartamento` (`ID`),
  CONSTRAINT `FKGerarRelat902831` FOREIGN KEY (`RelatórioID`) REFERENCES `relatório` (`ID`),
  CONSTRAINT `FKGerarRelat972275` FOREIGN KEY (`FuncionarioColegiadoID`) REFERENCES `funcionariocolegiado` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gerarrelatório`
--

LOCK TABLES `gerarrelatório` WRITE;
/*!40000 ALTER TABLE `gerarrelatório` DISABLE KEYS */;
/*!40000 ALTER TABLE `gerarrelatório` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `informaçõessistema`
--

DROP TABLE IF EXISTS `informaçõessistema`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `informaçõessistema` (
  `AdministradorID` char(10) NOT NULL,
  KEY `FKInformaçõe445152` (`AdministradorID`),
  CONSTRAINT `FKInformaçõe445152` FOREIGN KEY (`AdministradorID`) REFERENCES `administrador` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `informaçõessistema`
--

LOCK TABLES `informaçõessistema` WRITE;
/*!40000 ALTER TABLE `informaçõessistema` DISABLE KEYS */;
/*!40000 ALTER TABLE `informaçõessistema` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `professor`
--

DROP TABLE IF EXISTS `professor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `professor` (
  `IDProf` char(10) NOT NULL,
  `NomeProf` varchar(50) DEFAULT NULL,
  `AreaConhecimentoIDArea` char(10) NOT NULL,
  `Login` varchar(50) DEFAULT NULL,
  `Senha` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`IDProf`),
  KEY `FKProfessor987414` (`AreaConhecimentoIDArea`),
  CONSTRAINT `FKProfessor987414` FOREIGN KEY (`AreaConhecimentoIDArea`) REFERENCES `areaconhecimento` (`IDArea`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `professor`
--

LOCK TABLES `professor` WRITE;
/*!40000 ALTER TABLE `professor` DISABLE KEYS */;
INSERT INTO `professor` VALUES ('05694259','Paulo Costa','5','pcosta','123456pcosta');
/*!40000 ALTER TABLE `professor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `relatório`
--

DROP TABLE IF EXISTS `relatório`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `relatório` (
  `ID` char(10) NOT NULL,
  `Tipo` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
  `FuncionarioDepartamentoID` char(10) NOT NULL,
  `CoordenadorProfessorIDProf` char(10) NOT NULL,
  PRIMARY KEY (`FuncionarioDepartamentoID`,`CoordenadorProfessorIDProf`),
  KEY `FKSelecionar796677` (`CoordenadorProfessorIDProf`),
  CONSTRAINT `FKSelecionar338139` FOREIGN KEY (`FuncionarioDepartamentoID`) REFERENCES `funcionariodepartamento` (`ID`),
  CONSTRAINT `FKSelecionar796677` FOREIGN KEY (`CoordenadorProfessorIDProf`) REFERENCES `coordenador` (`ProfessorIDProf`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
  `id` char(10) NOT NULL,
  `DataSem` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `semestre`
--

LOCK TABLES `semestre` WRITE;
/*!40000 ALTER TABLE `semestre` DISABLE KEYS */;
INSERT INTO `semestre` VALUES ('1509','08/02/2019');
/*!40000 ALTER TABLE `semestre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `turma`
--

DROP TABLE IF EXISTS `turma`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `turma` (
  `DisciplinaID` char(10) NOT NULL,
  `ProfessorIDProf` char(10) NOT NULL,
  `HorarioAula` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`DisciplinaID`),
  KEY `FKTurma323501` (`ProfessorIDProf`),
  CONSTRAINT `FKTurma323501` FOREIGN KEY (`ProfessorIDProf`) REFERENCES `professor` (`IDProf`),
  CONSTRAINT `FKTurma820675` FOREIGN KEY (`DisciplinaID`) REFERENCES `disciplina` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `turma`
--

LOCK TABLES `turma` WRITE;
/*!40000 ALTER TABLE `turma` DISABLE KEYS */;
INSERT INTO `turma` VALUES ('3134','05694259','13:30-15:30');
/*!40000 ALTER TABLE `turma` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `browse photo view`
--

/*!50001 DROP VIEW IF EXISTS `browse photo view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `browse photo view` AS select `areaconhecimento`.`IDArea` AS `IDArea` from `areaconhecimento` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-08-07 11:23:42
