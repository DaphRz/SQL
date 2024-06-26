-- Exercícios Aprendizagem - BDEX2_PASSAGENS_AEREAS
USE Passagens_Aereas_2;

-- 1. Quais são os nomes e cidades de todos os aeroportos cadastrados?
DESC Aeroportos;

SELECT nome, cidade
FROM Aeroportos;

-- 2. Quantos voos estão cadastrados para cada companhia aérea? 
DESC Voos;
DESC Cias_Aereas;

SELECT id_cia AS CIA_AEREA, COUNT(*) AS VOOS
FROM Voos
GROUP BY id_cia;

-- 3. Qual é a capacidade média das aeronaves cadastradas?
SHOW TABLES FROM Passagens_Aereas_2;
DESC Aeronave;

SELECT ROUND(AVG(quantidade_assentos),1) AS Capacidade_Média
FROM Aeronave;
