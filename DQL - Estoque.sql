# Exercícios Aprendizagem - BDEX4_ESTOQUE

-- 1. Quais são os nomes e preços de todos os produtos cadastrados?
SELECT nome, preco
FROM Produtos;
 
-- 2. Quantos produtos diferentes cada fornecedor fornece? 
SELECT COUNT(*), ID_FORNECEDOR
FROM PRODUTOS P

JOIN Fornecedores F ON P.ID_PRODUTO = F.ID_FORNECEDOR

-- 3. Qual é o número total de produtos em estoque?
