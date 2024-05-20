USE REDESOCIAL;

# 1. Exibir todas as informações da tabela `USUARIOS`.

SELECT *
FROM USUARIOS;

# 2. Mostrar os nomes, sobrenomes e e-mails dos usuários.

SELECT NOME_USUARIO AS NOME, SOBRENOME, EMAIL
FROM USUARIOS;

# 3. Listar os nomes e descrições dos grupos.

SELECT NOME_GRUPO AS NOME, DESCRICAO
FROM GRUPOS;

# 4. Exibir os detalhes das postagens: ID da postagem, texto, data e hora, e o nome do usuário que postou.

SELECT P.ID_POST, P.TEXTO, P.DATA_HORA, U.NOME_USUARIO
FROM POSTAGENS P
JOIN USUARIOS U ON P.USUARIO = U.ID_USUARIO;

-- JOIN USUARIOS U ON POSTAGENS.USUARIO = USUARIO.ID_USUARIO; //

# 5. Listar o nome dos usuários e a quantidade de postagens que cada um fez.

SELECT U.NOME_USUARIO AS NOME, COUNT(P.ID_POST) AS QUANT_POSTAGENS
FROM USUARIOS U
LEFT JOIN POSTAGENS P ON U.ID_USUARIO = P.USUARIO
GROUP BY NOME_USUARIO;

# 6. Mostrar os nomes dos usuários que fizeram comentários em 2024.

SELECT DISTINCT NOME_USUARIO AS NOME
FROM USUARIOS
JOIN POSTAGENS ON USUARIOS.ID_USUARIO = POSTAGENS.USUARIO
WHERE YEAR (POSTAGENS.DATA_HORA) = 2024;

# 7. Listar todos os grupos, ordenados pelo nome do grupo de A a Z.

SELECT NOME_GRUPO AS NOME
FROM GRUPOS
ORDER BY NOME_GRUPO ASC;

# 8. Mostrar os nomes dos grupos que têm a palavra "Tecnologia" na descrição.

# 9. Exibir os detalhes dos comentários: ID do comentário, texto, data e hora, nome do usuário que comentou e ID da postagem comentada.

# 10. Para cada postagem, mostrar o ID da postagem e a quantidade de comentários.

# 11. Contar quantos seguidores cada usuário possui.

# 12. Listar os nomes dos usuários que pertencem ao grupo "Desenvolvimento".

# 13. Mostrar o nome dos usuários e a data e hora da última postagem que eles fizeram.

# 14. Contar quantas postagens cada usuário fez.

# 15. Para cada grupo, exibir o nome do grupo e a quantidade de usuários que pertencem a ele.