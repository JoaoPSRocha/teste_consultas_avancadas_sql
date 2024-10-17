USE restaurante;
/*SEGUNDO PASSO DA ATIVIDADE
CREATE VIEW resumo_pedido AS
SELECT p.id_pedido, p.quantidade, p.data_pedido,
c.nome AS nome_cliente, c.email AS email_cliente,
f.nome AS nome_funcionarios,
prod.nome AS nome_produto, prod.preco AS preco_produto
FROM pedidos p
INNER JOIN cliente c ON p.id_cliente = c.id_cliente
INNER JOIN funcionarios f ON  p.id_funcionario = f.id_funcionario
INNER JOIN produtos prod ON prod.id_produto = p.id_cliente
*/
/*TERCEIRA PASSO DA ATIVIDADE
SELECT id_pedido,nome_cliente, (preco_produto*quantidade) AS total_gasto FROM resumo_pedido
*/
/* QUARTO PASSO DA ATIVIDADE
CREATE OR REPLACE VIEW resumo_pedido AS
SELECT p.id_pedido, p.quantidade, p.data_pedido,
c.nome AS nome_cliente, c.email AS email_cliente,
f.nome AS nome_funcionarios,
prod.nome AS nome_produto, prod.preco AS preco_produto,
(prod.preco * p.quantidade) AS total_gasto
FROM pedidos p
INNER JOIN cliente c ON p.id_cliente = c.id_cliente
INNER JOIN funcionarios f ON  p.id_funcionario = f.id_funcionario
INNER JOIN produtos prod ON prod.id_produto = p.id_cliente
*/
/*QUINTO PASSO DA ATIVIDADE
SELECT id_pedido,nome_cliente, total_gasto FROM resumo_pedido
*/
/* SEXTO PASSO DA ATIVIDADE 
EXPLAIN
SELECT id_pedido,nome_cliente, total_gasto FROM resumo_pedido
*/
/* SETIMO PASSO DA ATIVIDADE
DELIMITER //

CREATE FUNCTION BuscaIngredientesProduto (produto_id INT)
RETURNS TEXT
READS SQL DATA
BEGIN 
	DECLARE ingredientes_produto_selecionado TEXT;
    SELECT ingredientes INTO ingredientes_produto_selecionado
    FROM info_produtos
    WHERE id_produto = produto_id;
	
    RETURN ingredientes_produto_selecionado;
END //
DELIMITER ; 
*/
/* OITVO PASSO DA ATIVIDADE
SELECT BuscaIngredientesProduto(10)
*/
/* NONO PASSO DA ATIVIDADE

DELIMITER //
CREATE FUNCTION mediapedido (pedido_id INT)
RETURNS varchar(255)
READS SQL DATA 
BEGIN
	DECLARE total_pedido DECIMAL(10,2);
    DECLARE media_total DECIMAL (10,2);
    DECLARE mensagem VARCHAR(255);
    
    SELECT (prod.preco*p.quantidade) INTO total_pedido
    FROM pedidos p
    INNER JOIN produtos prod ON prod.id_produto = p.id_produto
    WHERE p.id_produto = pedido_id;
    
    SELECT AVG(p.quantidade*prod.preco) INTO media_total
    FROM pedidos p
    INNER JOIN produtos prod ON prod.id_produto = p.id_produto;
    
	SET mensagem = CASE 
		WHEN  total_pedido > media_total THEN 'O total do pedido é acima da média'
		WHEN total_pedido < media_total THEN 'O total do pedido é abaixo da média'
		ELSE 'o total do pedido é igual a média'
	END;
RETURN mensagem;
END // 
DEMILITER ;*/
/*DECIMO PASSO DA ATIVIDADE
SELECT  mediapedido(10)
*/

