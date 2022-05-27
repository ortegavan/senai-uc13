-- DDL
CREATE DATABASE RpgOnline
GO

USE RpgOnline
GO

CREATE TABLE Habilidade(
    Id INT PRIMARY KEY IDENTITY(1,1),
    Nome VARCHAR(50) NOT NULL
)
GO

CREATE TABLE Classe(
    Id INT PRIMARY KEY IDENTITY(1,1),
    Nome VARCHAR(50) NOT NULL
)
GO

CREATE TABLE ClasseHabilidade(
    ClasseId INT FOREIGN KEY REFERENCES Classe(Id),
    HabilidadeId INT FOREIGN KEY REFERENCES Habilidade(Id),
    PRIMARY KEY(ClasseId, HabilidadeId)
)
GO

CREATE TABLE Personagem(
    Id INT PRIMARY KEY IDENTITY(1,1),
    ClasseId INT FOREIGN KEY REFERENCES Classe(Id),
    Nome VARCHAR(50) NOT NULL
)
GO

CREATE TABLE Usuario(
    Id INT PRIMARY KEY IDENTITY(1,1),
    PersonagemId INT FOREIGN KEY REFERENCES Personagem(Id),
    Nome VARCHAR(50) NOT NULL,
    Email VARCHAR(50) UNIQUE NOT NULL,
    Senha VARCHAR(50) NOT NULL
)
GO