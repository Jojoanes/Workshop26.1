-- cliente
SELECT id_cliente, COUNT(*) AS total_alugueis FROM aluguel GROUP BY id_cliente;
SELECT AVG(idade) AS media_idade_clientes FROM cliente;

-- funcionario
SELECT cargo, COUNT(*) AS qtd_funcionarios FROM funcionario GROUP BY cargo;
SELECT cargo, SUM(salario) AS folha_pagamento_por_cargo FROM funcionario GROUP BY cargo;

-- carro
SELECT status, COUNT(*) AS total_veiculos FROM carro GROUP BY status;
SELECT marca, AVG(valor_da_diaria) AS media_diaria_por_marca FROM carro GROUP BY marca;

-- aluguel
SELECT status, COUNT(*) AS total_contratos FROM aluguel GROUP BY status;
SELECT id_placa, MAX(valor_total) AS maior_aluguel_por_carro FROM aluguel GROUP BY id_placa;

-- pagamento
SELECT metodo_pagamento, SUM(valor_pago) AS total_por_metodo FROM pagamento GROUP BY metodo_pagamento;
SELECT status_pagamento, COUNT(*) AS qtd_pagamentos FROM pagamento GROUP BY status_pagamento;

-- manutencao
SELECT id_placa, SUM(custo_manutencao) AS gasto_total_manutencao FROM manutencao GROUP BY id_placa;
SELECT status_manutencao, AVG(custo_manutencao) AS custo_medio_por_status FROM manutencao GROUP BY status_manutencao;


-- JOINS
SELECT c.nome AS nome_cliente, v.modelo, a.data_de_entrada, a.valor_total
FROM aluguel a
INNER JOIN cliente c ON a.id_cliente = c.id_cliente
INNER JOIN carro v ON a.id_placa = v.placa
WHERE a.status = 'ativo';

SELECT f.nome AS responsavel_manutencao, v.modelo, v.placa, m.descricao_servico, m.custo_manutencao
FROM manutencao m
INNER JOIN funcionario f ON m.id_funcionario = f.id_funcionario
INNER JOIN carro v ON m.id_placa = v.placa;

SELECT c.nome, p.valor_pago, p.metodo_pagamento, p.data_pagamento
FROM pagamento p
INNER JOIN aluguel a ON p.id_aluguel = a.id_aluguel
INNER JOIN cliente c ON a.id_cliente = c.id_cliente;