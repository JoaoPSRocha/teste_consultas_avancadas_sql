USE RESTAURANTE;
SELECT COUNT(id_pedido) AS total_pedidos FROM pedidos
SELECT COUNT(distinct id_cliente) AS total_cliente_unicos From Pedidos
SELECT AVG(preco) AS media_preco FROM produtos
SELECT MIN(preco) AS preco_minimo, MAX(preco) AS preco_maximo FROM produtos
SELECT nome, preco FROM produtos ORDER BY preco DESC LIMIT 5
SELECT categoria, AVG(PRECO) AS media_preco FROM produtos GROUP BY categoria
SELECT fornecedor, COUNT(id_produto) AS quantidade_produtos_fornecedor FROM info_produtos GROUP BY fornecedor
SELECT fornecedor, COUNT(id_produto) AS quantidade_produtos FROM info_produtos 
GROUP BY fornecedor HAVING COUNT(id_produto)> 1 
SELECT id_cliente, COUNT(id_pedido) AS quantidade_pedidos FROM pedidos
GROUP BY id_cliente HAVING COUNT(id_pedido) = 1
