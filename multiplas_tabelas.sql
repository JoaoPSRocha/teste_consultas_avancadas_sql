USE restaurante;
/*SEGUNDO PASSO DA ATIVIDADE
SELECT p.id_produto, p.nome, p.descricao,ip.ingredientes
FROM produtos p
INNER JOIN info_produtos ip
ON p.id_produto = ip.id_produto*/
/*TERCEIRO PASSO DA ATIVIDADE
SELECT p.id_pedido, p.quantidade, p.data_pedido, c.nome, c.email
FROM  pedidos p
INNER JOIN cliente c ON c.id_cliente = p.id_cliente*/
/*QUARTO PASSO DA ATIVIDADE
SELECT p.id_pedido, p.quantidade, p.data_pedido, c.nome, c.email, f.nome AS Nome_Funcionario
FROM pedidos p
INNER JOIN cliente c ON c.id_cliente = p.id_cliente
INNER JOIN funcionarios f ON f.id_funcionario = p.id_funcionario*/
/*QUINTO PASSO DA ATIVIDADE
SELECT p.id_pedido, p.quantidade, p.data_pedido, 
c.nome, c.email, 
f.nome AS Nome_Funcionario, 
prod.nome AS Nome_produto, prod.preco
FROM pedidos p
INNER JOIN cliente c ON c.id_cliente = p.id_cliente
INNER JOIN funcionarios f ON f.id_funcionario = p.id_funcionario
INNER JOIN produtos prod ON p.id_produto = prod.id_produto*/
/* SEXTO PASSO DA ATIVIDADE
SELECT c.id_cliente, c.nome FROM cliente c
INNER JOIN pedidos p ON P.id_cliente = c.id_cliente WHERE p.situacao = "Pendente"
ORDER BY c.id_cliente DESC*/
/* SETIMO PASSO DA ATIVIDADE
SELECT c.nome FROM cliente c
LEFT JOIN pedidos p ON c.id_cliente = p.id_cliente 
WHERE p.id_cliente IS NULL*/
/*OITAVO PASSO DA ATIVIDADE
SELECT c.nome, COUNT(p.id_cliente) AS Quantidade_Pedidos
FROM cliente c
INNER JOIN pedidos P ON c.id_cliente = p.id_cliente
GROUP BY c.id_cliente*/
/* NONO PASSO DA ATIVIDADE
SELECT p.id_pedido, (p.quantidade*prod.preco) AS preco_total 
FROM pedidos p 
INNER JOIN produtos prod ON p.id_produto = prod.id_produto*/

