USE restaurante;
/* SELECT nome, categoria FROM produtos WHERE preco > 30 */
/*SELECT nome, telefone, data_nascimento FROM cliente WHERE YEAR (data_nascimento) < '1985' */
/* SELECT id_produto, descricao FROM produtos WHERE descricao LIKE "%carne%" */
/*SELECT nome, categoria FROM produtos
ORDER BY categoria ASC, nome ASC*/
/* SELECT * FROM produtos 
ORDER BY preco DESC 
LIMIT 5 */
/* SELECT * FROM produtos WHERE categoria =  'prato principal' 
LIMIT 2 OFFSET  6 */
CREATE TABLE backup_pedidos AS
SELECT * FROM pedidos