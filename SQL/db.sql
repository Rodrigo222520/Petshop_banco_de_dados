CREATE DATABASE petshop_db;
USE petshop_db;

CREATE TABLE atendente(
    id_atendente INT AUTO_INCREMENT primary key,
    cpf VARCHAR(12) NOT NULL UNIQUE,
    telefone VARCHAR (9) NOT NULL,
    nome VARCHAR (100) NOT NULL,
    email VARCHAR (100) NOT NULL

);

CREATE TABLE pet(
    id_pet INT AUTO_INCREMENT primary key,
    nome VARCHAR (100) NOT NULL,
    porte VARCHAR (100) NOT NULL,
    especie VARCHAR (100) NOT NULL,
    nascimento DATE NOT NULL,
    id_atendente int,
    id_agendamento int,
    FOREIGN KEY CONSTRAINT (id_atendente) REFERENCES antendente(id),
    FOREIGN KEY CONSTRAINT (id_agendamento) REFERENCES agendamento(id)

);

CREATE TABLE agendamento(
    id_agendamento INT AUTO_INCREMENT primary key,
    data_hora DATE NOT NULL,
    status VARCHAR(100),
    observacoes VARCHAR(100),
    id_servico int,
    FOREIGN KEY CONSTRAINT (id_servico) REFERENCES servico(id)

);

CREATE TABLE servico(
    id_servico INT AUTO_INCREMENT primary key,
    nome VARCHAR (100) NOT NULL,
    preco DECIMAL NOT NULL,
    duracao_min VARCHAR(100),
    id_pet int,
    FOREIGN KEY CONSTRAINT (id_pet) REFERENCES pet(id)
    
);

INSERT INTO pet ('nome', 'especie', 'porte', 'nascimento') VALUES
('tobby', 'pastor alemão', 'medio', '10/07/2012'),
('touro', 'pitbull', 'grande','11/08/2014'),
('nico', 'Rottweiler', 'grande', '15/03/2017');

INSERT INTO atendente ('nome', 'cpf', 'telefone', 'email') VALUES
('Rodrigo', '111111111111', '111111111', 'rodrigo@gmail.com'),
('Lukas', '111111111111', '111111111','lukas@gmail.com'),
('Guilherme', '111111111111', '111111111', 'guilherme@gmail.com');


