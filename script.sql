CREATE DATABASE SPTech;

USE SPTech;

CREATE TABLE aluno(
    RA INT PRIMARY KEY,
    nome VARCHAR(50),
    poder VARCHAR(30)
);

CREATE TABLE especialidade(
    fkAluno INT PRIMARY KEY,
    area VARCHAR(20),
    nivel int,
    CONSTRAINT CHKNivel CHECK(nivel IN('Avançado','Intermediário','Iniciante')),
    FOREIGN KEY(fkAluno) REFERENCES aluno(RA) 
);

