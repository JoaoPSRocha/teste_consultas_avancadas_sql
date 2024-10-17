USE restaurante;
CREATE TABLE IF NOT EXISTS funcionarios(
id_funcionário INT PRIMARY KEY,
nome VARCHAR(255),
cpf VARCHAR(255) UNIQUE,
data_nascimento DATE,
endereco VARCHAR(255),
telefone VARCHAR(15),
email VARCHAR(100),
cargo VARCHAR(100),
salario DECIMAL(10,2),
data_admissao DATE
);
CREATE TABLE IF NOT EXISTS clients (
id_cliente INT PRIMARY KEY,
nome VARCHAR(255),
cpf VARCHAR(255) UNIQUE,
data_nascimento DATE,
endereco VARCHAR(255),
telefone VARCHAR(15),
email VARCHAR(100),
data_cadastro DATE
);
CREATE TABLE IF NOT EXISTS produtos (
id_produto INT PRIMARY KEY,
nome VARCHAR(255),
descricao TEXT,
preco DECIMAL(10,2),
categoria VARCHAR(100)
);
/*Alterando alguns nomes que estavam inequados nos codigos acima

ALTER TABLE funcionarios
CHANGE COLUMN id_funcionário id_funcionario INT;
RENAME TABLE clients TO cliente; */

CREATE TABLE IF NOT EXISTS pedidos (
id_pedido INT PRIMARY KEY,
id_cliente INT,
FOREIGN KEY (id_cliente) REFERENCES cliente (id_cliente),
id_funcionario INT,
FOREIGN KEY (id_funcionario) REFERENCES funcionarios(id_funcionario),
id_produto INT,
FOREIGN KEY (id_produto) REFERENCES produtos(id_produto),
quantidade INT,
preco DECIMAL (10,2),
data_pedido DATE,
situacao VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS info_produtos(
id_info INT PRIMARY KEY,
id_produto INT,
FOREIGN KEY (id_produto) REFERENCES produtos(id_produto),
ingredientes TEXT,
fornecedor VARCHAR (255)
);