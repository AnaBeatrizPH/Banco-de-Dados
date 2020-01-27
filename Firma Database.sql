create database firma; 
use firma; 

create table Departamento (
IdDepto INTEGER NOT NULL auto_increment,
nome VARCHAR (70) NOT NULL,
andar INTEGER, 

CONSTRAINT pk_departamento PRIMARY KEY (idDepto)
 ); 
 
 create table funcionario (
 idFunc INTEGER NOT NULL auto_increment, 
 nomeFunc VARCHAR(100) NOT NULL, 
 email VARCHAR (100) NOT NULL, 
 telefone VARCHAR (50), 
 IdDepto INTEGER NOT NULL, 
 
 CONSTRAINT PK_IdFunc PRIMARY KEY (idFunc), 
 CONSTRAINT FK_IdDepto FOREIGN KEY (IdDepto) REFERENCES Departamento(IdDepto)
 
 );
 
 create table projeto (
 IdProjeto INTEGER NOT NULL auto_increment, 
 titulo VARCHAR (80) not null, 
 dataInicio date NOT NULL, 
 numContrato INTEGER NOT NULL, 
 cliente VARCHAR(100) NOT NULL,
 
 CONSTRAINT pk_idProjeto PRIMARY KEY (IdProjeto)
 
 ); 
 
 CREATE table participa(
 IdFunc INTEGER NOT NULL,
 IdProjeto INTEGER NOT NULL, 
 dataInicio date NOT NULL, 
 dataFim date NOT NULL, 
 
 CONSTRAINT pk_participa PRIMARY KEY (IdFunc, IdProjeto, dataInicio), 
 CONSTRAINT pk_Func FOREIGN KEY (IdFunc) REFERENCES funcionario (IdFunc), 
 CONSTRAINT pk_projeto FOREIGN KEY (IdProjeto) REFERENCES projeto(IdProjeto)
 
 ); 
 
insert into departamento values (null, 'Desenvolvimento', 1);
insert into departamento values (null, 'Administracao', 2);
insert into departamento values (null, 'Infra', 3);
insert into departamento values (null, 'Suporte', 4);
insert into departamento values (null, 'RH', 5);

insert into funcionario values (null, 'Funcionario 1-1', 'email11@firma.com', '1111-1111', 1);
insert into funcionario values (null, 'Funcionario 1-2', 'email12@firma.com', '1111-1111', 1);
insert into funcionario values (null, 'Funcionario 2-1', 'email21@firma.com', '1111-1111', 2);
insert into funcionario values (null, 'Funcionario 2-2', 'email22@firma.com', '1111-1111', 2);
insert into funcionario values (null, 'Funcionario 3-1', 'email31@firma.com', '1111-1111', 3);
insert into funcionario values (null, 'Funcionario 3-2', 'email32@firma.com', '1111-1111', 3);
insert into funcionario values (null, 'Funcionario 4-1', 'email41@firma.com', '1111-1111', 4);
insert into funcionario values (null, 'Funcionario 4-2', 'email42@firma.com', '1111-1111', 4);
insert into funcionario values (null, 'Funcionario 5-1', 'email51@firma.com', '1111-1111', 5);
insert into funcionario values (null, 'Funcionario 5-2', 'email52@firma.com', '1111-1111', 5);
insert into funcionario values (null, 'Funcionario 6-1', 'email61@firma.com', '1111-1111', 3);
insert into funcionario values (null, 'Funcionario 6-2', 'email62@firma.com', '1111-1111', 5);

insert into projeto values (null, 'Projeto 1', '2020-01-01', 1, 'Cliente 1');
insert into projeto values (null, 'Projeto 2', '2020-01-01', 2, 'Cliente 2');
insert into projeto values (null, 'Projeto 3', '2020-01-01', 3, 'Cliente 3');

insert into participa values (1, 1, '2020-01-01','2020-12-31');
insert into participa values (5, 1, '2020-01-01','2020-12-31');
insert into participa values (8, 1, '2020-01-01','2020-12-31');

insert into participa values (2, 2, '2020-01-10','2020-12-31');
insert into participa values (6, 2, '2020-01-10','2020-12-31');
insert into participa values (7, 2, '2020-01-10','2020-12-31');

insert into participa values (3, 3, '2020-01-20' ,'2020-12-31');
insert into participa values (9, 3, '2020-01-20','2020-12-31');

SELECT idFunc, idProjeto FROM participa; 

SELECT nome, titulo FROM departamento
inner join funcionario using (idDepto)
inner join participa using (idFunc)
inner join projeto using (idProjeto); 



