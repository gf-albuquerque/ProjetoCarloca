
# Projeto CARLOCA

## Requisitos funcionais do projeto

* Um carro possui modelo, montadora, cor e versão.
* As cores de carro disponíveis são apenas branco, preto e prata.
* Existem várias categorias de veiculos (hatch, sedam compacto, sedam médio, SUV, etc...) 
* Um cliente pode alugar um carro somente na modalidade "diária". 
* Um cliente não pode alugar mais de um carro.
* Enquanto um carro estiver locado por um cliente não pode ser ofertado para outro.
* O sistema deve manter o histórico dos clientes que locaram determinado carro.
* O sistema deve manter o histórico de quantos quilômetros o cliente rodou com o carro bem como a quilometragem atual de cada um dos carros.
* Existem várias unidades da franquia CARLOCA o sistema deve saber onde o carro foi locado e onde foi devolvido cada veículo.

<hr>

## Como Iniciar

* Executar o script CRIACAO_BANCO_CARLOCA.sql dentro do MySql
* Após, executar o script INSERT_VALORES_CARROS_CLIENTES.sql para inserção de valores dentro das tabelas carros e clientes.
* Após, executar o script INSERT_VALORES_LOCACOES_HISTORICO.sql para inserção de valores dentro das tabelas locacoes e historico_clientes_carro.
* O script INSERT_VALORES_LOCACOES_HISTORICO.sql pode ser usado de modelo para inserção personalizada a partir dos dados de clientes e carros.
* Por ultimo pode ser executado os selects do script SELECTS_CARLOCA.sql para algumas verificações no banco.

<hr>

## Modelo ER

<img src = "DER-CARLOCA.png" alt="My Happy SVG"/>
<hr>
