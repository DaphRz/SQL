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

CREATE TABLE IF NOT EXISTS Aeroportos(
id_aeroporto INT PRIMARY KEY,
nome VARCHAR(45) NOT NULL,
cidade VARCHAR(100) NOT NULL,
estado VARCHAR(100) NOT NULL,
pais VARCHAR(100) NOT NULL,
latitude VARCHAR(50) NOT NULL,
longitude VARCHAR(50) NOT NULL,
tamanho_pista DECIMAL(20,1) NOT NULL);

CREATE TABLE IF NOT EXISTS Aeronave(
cod_aeronave INT PRIMARY KEY,
modelo VARCHAR(45) NOT NULL,
fabricante VARCHAR(45) NOT NULL,
ano YEAR NOT NULL,
quantidade_assentos INT NOT NULL,
id_cia INT NOT NULL,
CONSTRAINT cia_aeronave FOREIGN KEY (id_cia) REFERENCES Cias_Aereas(id_cia));

CREATE TABLE IF NOT EXISTS Voos(
id_voo INT,
assento VARCHAR(45),
PRIMARY KEY (id_voo, assento),
data_partida DATE NOT NULL,
hora_partida TIME NOT NULL,
aero_chegada VARCHAR(4) NOT NULL,
data_chegada DATE NOT NULL,
hora_chegada TIME NOT NULL,
cod_aeronave INT NOT NULL,
id_cia INT NOT NULL,
CONSTRAINT aero_voo FOREIGN KEY (cod_aeronave) REFERENCES Aeronave(cod_aeronave),
CONSTRAINT cia_voo FOREIGN KEY (id_cia) REFERENCES Cias_Aereas(id_cia));

CREATE TABLE IF NOT EXISTS Passageiros_Reservas(
cod_passageiro VARCHAR(15) NOT NULL,
cod_reserva INT NOT NULL,
CONSTRAINT pass_reserva FOREIGN KEY (cod_passageiro) REFERENCES Passageiros(cod_passageiro),
CONSTRAINT reserva_pass FOREIGN KEY (cod_reserva) REFERENCES Reservas_de_Voo(cod_reserva));

CREATE TABLE IF NOT EXISTS Voos_Reservas(
id_voo INT NOT NULL,
cod_aeronave INT NOT NULL,
id_cia INT NOT NULL,
assento VARCHAR(45) NOT NULL,
cod_reserva INT NOT NULL,
CONSTRAINT voo_voo FOREIGN KEY (id_voo) REFERENCES Voos(id_voo),
CONSTRAINT aero_voo FOREIGN KEY (cod_aeronave) REFERENCES Aeronave(cod_aeronave),
CONSTRAINT cia_reserva FOREIGN KEY (id_cia) REFERENCES Cias_Aereas(id_cia),
CONSTRAINT assentos_voo FOREIGN KEY (assento) REFERENCES Voos(assento),
CONSTRAINT reserva_voo FOREIGN KEY (cod_reserva) REFERENCES Reservas_de_Voo(cod_reserva));

ALTER TABLE Cias_Aereas
MODIFY COLUMN CNPJ VARCHAR(20) NOT NULL;

ALTER TABLE Reservas_de_Voo
MODIFY COLUMN data_reserva DATE NOT NULL;
