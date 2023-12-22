-- Inserir dados na tabela locacoes
INSERT INTO locacoes (id_carro, id_cliente, data_locacao, data_devolucao, quilometragem_inicial, quilometragem_final, local_locacao, local_devolucao)
VALUES
    (1, 1, '2023-01-01 08:00:00', '2023-01-03 10:00:00', 5000, 5300, 'Aeroporto', 'Centro'),
    (3, 2, '2023-01-05 10:30:00', NULL, 6000, NULL, 'Centro', NULL),
    (5, 3, '2023-01-08 09:15:00', '2023-01-10 12:45:00', 5500, 5800, 'Shopping', 'Aeroporto'),
    (2, 4, '2023-01-12 11:00:00', NULL, 7000, NULL, 'Centro', NULL);

-- Inserir dados na tabela historico_clientes_carro
INSERT INTO historico_clientes_carro (id_carro, id_cliente, data_locacao, data_devolucao, quilometragem_inicial, quilometragem_final, local_locacao, local_devolucao, valor_pago)
VALUES
    (1, 1, '2023-01-01 08:00:00', '2023-01-03 10:00:00', 5000, 5300, 'Aeroporto', 'Centro', 250.00),
    (3, 2, '2023-01-05 10:30:00', NULL, 6000, NULL, 'Centro', NULL, 180.00),
    (5, 3, '2023-01-08 09:15:00', '2023-01-10 12:45:00', 5500, 5800, 'Shopping', 'Aeroporto', 200.00),
    (2, 4, '2023-01-12 11:00:00', NULL, 7000, NULL, 'Centro', NULL, 300.00);
