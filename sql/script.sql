CREATE DATABASE SPTech;

USE SPTech;

CREATE TABLE aluno(
    RA INT PRIMARY KEY,
    nome VARCHAR(50)
);
INSERT INTO aluno (RA, nome) VALUES
(01242074, 'Luz'),
(01242049, 'Luiza'),
(01242137, 'Paloma'),
(01242061, 'Calace'),
(01242015, 'Mateus');

CREATE TABLE poder(
    idPoder INT PRIMARY KEY AUTO_INCREMENT,
    poder VARCHAR(50)
);
INSERT INTO poder (poder) VALUES
('Invisibilidade'),
('Super Força'),
('Controle de Tecnologia'),
('Telepatia'),
('Velocidade Sobrenatural');


CREATE TABLE poderAluno(
    idPoderAluno int AUTO_INCREMENT,
    fkPoder int,
    fkAluno int,
    FOREIGN KEY(fkAluno) REFERENCES aluno(RA),
    FOREIGN KEY(fkPoder) REFERENCES poder(idPoder),
    PRIMARY KEY(idPoderAluno, fkAluno, fkPoder)
);
INSERT INTO poderAluno (fkPoder, fkAluno) VALUES
(1, 01242074), -- Luz: Invisibilidade
(2, 01242049), -- Luiza: Super Força
(3, 01242137), -- Paloma: Controle de Tecnologia
(4, 01242061), -- Calace: Telepatia
(5, 01242015); -- Mateus: Velocidade Sobrenatural


CREATE TABLE vilao (
    idVilao INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50),
    caracteristica VARCHAR(100)
);
INSERT INTO vilao (nome, caracteristica) VALUES
('Dr. Malware', 'Controla vírus digitais'),
('Shadow', 'Manipula as sombras'),
('Capitão Bug', 'Causa erros e sabota sistemas'),
('Trojanizer', 'Mestre da infiltração furtiva'),
('Overclock', 'Extremamente rápido, mas instável');

CREATE TABLE fraqueza (
    idFraqueza INT PRIMARY KEY AUTO_INCREMENT,
    fraqueza VARCHAR(50)
);
INSERT INTO fraqueza (fraqueza) VALUES
('Controle de Tecnologia'), -- Fraqueza do Dr. Malware
('Invisibilidade'),         -- Fraqueza de Shadow
('Velocidade Sobrenatural'),-- Fraqueza de Capitão Bug
('Telepatia'),              -- Fraqueza de Trojanizer
('Super Força');            -- Fraqueza de Overclock


CREATE TABLE vilaoDoAluno (
    fkVilao INT,
    fkAluno INT,
    PRIMARY KEY (fkVilao, fkAluno),
    CONSTRAINT fkdoVilao FOREIGN KEY (fkVilao) REFERENCES vilao(idVilao),
    CONSTRAINT fkdoAluno FOREIGN KEY (fkAluno) REFERENCES aluno(RA)
);
INSERT INTO vilaoAluno (fkVilao, fkAluno) VALUES
(1, 01242137), -- Dr. Malware enfrenta Paloma (Controle de Tecnologia)
(2, 01242074), -- Shadow enfrenta Luz (Invisibilidade)
(3, 01242015), -- Captain Bug enfrenta Mateus (Velocidade Sobrenatural)
(4, 01242061), -- Trojanizer enfrenta Calace (Telepatia)
(5, 01242049); -- Overclock enfrenta Luiza (Super Força)

