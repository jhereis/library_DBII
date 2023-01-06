create database livraria;
use cliente;
create table cliente;
use livraria;
create table cliente (
	codico_cliente int auto_increment primary key,
    CPF_cnpj VARCHAR (14),
    TIPO VARCHAR (45),
	CELULAR varchar (11),
    TELEFONE varchar (10)
);

create table compra (
	codico_cliente int auto_increment primary key,
    codico_isbn int,
    valor int
);

create table livro (
	isbn int,
    qtde int,
    assunto varchar (20),
    autor varchar (20),
    codico_editora int
);

create table editora (
	codico_editora int auto_increment primary key,
    endereço varchar(45),
    telefone int,
    responsavel varchar (30)
);

ALTER TABLE EDITORA ADD CONSTRAINT fk_pescarro FOREIGN KEY (id_Pessoa) REFERENCES Pessoa (Id_pessoa);
