-- Criação do banco de dados (opcional, dependendo do SGBD)
-- CREATE DATABASE sistema_assinantes;
-- USE sistema_assinantes;

-- Tabela de Municípios
CREATE TABLE Municipio (
    cd_municipio INT PRIMARY KEY,
    ds_municipio VARCHAR(100) NOT NULL
);

-- Tabela de Tipos de Assinante
CREATE TABLE Tipo_Assinante (
    cd_tipo INT PRIMARY KEY,
    ds_tipo VARCHAR(50) NOT NULL
);

-- Tabela de Ramos
CREATE TABLE Ramo (
    cd_ramo INT PRIMARY KEY,
    ds_ramo VARCHAR(50) NOT NULL
);

-- Tabela de Endereços
CREATE TABLE Endereco (
    cd_endereco INT PRIMARY KEY,
    ds_endereco VARCHAR(100) NOT NULL,
    complemento VARCHAR(50),
    bairro VARCHAR(50),
    cep VARCHAR(10),
    cd_municipio INT NOT NULL,
    FOREIGN KEY (cd_municipio) REFERENCES Municipio(cd_municipio)
);

-- Tabela de Assinantes
CREATE TABLE Assinante (
    cd_assinante INT PRIMARY KEY,
    nm_assinante VARCHAR(100) NOT NULL,
    cd_endereco INT NOT NULL,
    cd_tipo INT NOT NULL,
    cd_ramo INT,
    FOREIGN KEY (cd_endereco) REFERENCES Endereco(cd_endereco),
    FOREIGN KEY (cd_tipo) REFERENCES Tipo_Assinante(cd_tipo),
    FOREIGN KEY (cd_ramo) REFERENCES Ramo(cd_ramo)
);

-- Tabela de Telefones
CREATE TABLE Telefone (
    cd_fone INT PRIMARY KEY,
    dd VARCHAR(3),
    n_fone VARCHAR(10) NOT NULL,
    cd_assinante INT NOT NULL,
    FOREIGN KEY (cd_assinante) REFERENCES Assinante(cd_assinante)
);
