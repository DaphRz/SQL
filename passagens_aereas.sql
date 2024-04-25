CREATE DATABASE IF NOT EXISTS Passagens_Aereas;
USE Passagens_Aereas;

CREATE TABLE IF NOT EXISTS Passageiros(
cod_passageiro VARCHAR(15) PRIMARY KEY,
nome VARCHAR(45) NOT NULL,
sobrenome VARCHAR (50) NOT NULL,
data_nasc DATE NOT NULL,
nacionalidade VARCHAR (45) NOT NULL);

CREATE TABLE IF NOT EXISTS Cias_Aereas(
id_cia INT PRIMARY KEY,
nome VARCHAR(45) NOT NULL,
CNPJ VARCHAR(45) NOT NULL);

CREATE TABLE IF NOT EXISTS Reservas_de_Voo(
cod_reserva INT PRIMARY KEY,
data_reserva VARCHAR(45) NOT NULL,
forma_pagamento ENUM("DINHEIRO","PIX","DEBITO","CREDITO") NOT NULL,
valor_total DECIMAL(10,2) NOT NULL);