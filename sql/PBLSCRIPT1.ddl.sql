use pblteste1;

CREATE TABLE AreaConhecimento (
  IDArea int(10) NOT NULL AUTO_INCREMENT, 
  PRIMARY KEY (IDArea));
CREATE TABLE Professor (
  IDProf                 char(10) NOT NULL, 
  NomeProf               varchar(50), 
  AreaConhecimentoIDArea int(10) NOT NULL, 
  Login                  varchar(50), 
  Senha                  varchar(50), 
  PRIMARY KEY (IDProf));
CREATE TABLE Turma (
  DisciplinaID    int(10) NOT NULL, 
  ProfessorIDProf char(10) NOT NULL, 
  HorarioAula     char(10), 
  PRIMARY KEY (DisciplinaID));
CREATE TABLE Disciplina (
  Nome                   varchar(50), 
  AreaConhecimentoIDArea int(10) NOT NULL, 
  `Carga Horaria`        int(5), 
  ID                     int(10) NOT NULL AUTO_INCREMENT, 
  PRIMARY KEY (ID));
CREATE TABLE FuncionarioDepartamento (
  ID               char(10) NOT NULL, 
  NomeDepartamento varchar(50), 
  Login            varchar(50), 
  Senha            varchar(50), 
  PRIMARY KEY (ID));
CREATE TABLE FuncionarioDepartamento_AreaConhecimento (
  FuncionarioDepartamentoID char(10) NOT NULL, 
  AreaConhecimentoIDArea    int(10) NOT NULL, 
  PRIMARY KEY (FuncionarioDepartamentoID, 
  AreaConhecimentoIDArea));
CREATE TABLE Semestre (
  id      int(10) NOT NULL AUTO_INCREMENT, 
  DataSem varchar(10) NOT NULL, 
  PRIMARY KEY (id));
CREATE TABLE CalendarioSemestral (
  Semestreid             int(10) NOT NULL, 
  FuncionarioColegiadoID char(10) NOT NULL, 
  DisciplinaID           int(10) NOT NULL, 
  PRIMARY KEY (Semestreid, 
  FuncionarioColegiadoID));
CREATE TABLE Administrador (
  ID    char(10) NOT NULL, 
  Login varchar(50), 
  Senha varchar(50), 
  PRIMARY KEY (ID));
CREATE TABLE FuncionarioColegiado (
  ID                char(10) NOT NULL, 
  Login             varchar(50), 
  Senha             varchar(50), 
  TurmaDisciplinaID int(10), 
  PRIMARY KEY (ID));
CREATE TABLE CadastroDisciplina (
  FuncionarioColegiadoID char(10) NOT NULL, 
  DisciplinaID           int(10) NOT NULL);
CREATE TABLE Coordenador (
  ProfessorIDProf char(10) NOT NULL, 
  PRIMARY KEY (ProfessorIDProf));
CREATE TABLE AlocaçãoProfDisciplina (
  CoordenadorProfessorIDProf char(10) NOT NULL, 
  DisciplinaID               int(10) NOT NULL, 
  PRIMARY KEY (CoordenadorProfessorIDProf, 
  DisciplinaID));
CREATE TABLE InformaçõesSistema (
  AdministradorID char(10) NOT NULL);
CREATE TABLE SelecionarCoordenador (
  FuncionarioDepartamentoID  char(10) NOT NULL, 
  CoordenadorProfessorIDProf char(10) NOT NULL, 
  PRIMARY KEY (FuncionarioDepartamentoID, 
  CoordenadorProfessorIDProf));
CREATE TABLE Relatório (
  ID   char(10) NOT NULL, 
  Tipo varchar(20), 
  PRIMARY KEY (ID));
CREATE TABLE GerarRelatório (
  FuncionarioColegiadoID     char(10) NOT NULL, 
  RelatórioID                char(10) NOT NULL, 
  InfoRelatorio              binary(100) NOT NULL, 
  CoordenadorProfessorIDProf char(10) NOT NULL, 
  FuncionarioDepartamentoID  char(10) NOT NULL, 
  AdministradorID            char(10) NOT NULL, 
  PRIMARY KEY (RelatórioID));
CREATE TABLE CadastroProfessor (
  ProfessorIDProf           char(10) NOT NULL, 
  FuncionarioDepartamentoID char(10) NOT NULL);
