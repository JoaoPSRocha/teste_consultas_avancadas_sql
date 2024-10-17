USE restaurante;
/* select * FROM pedidos WHERE id_funcionario  = 4 AND situacao = 'pendente' */
/* SELECT * FROM pedidos WHERE NOT situacao = 'concluido' */
/* SELECT * FROM pedidos WHERE  id_produto IN (1,3,5,7,8) */
/* SELECT * FROM cliente WHERE nome LIKE 'C%' */
/*SELECT * FROM produtos WHERE descricao LIKE '%Frango%' OR descricao LIKE '%CARNE%*/
/* SELECT * FROM produtos WHERE preco between 20 AND 30*/
/*SELECT id_pedido, id_cliente, NULLIF(id_pedido, 6) as id_pedido_tratado FROM pedidos where id_pedido = 6*/
/* SELECT * FROM pedidos WHERE situacao IS NULL*/
/* SELECT id_pedido, situacao,IFNULL( situacao, 'Cancelado') FROM pedidos*/
/*SELECT nome,cargo,salario,  IF(salario > 3000, 'acima da media', 'abaixo da media')AS media_salario FROM funcionarios*/
