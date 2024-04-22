CREATE DATABASE IF NOT EXISTS Estoque;
USE Estoque;

CREATE TABLE IF NOT EXISTS Produtos(
id_produto INT PRIMARY KEY,
nome VARCHAR(45) NOT NULL,
descriçao TEXT NOT NULL,
preço DECIMAL(10,2) NOT NULL);

CREATE TABLE IF NOT EXISTS Fornecedores(
id_fornecedor INT PRIMARY KEY,
CNPJ VARCHAR(20) NOT NULL,
nome VARCHAR(45) NOT NULL,
cidade VARCHAR(45) NOT NULL);

CREATE TABLE IF NOT EXISTS Armazens(
id_armazem INT PRIMARY KEY,
nome VARCHAR(45) NOT NULL,
logradouro VARCHAR(45) NOT NULL,
numero INT,
bairro VARCHAR(45) NOT NULL,
cidade VARCHAR(45) NOT NULL,
UF CHAR(2));

CREATE TABLE IF NOT EXISTS Pedidos_de_Compra(
id_pedido INT PRIMARY KEY,
data_pedido DATETIME NOT NULL,
id_fornecedor INT NOT NULL,
CONSTRAINT pedido_fornecedor FOREIGN KEY(id_fornecedor) REFERENCES Fornecedores(id_fornecedor));


CREATE TABLE IF NOT EXISTS Produtos_Fornecedores(
id_produto INT,
id_fornecedor INT,
PRIMARY KEY (id_produto, id_fornecedor),
CONSTRAINT prod_prod FOREIGN KEY(id_produto) REFERENCES Produtos(id_produto),
CONSTRAINT forn_forn FOREIGN KEY(id_fornecedor) REFERENCES Fornecedores(id_fornecedor));

CREATE TABLE IF NOT EXISTS Produtos_Armazens(
id_produto INT,
id_armazem INT,
PRIMARY KEY (id_produto, id_armazem),
CONSTRAINT prod_prod FOREIGN KEY(id_produto) REFERENCES Produtos(id_produto),
CONSTRAINT arma_arma FOREIGN KEY(id_armazem) REFERENCES Armazens(id_armazem));

CREATE TABLE IF NOT EXISTS Pedidos_Produtos(
id_pedido INT,
id_fornecedor INT,
id_produto INT,
PRIMARY KEY(id_pedido, id_fornecedor, id_produto),
CONSTRAINT pedido_pedido FOREIGN KEY(id_pedido) REFERENCES Pedidos_de_Compra(id_pedido),
CONSTRAINT forn_prod FOREIGN KEY(id_fornecedor) REFERENCES Fornecedores(id_fornecedor),
CONSTRAINT prod_prod FOREIGN KEY(id_produto) REFERENCES Produtos(id_produto));