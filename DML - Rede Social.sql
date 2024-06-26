USE Rede_Social_3;

# INSERTS

INSERT INTO USUARIOS (ID_USUARIO, NOME, SOBRENOME, EMAIL) VALUES
(1, 'Alice', 'Silva', 'alice@example.com'),
(2, 'Bruno', 'Santos', 'bruno@example.com'),
(3, 'Carolina', 'Oliveira', 'carolina@example.com'),
(4, 'Daniel', 'Martins', 'daniel@example.com'),
(5, 'Eduarda', 'Pereira', 'eduarda@example.com'),
(6, 'Fábio', 'Almeida', 'fabio@example.com'),
(7, 'Gabriela', 'Rodrigues', 'gabriela@example.com'),
(8, 'Henrique', 'Fernandes', 'henrique@example.com'),
(9, 'Isabela', 'Costa', 'isabela@example.com'),
(10, 'Jorge', 'Mendes', 'jorge@example.com'),
(11, 'Karina', 'Nunes', 'karina@example.com'),
(12, 'Lucas', 'Gomes', 'lucas@example.com'),
(13, 'Mariana', 'Lima', 'mariana@example.com'),
(14, 'Nathalia', 'Ribeiro', 'nathalia@example.com'),
(15, 'Otávio', 'Campos', 'otavio@example.com'),
(16, 'Patrícia', 'Ferreira', 'patricia@example.com'),
(17, 'Rafael', 'Dias', 'rafael@example.com'),
(18, 'Sofia', 'Araújo', 'sofia@example.com'),
(19, 'Thiago', 'Barbosa', 'thiago@example.com'),
(20, 'Vanessa', 'Carvalho', 'vanessa@example.com');

INSERT INTO GRUPOS (ID_GRUPO, NOME, DESCRICAO) VALUES
(1, 'Música', 'Compartilhamento de músicas e discussões'),
(2, 'Esportes', 'Discussões e informações sobre esportes'),
(3, 'Cinema', 'Filmes e discussões sobre cinema'),
(4, 'Moda', 'Tendências de moda e estilo'),
(5, 'Tecnologia', 'Novidades e discussões sobre tecnologia'),
(6, 'Política', 'Discussões sobre política e atualidades'),
(7, 'Animais de Estimação', 'Dicas e cuidados com animais de estimação'),
(8, 'Culinária', 'Receitas e dicas de culinária'),
(9, 'Arte', 'Compartilhamento de obras de arte e discussões'),
(10, 'Viagens', 'Dicas e experiências de viagens'),
(11, 'Literatura', 'Livros e discussões literárias'),
(12, 'Saúde e Bem-estar', 'Dicas e informações sobre saúde e bem-estar'),
(13, 'Negócios', 'Discussões sobre empreendedorismo e negócios'),
(14, 'Beleza', 'Dicas de beleza e cuidados com a pele'),
(15, 'Fotografia', 'Compartilhamento de fotos e dicas'),
(16, 'Jogos', 'Discussões sobre jogos e videogames'),
(17, 'Educação', 'Troca de conhecimentos e experiências educacionais'),
(18, 'Design', 'Design gráfico e discussões relacionadas'),
(19, 'História', 'Discussões sobre história e eventos históricos'),
(20, 'Família', 'Dicas e apoio para questões familiares');

