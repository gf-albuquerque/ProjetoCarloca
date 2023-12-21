-- Criação do Banco de Dados
CREATE DATABASE IF NOT EXISTS CARLOCA;
USE CARLOCA;

-- Tabela de Carros
CREATE TABLE IF NOT EXISTS carros (
    id_carro INT AUTO_INCREMENT PRIMARY KEY,
    modelo VARCHAR(255) NOT NULL,
    montadora VARCHAR(255) NOT NULL,
    cor ENUM('branco', 'preto', 'prata') NOT NULL,
    versao VARCHAR(255) NOT NULL,
    categoria VARCHAR(255) NOT NULL,
    km_atual INT NOT NULL,
    valor_diaria DECIMAL(10, 2) NOT NULL
);

-- Tabela de Clientes
CREATE TABLE IF NOT EXISTS clientes (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    cpf VARCHAR(14) UNIQUE NOT NULL
);

-- Tabela de Locações
CREATE TABLE IF NOT EXISTS locacoes (
    id_locacao INT AUTO_INCREMENT PRIMARY KEY,
    id_carro INT,
    id_cliente INT,
    data_locacao DATETIME NOT NULL,
    data_devolucao DATETIME,
    quilometragem_inicial INT,
    quilometragem_final INT,
    local_locacao VARCHAR(255),
    local_devolucao VARCHAR(255),
    CONSTRAINT fk_carro_locacao FOREIGN KEY (id_carro) REFERENCES carros(id_carro),
    CONSTRAINT fk_cliente_locacao FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente),
    UNIQUE KEY uk_cliente_locacao (id_cliente),
    UNIQUE KEY uk_carro_locado (id_carro)
);

-- Tabela de Histórico de Clientes por Carro
CREATE TABLE IF NOT EXISTS historico_clientes_carro (
    id_historico INT AUTO_INCREMENT PRIMARY KEY,
    id_carro INT,
    id_cliente INT,
    data_locacao DATETIME NOT NULL,
    data_devolucao DATETIME,
    quilometragem_inicial INT,
    quilometragem_final INT,
    local_locacao VARCHAR(255),
    local_devolucao VARCHAR(255),
    valor_pago DECIMAL(10, 2) NOT NULL,
    CONSTRAINT fk_carro_historico_cliente FOREIGN KEY (id_carro) REFERENCES carros(id_carro),
    CONSTRAINT fk_cliente_historico_cliente FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente)
);