CREATE VIEW `Browse Photo View` AS
SELECT *
FROM AreaConhecimento;
ALTER TABLE Professor ADD CONSTRAINT FKProfessor987414 FOREIGN KEY (AreaConhecimentoIDArea) REFERENCES AreaConhecimento (IDArea);
ALTER TABLE Disciplina ADD CONSTRAINT FKDisciplina804916 FOREIGN KEY (AreaConhecimentoIDArea) REFERENCES AreaConhecimento (IDArea);
ALTER TABLE Turma ADD CONSTRAINT FKTurma820675 FOREIGN KEY (DisciplinaID) REFERENCES Disciplina (ID);
ALTER TABLE FuncionarioDepartamento_AreaConhecimento ADD CONSTRAINT FKFuncionari638916 FOREIGN KEY (FuncionarioDepartamentoID) REFERENCES FuncionarioDepartamento (ID);
ALTER TABLE FuncionarioDepartamento_AreaConhecimento ADD CONSTRAINT FKFuncionari209020 FOREIGN KEY (AreaConhecimentoIDArea) REFERENCES AreaConhecimento (IDArea);
ALTER TABLE CalendarioSemestral ADD CONSTRAINT FKCalendario794478 FOREIGN KEY (Semestreid) REFERENCES Semestre (id);
ALTER TABLE CalendarioSemestral ADD CONSTRAINT FKCalendario807296 FOREIGN KEY (DisciplinaID) REFERENCES Disciplina (ID);
ALTER TABLE CadastroDisciplina ADD CONSTRAINT FKCadastroDi664707 FOREIGN KEY (FuncionarioColegiadoID) REFERENCES FuncionarioColegiado (ID);
ALTER TABLE CadastroDisciplina ADD CONSTRAINT FKCadastroDi790566 FOREIGN KEY (DisciplinaID) REFERENCES Disciplina (ID);
ALTER TABLE Coordenador ADD CONSTRAINT FKCoordenado562506 FOREIGN KEY (ProfessorIDProf) REFERENCES Professor (IDProf);
ALTER TABLE AlocaçãoProfDisciplina ADD CONSTRAINT FKAlocaçãoPr202079 FOREIGN KEY (CoordenadorProfessorIDProf) REFERENCES Coordenador (ProfessorIDProf);
ALTER TABLE InformaçõesSistema ADD CONSTRAINT FKInformaçõe445152 FOREIGN KEY (AdministradorID) REFERENCES Administrador (ID);
ALTER TABLE SelecionarCoordenador ADD CONSTRAINT FKSelecionar338139 FOREIGN KEY (FuncionarioDepartamentoID) REFERENCES FuncionarioDepartamento (ID);
ALTER TABLE SelecionarCoordenador ADD CONSTRAINT FKSelecionar796677 FOREIGN KEY (CoordenadorProfessorIDProf) REFERENCES Coordenador (ProfessorIDProf);
ALTER TABLE CalendarioSemestral ADD CONSTRAINT FKCalendario647977 FOREIGN KEY (FuncionarioColegiadoID) REFERENCES FuncionarioColegiado (ID);
ALTER TABLE AlocaçãoProfDisciplina ADD CONSTRAINT FKAlocaçãoPr10063 FOREIGN KEY (DisciplinaID) REFERENCES Disciplina (ID);
ALTER TABLE Turma ADD CONSTRAINT FKTurma323501 FOREIGN KEY (ProfessorIDProf) REFERENCES Professor (IDProf);
ALTER TABLE GerarRelatório ADD CONSTRAINT FKGerarRelat972275 FOREIGN KEY (FuncionarioColegiadoID) REFERENCES FuncionarioColegiado (ID);
ALTER TABLE GerarRelatório ADD CONSTRAINT FKGerarRelat902831 FOREIGN KEY (RelatórioID) REFERENCES Relatório (ID);
ALTER TABLE CadastroProfessor ADD CONSTRAINT FKCadastroPr186256 FOREIGN KEY (ProfessorIDProf) REFERENCES Professor (IDProf);
ALTER TABLE CadastroProfessor ADD CONSTRAINT FKCadastroPr382520 FOREIGN KEY (FuncionarioDepartamentoID) REFERENCES FuncionarioDepartamento (ID);
ALTER TABLE FuncionarioColegiado ADD CONSTRAINT FKFuncionari804499 FOREIGN KEY (TurmaDisciplinaID) REFERENCES Turma (DisciplinaID);
ALTER TABLE GerarRelatório ADD CONSTRAINT FKGerarRelat303489 FOREIGN KEY (CoordenadorProfessorIDProf) REFERENCES Coordenador (ProfessorIDProf);
ALTER TABLE GerarRelatório ADD CONSTRAINT FKGerarRelat844950 FOREIGN KEY (FuncionarioDepartamentoID) REFERENCES FuncionarioDepartamento (ID);
ALTER TABLE GerarRelatório ADD CONSTRAINT FKGerarRelat10039 FOREIGN KEY (AdministradorID) REFERENCES Administrador (ID);
