create database db_pizzaria_legal;

use db_pizzaria_legal;


create table tb_categoria(
id bigint auto_increment,
descricao varchar(255) not null,
tamanho varchar(255) not null,
pizza_premium boolean,
primary key (id)
);

insert into tb_categoria (descricao, tamanho, pizza_premium) values ("Pizza", "Grande", true);
insert into tb_categoria (descricao, tamanho, pizza_premium) values ("Esfiha", "Média", true);
insert into tb_categoria (descricao, tamanho, pizza_premium) values ("Fogazza", "Grande", false);
insert into tb_categoria (descricao, tamanho, pizza_premium) values ("Beirute", "Média", true);
insert into tb_categoria (descricao, tamanho, pizza_premium) values ("Refrigerante", "2 litros", false);

select * from tb_categoria;

create table tb_pizza(
id bigint auto_increment,
nome varchar(255) not null,
sabor varchar(255) not null,
sabor_borda varchar(255),
valor decimal,
azeitona boolean,
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

insert into tb_pizza (nome, sabor, sabor_borda, valor, azeitona, categoria_id) values ("Baiana", "Calabresa, ovo, mussarela e cebola" , "Borda Catupiry", 46.99, true, 1);
insert into tb_pizza (nome, sabor, sabor_borda, valor, azeitona, categoria_id) values ("Portuguesa", "Presunto, ovo, mussarela,  cebola" , "Borda Simples", 45.99, true, 1);
insert into tb_pizza (nome, sabor, sabor_borda, valor, azeitona, categoria_id) values ("Peperoni", "Peperoni e Mussarela" , "Borda Catupiry", 9.99, false, 2);
insert into tb_pizza (nome, sabor, sabor_borda, valor, azeitona, categoria_id) values ("Nordestina", "Carne seca, pimenta biquinho e Mussarela" , "Sem Borda", 17.99, false, 3);
insert into tb_pizza (nome, sabor, sabor_borda, valor, azeitona, categoria_id) values ("Toscana", "Calabresa, mussarela e cebola" , "Borda Cheddar", 39.99, true, 1);
insert into tb_pizza (nome, sabor, sabor_borda, valor, azeitona, categoria_id) values ("Napolitana", "Mussarela, Salada, Frango Desfiado, Tomate e Orégano" , "Sem Borda", 19.99, false, 4);
insert into tb_pizza (nome, sabor, sabor_borda, valor, azeitona, categoria_id) values ("CatuFrango", "Frango Desfiado e Catupiry" , "Borda Catupiry", 7.99, true, 2);
insert into tb_pizza (nome, sabor, sabor_borda, valor, azeitona, categoria_id) values ("Bebida", "Guaraná Antarctica" , "Sem borda", 12.00, false, 5);

select * from tb_pizza;

select * from tb_pizza where valor > 45.00;

select * from tb_pizza where valor between 29.00 and 60.00;

select * from tb_pizza where nome like "C%";

select tb_pizza.nome, tb_pizza.sabor, tb_categoria.descricao as Descricao
from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id;

select tb_pizza.nome, tb_categoria.descricao as Descricao
from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id;

