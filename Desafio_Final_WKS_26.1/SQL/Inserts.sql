INSERT INTO cliente (nome, cpf, idade, endereco, email, telefone, data_de_cadastro) VALUES
('Ricardo Pontes', '111.222.333-44', 28, 'Rua Manoel Deodato, Torre', 'ricardo.p@email.com', '(83) 98888-0001', '2026-01-10'),
('Amanda Silva', '222.333.444-55', 34, 'Av. Olinda, Tambaú', 'amanda.s@email.com', '(83) 98888-0002', '2026-01-12'),
('Bruno Medeiros', '333.444.555-66', 45, 'Rua Bananeiras, Mangabeira', 'bruno.m@email.com', '(83) 98888-0003', '2026-01-15'),
('Carla Souza', '444.555.666-77', 22, 'Av. Maranhão, Bairro dos Estados', 'carla.s@email.com', '(83) 98888-0004', '2026-02-01'),
('Daniel Costa', '555.666.777-88', 31, 'Rua das Flores, Manaíra', 'daniel.c@email.com', '(83) 98888-0005', '2026-02-05'),
('Eduarda Lima', '666.777.888-99', 27, 'Rua Poeta Luiz Raimundo, Bancários', 'eduarda.l@email.com', '(83) 98888-0006', '2026-02-10'),
('Felipe Neves', '777.888.999-00', 38, 'Av. João Maurício, Manaíra', 'felipe.n@email.com', '(83) 98888-0007', '2026-02-15'),
('Gisele Rocha', '888.999.000-11', 29, 'Rua José Simões, Altiplano', 'gisele.r@email.com', '(83) 98888-0008', '2026-02-20'),
('Hugo Cabral', '999.000.111-22', 50, 'Rua Major Célio, Jaguaribe', 'hugo.c@email.com', '(83) 98888-0009', '2026-03-01'),
('Iara Martins', '000.111.222-33', 24, 'Av. Esperança, Manaíra', 'iara.m@email.com', '(83) 98888-0010', '2026-03-05'),
('Júlio César', '121.232.343-45', 33, 'Rua Walfredo Macedo, Jardim Cidade Universitária', 'julio.c@email.com', '(83) 98888-0011', '2026-03-10'),
('Kátia Abreu', '232.343.454-56', 41, 'Rua Mirian Barreto, Valentina', 'katia.a@email.com', '(83) 98888-0012', '2026-03-15');

INSERT INTO funcionario (nome, cpf, cargo, data_contratacao, telefone, email, salario) VALUES
('Marcos Viana', '101.202.303-40', 'Gerente', '2025-01-01', '(83) 97777-1001', 'marcos.gerencia@velozcar.com', 4500.00),
('Patrícia Gomes', '202.303.404-50', 'Vendedor', '2025-03-15', '(83) 97777-1002', 'patricia.vendas@velozcar.com', 2800.00),
('Sérgio Reis', '303.404.505-60', 'Vendedor', '2025-05-20', '(83) 97777-1003', 'sergio.vendas@velozcar.com', 2800.00),
('Lúcia Maria', '404.505.606-70', 'Atendente', '2025-06-10', '(83) 97777-1004', 'lucia.atendimento@velozcar.com', 2200.00),
('Roberto Carlos', '505.606.707-80', 'Mecânico', '2025-07-01', '(83) 97777-1005', 'roberto.oficina@velozcar.com', 3200.00),
('Ana Paula', '606.707.808-90', 'Vendedor', '2025-08-12', '(83) 97777-1006', 'ana.vendas@velozcar.com', 2800.00),
('Tiago Silva', '707.808.909-00', 'Mecânico', '2025-09-05', '(83) 97777-1007', 'tiago.oficina@velozcar.com', 3200.00),
('Beatriz Costa', '808.909.010-10', 'Atendente', '2025-10-10', '(83) 97777-1008', 'beatriz.atendimento@velozcar.com', 2200.00),
('Fernando Mendes', '909.010.111-20', 'Supervisor', '2025-11-25', '(83) 97777-1009', 'fernando.sup@velozcar.com', 3800.00),
('Sofia Ramos', '010.111.212-30', 'Vendedor', '2025-12-01', '(83) 97777-1010', 'sofia.vendas@velozcar.com', 2800.00),
('Gabriel Souza', '111.222.333-40', 'Vendedor', '2026-01-05', '(83) 97777-1011', 'gabriel.vendas@velozcar.com', 2800.00),
('Helena Lima', '222.333.444-50', 'Atendente', '2026-02-01', '(83) 97777-1012', 'helena.atendimento@velozcar.com', 2200.00);

INSERT INTO carro (placa, modelo, cor, ano_de_fabricacao, valor_da_diaria, status, marca, combustivel) VALUES
('ABC-1234', 'Onix', 'Branco', 2023, 120.00, 'disponível', 'Chevrolet', 'Flex'),
('XYZ-5678', 'HB20', 'Preto', 2024, 130.00, 'disponível', 'Hyundai', 'Flex'),
('KJH-9012', 'Corolla', 'Prata', 2024, 250.00, 'alugado', 'Toyota', 'Híbrido'),
('LMN-3456', 'Compass', 'Azul', 2023, 350.00, 'alugado', 'Jeep', 'Diesel'),
('OPQ-7890', 'Mobi', 'Vermelho', 2022, 90.00, 'em manutenção', 'Fiat', 'Flex'),
('RST-1122', 'Kwid', 'Branco', 2023, 95.00, 'disponível', 'Renault', 'Flex'),
('UVW-3344', 'Civic', 'Cinza', 2024, 280.00, 'alugado', 'Honda', 'Flex'),
('WXY-5566', 'T-Cross', 'Bege', 2023, 190.00, 'disponível', 'Volkswagen', 'Flex'),
('ZZA-7788', 'Argo', 'Preto', 2022, 115.00, 'disponível', 'Fiat', 'Flex'),
('BCC-9900', 'Renegade', 'Verde', 2023, 220.00, 'disponível', 'Jeep', 'Flex'),
('DDF-1313', 'Hilux', 'Branco', 2024, 500.00, 'em manutenção', 'Toyota', 'Diesel'),
('EEF-2424', 'Creta', 'Prata', 2023, 200.00, 'disponível', 'Hyundai', 'Flex');


