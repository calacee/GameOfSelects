CREATE DATABASE SPTech;

USE SPTech;

CREATE TABLE aluno(
    RA INT PRIMARY KEY,
    nome VARCHAR(50)
);

CREATE TABLE especialidade(
    fkAluno INT PRIMARY KEY,
    area VARCHAR(20),
    nivel INT,
    CONSTRAINT CHKNivel CHECK(nivel IN('Avançado','Intermediário','Iniciante')),
    FOREIGN KEY(fkAluno) REFERENCES aluno(RA) 
);
CREATE TABLE poder(
    idPoder INT PRIMARY KEY AUTO_INCREMENT,
    poder VARCHAR(50)
);
CREATE TABLE poderAluno(
    idPoderAluno int AUTO_INCREMENT,
    fkPoder int,
    fkAluno int,
    FOREIGN KEY(fkAluno) REFERENCES aluno(RA),
    FOREIGN KEY(fkPoder) REFERENCES poder(idPoder),
    PRIMARY KEY(idPoderAluno, fkAluno, fkPoder)
);

