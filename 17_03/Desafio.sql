CREATE SCHEMA DESAFIO;
USE DESAFIO;


CREATE TABLE proprietarios (
    id_proprietario INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    cpf CHAR(11) NOT NULL,
    cidade VARCHAR(50) NOT NULL
);


CREATE TABLE jogos (
    id_jogo INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(50) NOT NULL,
    genero VARCHAR(30) NOT NULL,
    plataforma VARCHAR(30) NOT NULL,
    preco DECIMAL(6,2) NOT NULL,
    desenvolvedora VARCHAR(50),
    id_proprietario INT NOT NULL,
    FOREIGN KEY (id_proprietario) REFERENCES proprietarios(id_proprietario)
);


INSERT INTO proprietarios (nome, cpf, cidade) VALUES
('João', '123445323', 'João Pessoa'),
('Ana', '92765442219', 'João Pessoa'),
('Vítor', '1521678900', 'João Pessoa'),
('Jorge', '2265498711', 'João Pessoa'),
('Lucas', '432178952322', 'João Pessoa'),
('Fulano', '1234556778', 'João Pessoa'),
('Pedro', '09183746988', 'João Pessoa'),
('Fernando', '9190374865', 'São Paulo'),
('Fernanda', '00192847159', 'São Paulo'),
('Jojo', '0184763899', 'São Paulo');


INSERT INTO jogos (titulo, genero, plataforma, preco, desenvolvedora, id_proprietario) 
VALUES
('God of War', 'Ação', 'PS5', 299.90, 'Santa Monica Studio', 1),
('FIFA 23', 'Esporte', 'PS4', 199.90, 'EA Sports', 2),
('Call of Duty', 'FPS', 'PC', 249.90, 'Activision', 3),
('The Last of Us', 'Aventura', 'PS5', 279.90, 'Naughty Dog', 4),
('Minecraft', 'Sandbox', 'PC', 99.90, 'Mojang', 5),
('GTA V', 'Ação', 'Xbox', 149.90, 'Rockstar', 6),
('Fortnite', 'Battle Royale', 'PC', 0.00, 'Epic Games', 7),
('Valorant', 'FPS', 'PC', 0.00, 'Riot Games', 8),
('Resident Evil 4', 'Terror', 'PS5', 249.90, 'Capcom', 9),
('Zelda: Breath of the Wild', 'Aventura', 'Switch', 299.90, 'Nintendo', 10);


UPDATE jogos SET preco = 279.90 WHERE id_jogo = 1;


SELECT p.nome, j.titulo, j.plataforma
FROM proprietarios p
INNER JOIN jogos j ON p.id_proprietario = j.id_proprietario;


SELECT p.cidade, COUNT(j.id_jogo) AS total_jogos
FROM proprietarios p
INNER JOIN jogos j ON p.id_proprietario = j.id_proprietario
GROUP BY p.cidade;


SELECT genero, AVG(preco) AS media_preco, MAX(preco) AS maior_preco
FROM jogos
GROUP BY genero;