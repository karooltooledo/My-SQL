create database db_farmacia_do_bem;

use db_farmacia_do_bem;


create table tb_categoria(
id bigint auto_increment,
descricao varchar(255) not null,
fornecedor varchar(255) not null,
fabricante varchar(255) not null,
primary key (id)
);

insert into tb_categoria (descricao, fornecedor, fabricante) values ("Remédio", "Dismed", "Medley");
insert into tb_categoria (descricao, fornecedor, fabricante) values ("Cosméticos", "MK Import", "Florus Brasil");
insert into tb_categoria (descricao, fornecedor, fabricante) values ("Higiene", "Vobel", "Johnson & Johnson");
insert into tb_categoria (descricao, fornecedor, fabricante) values ("Vitaminas", "Nutricertta", "Sundown");
insert into tb_categoria (descricao, fornecedor, fabricante) values ("Higiene Bucal", "Oniz Distribuidora", "Oral-B");

select * from tb_categoria;

create table tb_produto(
id bigint auto_increment,
nome varchar(255) not null,
valor decimal,
validade date,
funcao varchar(255),
receita_m boolean,
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

insert into tb_produto (nome, valor, validade, funcao, receita_m, categoria_id) values ("Dorflex", 2.99 , "2022-04-25", "Combate a Dor", false, 1);
insert into tb_produto (nome, valor, validade, funcao, receita_m, categoria_id) values ("Advil", 9.99 , "2023-05-25", "Combate a Dor/Febre", false, 1);
insert into tb_produto (nome, valor, validade, funcao, receita_m, categoria_id) values ("Rivotril", 24.99 , "2022-06-25", "Antidrepressivo/Ansiolítico", true, 1);
insert into tb_produto (nome, valor, validade, funcao, receita_m, categoria_id) values ("Centrum", 59.90 , "2023-01-07", "Suplemento Nutricional", false, 4);
insert into tb_produto (nome, valor, validade, funcao, receita_m, categoria_id) values ("Cerave", 72.00 , "2022-08-18", "Hidratante Corporal", false, 3);
insert into tb_produto (nome, valor, validade, funcao, receita_m, categoria_id) values ("Base Vult", 29.99 , "2023-09-19", "Base para Maquiagem", false, 2);
insert into tb_produto (nome, valor, validade, funcao, receita_m, categoria_id) values ("Batom Boca Rosa", 17.99 , "2023-12-18", "Batom para Maquiagem", false, 2);
insert into tb_produto (nome, valor, validade, funcao, receita_m, categoria_id) values ("Escova de Dente Oral-B", 12.99 , "2022-10-17", "Escova para Higiene Bucal", false, 5);

select * from tb_produto;

select * from tb_produto where valor > 50.00;

select * from tb_produto where valor between 3.00 and 60.00;

select * from tb_produto where nome like "B%";

select tb_produto.nome, tb_produto.valor, tb_produto.funcao, tb_categoria.descricao as Descricao
from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id;

select tb_produto.nome, tb_categoria.descricao as Descricao
from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id;
