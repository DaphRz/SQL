CREATE DATABASE IF NOT EXISTS CC1Mc;
USE CC1Mc;

CREATE TABLE IF NOT EXISTS Cargo(
id_cargo INT(11) PRIMARY KEY,
nome_cargo VARCHAR(45) NOT NULL);

CREATE TABLE IF NOT EXISTS Riscos_Ocupacionais(
id_riscos INT(11) PRIMARY KEY,
nome_riscos VARCHAR(45) NOT NULL);

CREATE TABLE IF NOT EXISTS Resultado_Exame(
id_tipo_resultado_exame INT(11) PRIMARY KEY,
tipo VARCHAR(30) NOT NULL);

CREATE TABLE IF NOT EXISTS Tipo_Exame(
id_tipo_exame INT(11) PRIMARY KEY,
tipo VARCHAR(50) NOT NULL);

CREATE TABLE IF NOT EXISTS Medico(
id_medico INT(11) PRIMARY KEY,
crm INT(11) NOT NULL,
nome VARCHAR(100) NOT NULL,
cpf VARCHAR(20) NOT NULL,
especialidade VARCHAR(50) NOT NULL,
data_nascimento DATE NOT NULL,
endereço VARCHAR(200) NOT NULL,
telefone VARCHAR(20));

CREATE TABLE IF NOT EXISTS Funcionario(
id_funcionario INT(11) PRIMARY KEY,
nome VARCHAR(100) NOT NULL,
cpf VARCHAR(20) NOT NULL,
data_nascimento DATE NOT NULL,
endereço VARCHAR(200) NOT NULL,
telefone VARCHAR(20) NOT NULL,
cargo_id_cargo INT(11) NOT NULL,
empresa_id_empresa INT(11) NOT NULL,
CONSTRAINT Func_Cargo FOREIGN KEY(Cargo) REFERENCES 
Cargo(id_cargo));

CREATE TABLE IF NOT EXISTS Exame(
id_exame INT(11) PRIMARY KEY,
especialidade VARCHAR(50) NOT NULL,
data_realizacao DATE NOT NULL,
tipo_exame_id_tipo_exame INT(11) NOT NULL,
resultado_exame_id_tipo_resultado_exame INT(11) NOT NULL,
CONSTRAINT Exame_Tipo FOREIGN KEY(Tipo_Exame) REFERENCES 
Tipo_Exame(id_tipo_exame),
CONSTRAINT Exame_Resultado FOREIGN KEY(Resultado_Exame) 
REFERENCES Resultado_Exame(id_tipo_resultado_exame));

CREATE TABLE IF NOT EXISTS Empresa(
id_empresa INT(11) PRIMARY KEY,
cnpj VARCHAR(20) NOT NULL,
nome_fantasia VARCHAR(50) NOT NULL,
endereco VARCHAR(200) NOT NULL,
telefone VARCHAR(20) NOT NULL,
empresa_id_empresa INT(11) NOT NULL,
CONSTRAINT Empresa_Empresa FOREIGN KEY (Empresa) REFERENCES
Empresa(id_empresa));

CREATE TABLE IF NOT EXISTS Atestado(
id_atestado INT(11) PRIMARY KEY,
resultados_riscos VARCHAR(100) NOT NULL,
resultado VARCHAR(100) NOT NULL,
observacoes VARCHAR(300) NOT NULL,
medico_id INT(11) NOT NULL,
CONSTRAINT Atestado_Medico FOREIGN KEY (Medico) REFERENCES
Medico(id_medico));

CREATE TABLE IF NOT EXISTS Cargo_has_Riscos_Ocupacionais(
cargo_id_cargo INT(11) PRIMARY KEY,
riscos_ocupacionais_id_riscos INT(11) PRIMARY KEY,
CONSTRAINT Cargo_Riscos FOREIGN KEY (Cargo) REFERENCES
Cargo(id_cargo),
CONSTRAINT Riscos_Cargo FOREIGN KEY(Riscos_Ocupacionais)
REFERENCES Riscos_Ocupacionais(id_riscos));

CREATE TABLE IF NOT EXISTS Funcionario_has_Exame(
exame_id_exame INT(11) PRIMARY KEY,
funcionario_id_funcionario INT(11) PRIMARY KEY,
CONSTRAINT Exame_Func FOREIGN KEY(Exame) REFERENCES
Exame(id_exame),
CONSTRAINT Func_Exame FOREIGN KEY(Funcionario) REFERENCES
Funcionario(id_funcionario));

CREATE TABLE IF NOT EXISTS Empresa_has_Exame(
exame_id_exame INT(11) PRIMARY KEY,
empresa_id_empresa INT(11) PRIMARY KEY,
CONSTRAINT Exame_Empresa FOREIGN KEY (Exame) REFERENCES
Exame(id_exame),
CONSTRAINT Empresa_Exame FOREIGN KEY(Empresa) REFERENCES
Empresa(id_empresa));

CREATE TABLE IF NOT EXISTS Exame_has_Atestado(
exame_id_exame INT(11) PRIMARY KEY,
atestado_id_atestado INT(11) PRIMARY KEY,
CONSTRAINT Exame_Atestado FOREIGN KEY (Exame) REFERENCES
Exame(id_exame),
CONSTRAINT Atestado_Exame FOREIGN KEY(Atestado) REFERENCES
Atestado(id_atestado));