INSERT INTO POSTAGENS (ID_POST, TEXTO, IMAGEM, DATA_HORA, USUARIO) VALUES
(1, 'Que dia lindo!', NULL, '2024-05-13 10:00:00', 1),
(2, 'Novo livro chegou hoje!', NULL, '2024-05-13 12:30:00', 2),
(3, 'Hora de malhar!', NULL, '2024-05-12 15:45:00', 3),
(4, 'Adoro essa música!', NULL, '2024-05-12 18:00:00', 4),
(5, 'Grande jogo hoje!', NULL, '2024-05-11 20:00:00', 5),
(6, 'Filme incrível!', NULL, '2024-05-10 22:30:00', 6),
(7, 'Nova tendência!', NULL, '2024-05-10 08:45:00', 7),
(8, 'Novo gadget!', NULL, '2024-05-09 11:00:00', 8),
(9, 'Polêmica política!', NULL, '2024-05-08 14:20:00', 9),
(10, 'Receita deliciosa!', NULL, '2024-05-07 16:30:00', 10),
(11, 'Obra de arte!', NULL, '2024-05-06 18:45:00', 1),
(12, 'Experiência incrível!', NULL, '2024-05-05 20:00:00', 2),
(13, 'Dicas de beleza!', NULL, '2024-05-04 22:15:00', 3),
(14, 'Foto do dia!', NULL, '2024-05-03 10:30:00', 4),
(15, 'Novo jogo lançado!', NULL, '2024-05-02 12:45:00', 1),
(16, 'Aprendizado constante!', NULL, '2024-05-01 15:00:00', 2),
(17, 'Design inovador!', NULL, '2024-04-30 17:20:00', 3),
(18, 'Curiosidades históricas!', NULL, '2024-04-29 19:30:00', 4),
(19, 'Momento em família!', NULL, '2024-04-28 21:40:00', 1),
(20, 'Bem-estar em primeiro lugar!', NULL, '2024-04-27 23:50:00', 2);

INSERT INTO COMENTARIOS (ID_COMMENT, TEXTO, DATA_HORA, USUARIO, POST) VALUES
(1, 'Que foto incrível!', '2024-05-13 10:15:00', 2, 1),
(2, 'Adoro esse livro!', '2024-05-13 13:00:00', 1, 2),
(3, 'Bora lá!', '2024-05-12 16:00:00', 2, 3),
(4, 'Adorei essa música!', '2024-05-12 18:30:00', 3, 4),
(5, 'Foi emocionante!', '2024-05-11 21:00:00', 4, 5),
(6, 'Inesquecível!', '2024-05-10 23:30:00', 5, 6),
(7, 'Eu quero!', '2024-05-10 09:00:00', 6, 7),
(8, 'Preciso disso!', '2024-05-09 12:15:00', 7, 8),
(9, 'Vamos debater!', '2024-05-08 15:40:00', 8, 9),
(10, 'Quero a receita!', '2024-05-07 17:45:00', 9, 10),
(11, 'Inspirador!', '2024-05-06 19:00:00', 10, 11),
(12, 'Amei!', '2024-05-05 21:15:00', 11, 12),
(13, 'Excelentes dicas!', '2024-05-04 23:30:00', 12, 13),
(14, 'Que bela foto!', '2024-05-03 11:45:00', 13, 14),
(15, 'Vamos jogar juntos!', '2024-05-02 13:50:00', 14, 15),
(16, 'Compartilhando conhecimento!', '2024-05-01 16:00:00', 15, 16),
(17, 'Fantástico!', '2024-04-30 18:30:00', 16, 17),
(18, 'Interessante!', '2024-04-29 20:40:00', 17, 18),
(19, 'Momento especial!', '2024-04-28 22:50:00', 18, 19),
(20, 'Concordo!', '2024-04-27 23:59:00', 19, 20);

INSERT INTO SEGUIDORES_USUARIOS (USUARIO, SEGUIDOR) VALUES
(1, 3),
(1, 4),
(1, 5),
(2, 6),
(2, 7),
(2, 8),
(3, 9),
(3, 10),
(3, 11),
(4, 12),
(4, 13),
(4, 14),
(5, 15),
(5, 16),
(5, 17),
(6, 18),
(6, 19),
(6, 20),
(7, 1),
(7, 2),
(8, 3),
(8, 4);

INSERT INTO USUARIOS_GRUPOS (SEGUIDOR, GRUPO) VALUES
(1, 1),
(1, 2),
(2, 3),
(2, 4),
(3, 5),
(3, 6),
(4, 7),
(4, 8),
(5, 9),
(5, 10),
(6, 11),
(6, 12),
(7, 13),
(7, 14),
(8, 15),
(8, 16),
(9, 17),
(9, 18),
(10, 19),
(10, 20),
(11, 1),
(11, 2),
(12, 3),
(12, 4),
(13, 5),
(13, 6),
(14, 7),
(14, 8),
(15, 9),
(15, 10),
(16, 11),
(16, 12),
(17, 13),
(17, 14),
(18, 15),
(18, 16),
(19, 17),
(19, 18),
(20, 19),
(20, 20);

# DELETES

