-- criar a tabela (Vendas2mb)
CREATE DATABASE Vendas2mb;

-- usar a tabela desejada (vendas2mb)
USE Vendas2mb;

-- criar a tabela (Clientes)
CREATE TABLE Clientes (
	idcliente INT unsigned not null auto_increment,
    nome VARCHAR(45) not null,
	endereço VARCHAR(45),
    cidade VARCHAR(45) not null,
    cep VARCHAR(8) not null,
    primary key (idcliente)
    );
    
    -- criar a tabela (Vendedores)
    CREATE TABLE Vendedores (
		idvendedores INT unsigned not null auto_increment,
        nome VARCHAR(50) not null,
        data_contratacao DATE,
        salario float default 1000,
        comissao float,
        primary key (idvendedores)
    );
    
    -- criar a tabela (Fatura)
    CREATE TABLE Faturas (
		idfaturas INT unsigned not null auto_increment,
        date DATE,
        idcliente INT unsigned not null,
        idvendedores INT unsigned not null,
        primary key (idfaturas),
        foreign key (idcliente) references Clientes (idcliente),
        foreign key (idvendedores) references Vendedores (idvendedores)
    );
    
    -- incluir na tabela clientes outro atributo (depois que a tabela já está criada)
    ALTER TABLE Clientes ADD telefone VARCHAR(10);
    
    -- remover o atributo CEP da tabela
    ALTER TABLE Clientes DROP cep;
    
    -- modificar o tipo de dado
    ALTER TABLE Clientes CHANGE cidade municipio VARCHAR(100);
    
    -- ENUM predefine uma lista de valores para que o banco de dados só aceite determinados valores
    ALTER TABLE Clientes ADD sexo ENUM('m','f');
    
    

