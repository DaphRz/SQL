-- Sistema de Gestão de Hospital

CREATE DATABASE IF NOT EXISTS Hospital;
USE Hospital;

CREATE TABLE IF NOT EXISTS Pacientes(
CPF_paciente VARCHAR(15) PRIMARY KEY,
nome VARCHAR(45) NOT NULL,
data_nasc DATE NOT NULL,
telefone VARCHAR(45) NOT NULL,
email VARCHAR(45));

CREATE TABLE IF NOT EXISTS Departamentos(
cod_especialidade INT PRIMARY KEY,
nome_especialidade VARCHAR(45));

CREATE TABLE IF NOT EXISTS Medicos(
CRM INT,
UF CHAR(2),
PRIMARY KEY (CRM,UF),
nome VARCHAR(45) NOT NULL,
email VARCHAR(45) NOT NULL,
telefone VARCHAR(45) NOT NULL,
Departamentos_cod_especialidade INT NOT NULL,
CONSTRAINT Med_Depart FOREIGN KEY (Departamentos_cod_especialidade) 
REFERENCES Departamentos(cod_especialidade));

CREATE TABLE IF NOT EXISTS Consultas(
id_consulta INT PRIMARY KEY,
anamnese TEXT NOT NULL,
data_consulta DATE NOT NULL,
hora_consulta TIME NOT NULL,
CRM INT NOT NULL,
UF CHAR(2) NOT NULL,
CPF_paciente VARCHAR(15) NOT NULL,
CONSTRAINT Consul_Med FOREIGN KEY(CRM,UF) REFERENCES Medicos(CRM,UF),
CONSTRAINT Consult_Pacien FOREIGN KEY (CPF_paciente) REFERENCES Pacientes(CPF_paciente));