INSERT INTO aluguel (id_placa, id_cliente, id_funcionario, status, data_de_entrada, data_de_saida, valor_total) VALUES
('ABC-1234', 1, 2, 'finalizado', '2026-02-01 09:00:00', '2026-02-05 09:00:00', 480.00),
('XYZ-5678', 2, 3, 'finalizado', '2026-02-10 10:00:00', '2026-02-12 10:00:00', 260.00),
('KJH-9012', 3, 6, 'ativo', '2026-03-18 14:00:00', '2026-03-25 14:00:00', 1750.00),
('LMN-3456', 4, 10, 'ativo', '2026-03-20 08:30:00', '2026-03-27 08:30:00', 2450.00),
('UVW-3344', 5, 2, 'ativo', '2026-03-21 11:00:00', '2026-03-28 11:00:00', 1960.00),
('RST-1122', 6, 3, 'finalizado', '2026-02-15 09:00:00', '2026-02-18 09:00:00', 285.00),
('WXY-5566', 7, 11, 'finalizado', '2026-03-01 10:00:00', '2026-03-05 10:00:00', 760.00),
('ZZA-7788', 8, 6, 'finalizado', '2026-03-05 08:00:00', '2026-03-07 08:00:00', 230.00),
('BCC-9900', 9, 2, 'finalizado', '2026-03-10 15:00:00', '2026-03-15 15:00:00', 1100.00),
('EEF-2424', 10, 3, 'finalizado', '2026-03-12 09:00:00', '2026-03-14 09:00:00', 400.00),
('ABC-1234', 11, 10, 'finalizado', '2026-03-15 10:00:00', '2026-03-17 10:00:00', 240.00),
('XYZ-5678', 12, 11, 'finalizado', '2026-03-16 11:00:00', '2026-03-18 11:00:00', 260.00);

INSERT INTO pagamento (id_aluguel, valor_pago, data_pagamento, metodo_pagamento, status_pagamento, numero_comprovante) VALUES
(1, 480.00, '2026-02-05 09:15:00', 'pix', 'concluído', 'PX-12345'),
(2, 260.00, '2026-02-12 10:05:00', 'cartão', 'concluído', 'CR-56789'),
(3, 1750.00, '2026-03-18 14:10:00', 'boleto', 'pendente', 'BL-90123'),
(4, 2450.00, '2026-03-20 08:45:00', 'pix', 'concluído', 'PX-34567'),
(5, 1960.00, '2026-03-21 11:15:00', 'cartão', 'concluído', 'CR-78901'),
(6, 285.00, '2026-02-18 09:30:00', 'pix', 'concluído', 'PX-11223'),
(7, 760.00, '2026-03-05 10:15:00', 'cartão', 'concluído', 'CR-33445'),
(8, 230.00, '2026-03-07 08:30:00', 'pix', 'concluído', 'PX-55667'),
(9, 1100.00, '2026-03-15 15:10:00', 'cartão', 'concluído', 'CR-77889'),
(10, 400.00, '2026-03-14 09:15:00', 'pix', 'concluído', 'PX-99001'),
(11, 240.00, '2026-03-17 10:10:00', 'dinheiro', 'concluído', 'DN-13131'),
(12, 260.00, '2026-03-18 11:15:00', 'pix', 'concluído', 'PX-24242');

INSERT INTO manutencao (id_placa, id_funcionario, descricao_servico, custo_manutencao, data_inicio, data_fim, status_manutencao) VALUES
('OPQ-7890', 5, 'Troca de óleo e filtros', 350.00, '2026-03-19', '2026-03-20', 'concluída'),
('DDF-1313', 7, 'Revisão dos 20.000km', 1200.00, '2026-03-20', NULL, 'em andamento'),
('ABC-1234', 5, 'Alinhamento e balanceamento', 180.00, '2026-01-20', '2026-01-20', 'concluída'),
('XYZ-5678', 7, 'Troca de pastilhas de freio', 450.00, '2026-01-25', '2026-01-25', 'concluída'),
('KJH-9012', 5, 'Higienização completa', 200.00, '2026-02-05', '2026-02-05', 'concluída'),
('LMN-3456', 7, 'Troca de pneus dianteiros', 900.00, '2026-02-10', '2026-02-11', 'concluída'),
('OPQ-7890', 5, 'Reparo no ar condicionado', 600.00, '2026-03-15', '2026-03-17', 'concluída'),
('RST-1122', 7, 'Troca de bateria', 400.00, '2026-02-28', '2026-02-28', 'concluída'),
('UVW-3344', 5, 'Polimento técnico', 350.00, '2026-03-01', '2026-03-02', 'concluída'),
('WXY-5566', 7, 'Troca de limpadores', 120.00, '2026-03-10', '2026-03-10', 'concluída'),
('ZZA-7788', 5, 'Check-up geral', 150.00, '2026-03-12', '2026-03-12', 'concluída'),
('BCC-9900', 7, 'Substituição de lâmpadas', 80.00, '2026-03-14', '2026-03-14', 'concluída');

UPDATE manutencao SET data_fim = CURRENT_DATE(),status_manutencao = 'concluída'
WHERE id_placa = 'DDF-1313';
UPDATE carro SET status = 'disponível'
WHERE placa = 'DDF-1313';
