-- Inserir dados na tabela carros
INSERT INTO carros (modelo, placa, montadora, cor, versao, categoria, km_atual, valor_diaria)
VALUES
    ('Gol', 'ABC123', 'Volkswagen', 'branco', '1.0', 'Hatchback', 5000, 100.00),
    ('Civic', 'DEF456', 'Honda', 'prata', 'LX', 'Sedan', 8000, 150.00),
    ('Onix', 'GHI789', 'Chevrolet', 'preto', 'LT', 'Compacto', 6000, 120.00),
    ('Corolla', 'JKL012', 'Toyota', 'branco', 'XEi', 'Sedan', 7000, 160.00),
    ('Fiesta', 'MNO345', 'Ford', 'prata', 'SE', 'Hatchback', 5500, 110.00),
    ('Cruze', 'PQR678', 'Chevrolet', 'preto', 'Premier', 'Sedan', 7500, 170.00),
    ('Focus', 'STU901', 'Ford', 'prata', 'Titanium', 'Hatchback', 7200, 130.00),
    ('HB20', 'VWX234', 'Hyundai', 'branco', 'Comfort', 'Compacto', 5800, 115.00),
    ('C3', 'YZA567', 'Citroën', 'branco', 'Origine', 'Hatchback', 6100, 125.00),
    ('Sentra', 'BCD890', 'Nissan', 'prata', 'SL', 'Sedan', 6700, 155.00);

-- Inserir dados na tabela clientes
INSERT INTO clientes (nome, cpf)
VALUES
    ('João Silva', '123.456.789-01'),
    ('Maria Oliveira', '987.654.321-09'),
    ('Carlos Santos', '456.789.012-34'),
    ('Ana Pereira', '321.654.987-76'),
    ('Rafaela Souza', '111.222.333-44'),
    ('Felipe Lima', '555.666.777-88'),
    ('Mariana Costa', '999.888.777-66'),
    ('Rodrigo Almeida', '333.444.555-66'),
    ('Luciana Pereira', '777.888.999-00'),
    ('Pedro Santos', '444.555.666-77');
