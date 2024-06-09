# Exercícios Aprendizagem - BDEX3_REDESOCIAL

USE Rede_Social_3;

-- 1. Quais são os nomes e sobrenomes de todos os usuários cadastrados?
SELECT NOME, SOBRENOME
FROM USUARIOS;
 
-- 2. Quantos grupos existem na rede social? 
SELECT COUNT(*)
FROM GRUPOS;

-- 3. Qual é o número médio de comentários por postagem?
DESC COMENTARIOS;

SELECT ROUND(AVG(Comentario_p_Postagem),1) AS Média_Comentários
FROM (
		SELECT COUNT(*) AS Comentario_p_Postagem
        FROM COMENTARIOS
        GROUP BY POST
	) AS Base_Contagem;
