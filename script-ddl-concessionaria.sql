CREATE DATABASE concessionaria;
USE concessionaria;

CREATE TABLE clientes (
	id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    email VARCHAR (255) UNIQUE,
    telefone VARCHAR (20),
    cpf VARCHAR (14) UNIQUE
);

CREATE TABLE carros (
	id_carro INT AUTO_INCREMENT PRIMARY KEY,
    modelo VARCHAR(255) UNIQUE,
    ano INT NOT NULL,
    cor VARCHAR(50)
);

ALTER TABLE carros ADD COLUMN preco DECIMAL(10, 2);

CREATE TABLE acessorios (
	id_acessorio INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(64) UNIQUE,
    preco DECIMAL(10, 2)
);

CREATE TABLE carro_acessorio (
    id_carro INT,
    id_acessorio INT,
    PRIMARY KEY (id_carro, id_acessorio),
    FOREIGN KEY (id_carro) REFERENCES carros(id_carro),
    FOREIGN KEY (id_acessorio) REFERENCES acessorios(id_acessorio)
);

CREATE TABLE cnh (
    id_cnh INT AUTO_INCREMENT PRIMARY KEY,
    numero_registro VARCHAR(20) UNIQUE NOT NULL,
    categoria VARCHAR(5) NOT NULL,
    id_cliente INT UNIQUE,
    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente)
);

