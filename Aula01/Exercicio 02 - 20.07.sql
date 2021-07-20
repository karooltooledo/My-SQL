create database ecommerce_loja;

use ecommerce_loja;

create table ecommerce_loja(
id bigint auto_increment,
nome varchar(255),
quantidade int,
preco decimal,
marca varchar(255),
modelo varchar(255),
primary key(id)
);


insert into ecommerce_loja(nome, quantidade, preco, marca, modelo) values ("Celular", "12", "4500", "Apple", "Iphone 11");
insert into ecommerce_loja(nome, quantidade, preco, marca, modelo) values ("Celular", "9", "8500", "Apple", "Iphone 12 Pro Max");
insert into ecommerce_loja(nome, quantidade, preco, marca, modelo) values ("Relógio", "15", "2000", "Apple", "Apple Watch Serie 3");
insert into ecommerce_loja(nome, quantidade, preco, marca, modelo) values ("Macbook", "7", "19700", "Apple", "MacBook Pro");
insert into ecommerce_loja(nome, quantidade, preco, marca, modelo) values ("Ipad", "3", "10000", "Apple", "Ipad Pro");
insert into ecommerce_loja(nome, quantidade, preco, marca, modelo) values ("Fone", "13", "2200", "Apple", "AirPods Pro");
insert into ecommerce_loja(nome, quantidade, preco, marca, modelo) values ("Capas", "19", "200", "Apple", "Iphone 11");
insert into ecommerce_loja(nome, quantidade, preco, marca, modelo) values ("Capas", "19", "200", "Apple", "Iphone 12 Pro Max");

select * from ecommerce_loja;

select * from ecommerce_loja where preco > 500;

select * from ecommerce_loja where preco < 500;

update ecommerce_loja set quantidade = 23 where id = 3;