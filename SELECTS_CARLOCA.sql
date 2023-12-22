-- Um carro possui modelo, montadora, cor e versão:
SELECT modelo, montadora, cor, versao FROM carros;

-- As cores de carro disponíveis são apenas branco, preto e prata:
SELECT DISTINCT cor FROM carros WHERE cor NOT IN ('branco', 'preto', 'prata');

-- Existem várias categorias de veículos (hatch, sedan compacto, sedan médio, SUV, etc...):
SELECT DISTINCT categoria FROM carros;

-- Um cliente pode alugar um carro somente na modalidade "diária":
SELECT * FROM locacoes WHERE DATE(data_locacao) = DATE(data_devolucao) AND data_devolucao IS NOT NULL;

-- Um cliente não pode alugar mais de um carro:
SELECT id_cliente, COUNT(id_carro) AS num_carros_alugados
FROM locacoes
WHERE data_devolucao IS NULL
GROUP BY id_cliente
HAVING num_carros_alugados > 1;

-- Enquanto um carro estiver locado por um cliente não pode ser ofertado para outro:
SELECT id_carro, COUNT(id_locacao) AS num_locacoes
FROM locacoes
WHERE data_devolucao IS NULL
GROUP BY id_carro
HAVING num_locacoes > 1;

-- O sistema deve manter o histórico dos clientes que locaram determinado carro:
SELECT *
FROM historico_clientes_carro
WHERE id_carro = (ID_DO_CARRO);

-- O sistema deve manter o histórico de quantos quilômetros o cliente rodou com o carro, bem como a quilometragem atual de cada um dos carros:
-- Histórico de quilometragem rodada por um cliente com um carro específico
SELECT quilometragem_final - quilometragem_inicial AS quilometragem_percorrida
FROM historico_clientes_carro
WHERE id_carro = (ID_DO_CARRO) and id_cliente = (ID_DO_CLIENTE);

-- Quilometragem atual de cada carro
SELECT id_carro, km_atual
FROM carros;

-- Existem várias unidades da franquia CARLOCA; o sistema deve saber onde o carro foi locado e onde foi devolvido cada veículo:
SELECT id_locacao, local_locacao, local_devolucao
FROM locacoes;