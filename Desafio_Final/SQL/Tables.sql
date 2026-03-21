CREATE DATABASE locadora_veiculos;
USE locadora_veiculos;

CREATE TABLE cliente (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cpf VARCHAR(14) NOT NULL UNIQUE,
    idade INT,
    endereco VARCHAR(255),
    email VARCHAR(100),
    telefone VARCHAR(20),
    data_de_cadastro DATE
);

CREATE TABLE funcionario (
    id_funcionario INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cpf VARCHAR(14) UNIQUE NOT NULL,
    cargo VARCHAR(50),
    data_contratacao DATE,
    telefone VARCHAR(20),
    email VARCHAR(100),
    salario DECIMAL(10,2)
);

CREATE TABLE carro (
    placa VARCHAR(10) PRIMARY KEY,
    modelo VARCHAR(50) NOT NULL,
    cor VARCHAR(20),
    ano_de_fabricacao INT,
    valor_da_diaria DECIMAL(10, 2),
    status VARCHAR(20),
    marca VARCHAR(30),
    combustivel VARCHAR(20)
);

CREATE TABLE aluguel (
    id_aluguel INT AUTO_INCREMENT PRIMARY KEY,
    id_placa VARCHAR(10),
    id_cliente INT,
    id_funcionario INT,
    status VARCHAR(20),
    data_de_entrada DATETIME,
    data_de_saida DATETIME,
    valor_total DECIMAL(10,2),
    CONSTRAINT fk_carro_aluguel FOREIGN KEY (id_placa) REFERENCES carro(placa),
    CONSTRAINT fk_cliente_aluguel FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente),
    CONSTRAINT fk_funcionario_aluguel FOREIGN KEY (id_funcionario) REFERENCES funcionario(id_funcionario)
);

CREATE TABLE pagamento (
    id_pagamento INT AUTO_INCREMENT PRIMARY KEY,
    id_aluguel INT NOT NULL,
    valor_pago DECIMAL(10,2) NOT NULL,
    data_pagamento DATETIME DEFAULT CURRENT_TIMESTAMP,
    metodo_pagamento VARCHAR(30),
    status_pagamento VARCHAR(20),
    numero_comprovante VARCHAR(50),
    observacoes TEXT,
    CONSTRAINT fk_pagamento_aluguel FOREIGN KEY (id_aluguel) REFERENCES aluguel(id_aluguel)
);

CREATE TABLE manutencao (
    id_manutencao INT AUTO_INCREMENT PRIMARY KEY,
    id_placa VARCHAR(10) NOT NULL,
    id_funcionario INT NOT NULL,
    descricao_servico TEXT NOT NULL,
    custo_manutencao DECIMAL(10,2),
    data_inicio DATE,
    data_fim DATE,
    status_manutencao VARCHAR(20),
    CONSTRAINT fk_manutencao_carro FOREIGN KEY (id_placa) REFERENCES carro(placa),
    CONSTRAINT fk_funcionario_responsavel FOREIGN KEY (id_funcionario) REFERENCES funcionario(id_funcionario)
);