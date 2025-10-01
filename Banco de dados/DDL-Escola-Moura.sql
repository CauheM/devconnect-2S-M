/*DDL-Escola*/

CREATE DATABASE db_escola;

--Comando que separa em blocos
GO

USE db_escola;

--Comando pra criar tabela 
CREATE TABLE tb_escola(
  id INT IDENTITY(1,1) PRIMARY KEY 
  ,nome     NVARCHAR(255) NOT NULL
  ,endereço NVARCHAR(255) NOT NULL

  
);
GO

SELECT * FROM tb_escola;

--Aluno
CREATE TABLE tb_aluno(
  id INT IDENTITY(1,1) PRIMARY KEY 
  ,nome NVARCHAR(255)     NOT NULL
  ,CPF NCHAR(11) UNIQUE   NOT NULL
  ,Matricula NVARCHAR(10) NOT NULL
  ,datadenascimento DATE  NOT NULL
  ,id_escola INT

  FOREIGN KEY (id_escola) REFERENCES tb_escola(id)

);
GO

SELECT * FROM tb_aluno;

--Prova
CREATE TABLE tb_prova(
  id INT IDENTITY(1,1) PRIMARY KEY 
  ,nomeProf NVARCHAR(255) NOT NULL
  ,Materia  NVARCHAR(100) NOT NULL
  ,Duracao TIME NOT NULL
  ,Nota DECIMAL(3, 1)  NOT NULL
  ,Data_prova DATE  NOT NULL
  ,id_aluno INT

  FOREIGN KEY (id_aluno) REFERENCES tb_aluno(id)

);
GO

SELECT * FROM tb_prova;

CREATE TABLE tb_turma(
  id INT IDENTITY(1,1) PRIMARY KEY 
  ,NumeroSala INT
  ,Periodo TIME NOT NULL
  ,Serie INT NOT NULL
  ,NomeTurma NVARCHAR(255) NOT NULL
  ,id_escola INT
  

  FOREIGN KEY (id_escola) REFERENCES tb_escola(id)

);
GO

SELECT * FROM tb_turma;

--TABELA TURMAPROVA
CREATE TABLE tb_turma_prova(
id_turma INT NOT NULL,
id_prova INT NOT NULL,

PRIMARY KEY (id_turma, id_prova)

);

SELECT * FROM tb_turma_prova;