-- Excluir a associação do usuário 2 ao grupo 3
DELETE FROM USUARIOS_GRUPOS
WHERE SEGUIDOR = 2 AND GRUPO = 3;

-- Excluir todas as associações de usuários ao grupo 7
DELETE FROM USUARIOS_GRUPOS
WHERE GRUPO = 7;

-- Excluir a relação de seguidor entre os usuários 3 e 9
DELETE FROM SEGUIDORES_USUARIOS
WHERE USUARIO = 3 AND SEGUIDOR = 9;

-- Excluir todas as relações de seguidor do usuário com ID 6
DELETE FROM SEGUIDORES_USUARIOS
WHERE USUARIO = 6 OR SEGUIDOR = 6;

-- Excluir o comentário com ID 2
DELETE FROM COMENTARIOS
WHERE ID_COMMENT = 2;

-- Excluir todos os comentários feitos pelo usuário com ID 4
DELETE FROM COMENTARIOS
WHERE USUARIO = 4;

-- Excluir a postagem com ID 2
DELETE FROM POSTAGENS
WHERE ID_POST = 2;

-- Excluir todas as postagens do usuário com ID 3
DELETE FROM POSTAGENS
WHERE USUARIO = 3;

-- Excluir o grupo com ID 2
DELETE FROM GRUPOS
WHERE ID_GRUPO = 2;

-- Excluir todos os grupos com descrição contendo "Discussões"
DELETE FROM GRUPOS
WHERE DESCRICAO LIKE '%Discussões%';

-- Excluir usuário com ID 2
DELETE FROM USUARIOS
WHERE ID_USUARIO = 2;

-- Excluir todos os usuários com sobrenome "Pereira"
DELETE FROM USUARIOS
WHERE SOBRENOME = 'Pereira';

# UPDATES

-- Atualizar o email do usuário com ID 1
UPDATE USUARIOS
SET EMAIL = 'novo_email@example.com'
WHERE ID_USUARIO = 1;

-- Atualizar o sobrenome de todos os usuários com nome "Bruno"
UPDATE USUARIOS
SET SOBRENOME = 'Silveira'
WHERE NOME = 'Bruno';

-- Atualizar a descrição do grupo com ID 1
UPDATE GRUPOS
SET DESCRICAO = 'Compartilhamento de músicas, eventos e discussões'
WHERE ID_GRUPO = 1;

-- Atualizar o nome do grupo com descrição "Filmes e discussões sobre cinema"
UPDATE GRUPOS
SET NOME = 'Cinefilia'
WHERE DESCRICAO = 'Filmes e discussões sobre cinema';

-- Atualizar o texto da postagem com ID 1
UPDATE POSTAGENS
SET TEXTO = 'Que dia maravilhoso!'
WHERE ID_POST = 1;

-- Atualizar a data e hora de todas as postagens do usuário com ID 1
UPDATE POSTAGENS
SET DATA_HORA = '2024-05-13 11:00:00'
WHERE USUARIO = 1;

-- Atualizar o texto do comentário com ID 1
UPDATE COMENTARIOS
SET TEXTO = 'Que foto incrível, Alice!'
WHERE ID_COMMENT = 1;

-- Atualizar a data e hora de todos os comentários feitos por usuários do grupo com ID 5
UPDATE COMENTARIOS
SET DATA_HORA = '2024-05-13 14:00:00'
WHERE USUARIO IN (SELECT USUARIO FROM USUARIOS_GRUPOS WHERE GRUPO = 5);

-- Atualizar o ID do seguidor do usuário com ID 1
UPDATE SEGUIDORES_USUARIOS
SET SEGUIDOR = 10
WHERE USUARIO = 1;

-- Atualizar o ID do usuário seguido pelo usuário com ID 2
UPDATE SEGUIDORES_USUARIOS
SET USUARIO = 5
WHERE SEGUIDOR = 2;

-- Atualizar o ID do grupo para o usuário com ID 1
UPDATE USUARIOS_GRUPOS
SET GRUPO = 15
WHERE SEGUIDOR = 1;

-- Atualizar o ID do usuário para o grupo com ID 5
UPDATE USUARIOS_GRUPOS
SET SEGUIDOR = 4
WHERE GRUPO = 5;
