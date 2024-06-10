# Exercíos Fixação - BDEX1_HOSPITAL

USE Hospital_1;

# 1 - Exibir todas as informações da tabela PACIENTES.
SELECT *
FROM Pacientes;

# 2 - Mostrar os nomes e e-mails dos pacientes que nasceram depois do ano 2000.
SELECT nome, email
FROM Pacientes
WHERE YEAR(data_nasc) > 2000;

# 3 - Listar os nomes dos médicos e as especialidades em que trabalham.
DESC Medicos;

SELECT M.nome, IF(D.nome_especialidade IS NULL, 'Clínico Geral',D.nome_especialidade) AS especialidade
FROM Medicos M
LEFT JOIN Departamentos D
ON M.Departamentos_cod_especialidade = D.cod_especialidade
ORDER BY M.nome;

# 4 - Exibir os detalhes das consultas: ID da consulta, data, hora, nome do médico e nome do paciente.
DESC Consultas;
DESC Pacientes;

SELECT C.id_consulta, C.data_consulta, C.hora_consulta, M.nome AS medico, P.nome AS paciente
FROM Consultas C

JOIN Medicos M ON C.CRM = M.CRM AND C.UF = M.UF
JOIN Pacientes P ON C.CPF_paciente = P.CPF_paciente;

# 5 - Listar o nome dos pacientes e quantas consultas cada um fez.
SHOW TABLES FROM Hospital_1;
DESC Pacientes;
DESC Consultas;

SELECT P.nome, COUNT(*) AS consultas
FROM Consultas C

RIGHT JOIN Pacientes P ON P.CPF_paciente = C.CPF_paciente
GROUP BY P.nome;

# 6 - Mostrar as especialidades de médicos que fizeram consultas em 2024.
DESC Medicos;
DESC Departamentos;

SELECT DISTINCT D.nome_especialidade
FROM Departamentos D

JOIN Medicos M ON D.cod_especialidade = M.Departamentos_cod_especialidade
JOIN Consultas C ON M.CRM = C.CRM AND M.UF = C.UF

WHERE YEAR(C.data_consulta) = 2024;

# 7 - Listar todos os departamentos, ordenados pelo nome da especialidade de A a Z.
SELECT nome_especialidade
FROM Departamentos 
ORDER BY nome_especialidade;

# 8 - Mostrar os nomes e e-mails dos médicos que não têm telefone cadastrado.
SELECT nome, email
FROM Medicos
WHERE telefone IS NULL; -- OR TELEFONE = ' ';

# 9 - Exibir os nomes dos pacientes que têm consultas com médicos do departamento de Cardiologia.
SELECT DISTINCT p.nome
FROM Pacientes p

JOIN Consultas c ON p.CPF_paciente = c.CPF_paciente
JOIN Medicos m ON m.CRM = c.CRM AND m.UF = c.UF
JOIN Departamentos d ON m.Departamentos_cod_especialidade = d.cod_especialidade

WHERE d.nome_especialidade = 'CARDIOLOGIA';

# 10 - Para cada especialidade, mostrar o nome da especialidade e a média de consultas realizadas pelos médicos dessa especialidade.
SELECT especialidade, ROUND(AVG(QUANT),2) AS média
FROM (
		SELECT d.nome_especialidade, COUNT(id_consulta) AS QUANT 
        FROM Consultas c
        JOIN Medicos m ON c.CRM = m.CRM AND c.UF = m.UF
        JOIN Departamentos d ON d.cod_especialidade = m.Departamentos_cod_especialidade
        GROUP BY d.nome_especialidade)
GROUP BY especialidade;

# 11 - Contar quantos pacientes têm um telefone cadastrado.
SELECT COUNT(*)
FROM Pacientes
WHERE telefone IS NOT NULL;

# 12 - Listar os nomes dos médicos que fizeram mais de 10 consultas.
SELECT M.nome
FROM Medicos M

JOIN Consultas C ON M.CRM = C.CRM AND M.UF = C.UF
GROUP BY M.nome
HAVING COUNT(C.id_consulta) > 10;
