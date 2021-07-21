create database db_cidade_das_carnes;

use db_cidade_das_carnes;

create table tb_categoria(
id bigint auto_increment,
descricao varchar(255) not null,
ativo boolean not null,
primary key (id)
);

insert into tb_categoria (descricao, ativo) values ("Bovino",true);
insert into tb_categoria (descricao, ativo) values ("Suino",true);
insert into tb_categoria (descricao, ativo) values ("Aves",true);
insert into tb_categoria (descricao, ativo) values ("pertence feijoada",true);
insert into tb_categoria (descricao, ativo) values ("imbutidos",true);
insert into tb_categoria (descricao, ativo) values ("soja",true);
insert into tb_categoria (descricao, ativo) values ("outros",true);

select * from tb_categoria;

create table tb_produtos (
id bigint auto_increment,
nome varchar (255) not null,
preco decimal(6,2) not null,
qtproduto int not null,
dtvalidade date,
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

insert into tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) values ("ASA",40.00,30, "2021-11-07", 3);
insert into tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) values ("Picanha",20.00,30, "2021-11-08", 1);
insert into tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) values ("coxa de frango",20.00,30, "2021-11-07", 3);
insert into tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) values ("Bacon",30.00,30, "2021-11-09", 1);
insert into tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) values ("hamburguer",60.00,30, "2021-09-07", 5);
insert into tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) values ("Cupim",20.00,30, "2021-11-10", 1);
insert into tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) values ("Peito de frango",25.00,30, "2021-11-09", 3);
insert into tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) values ("Orelha de porco",20.00,30, "2021-11-07", 4);
insert into tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) values ("Salame",18.00,30, "2021-11-21", 5);
insert into tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) values ("medalhao",50.00,30, "2021-11-15", 3);
insert into tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) values ("mocoto",20.00,30, "2021-10-05", 2);
insert into tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) values ("chuleta",20.00,30, "2021-10-07", 1);
insert into tb_produtos (nome, preco, qtProduto) values ("acendedor de churrasqueira",20.00,30);
insert into tb_produtos (nome, preco, qtProduto) values ("soprador de churrasqueira",35.00,30);

select * from tb_produtos;

select nome, preco, categoria_id from tb_produtos;

select * from tb_produtos where nome like "Ha%";
select * from tb_produtos where nome like "%ha";
select * from tb_produtos where nome like "%ha%";

select * from tb_produtos where preco in (20.00, 30.00, 40.00);

select * from tb_produtos where preco between 20.00 and 40.00;

select * from tb_produtos where dtvalidade between '2021-11-07' and '2021-11-15' order by dtvalidade, nome;

-- Count serve para contar as linhas da tabela
select count(*) from tb_produtos;
select count(categoria_id) from tb_produtos;

-- Somar os valores
select sum(preco) from tb_produtos;

-- Tirar média dos valores
select avg(preco) from tb_produtos;

-- Apelidar os dados que você puxou com "as"
select avg(preco) as Média from tb_produtos;

-- Group by serve para agrupar determinados tipos de informações escolhidas
select categoria_id, avg(preco) as Média from tb_produtos group by categoria_id;

-- format serve para formatar a média e definir a quantidade de decimais que eu desejo
select categoria_id as Categoria, format(avg(preco), 2) as Média from tb_produtos group by categoria_id;

-- Definir o maior valor
select max(preco) as Preço_Máximo from tb_produtos;
-- Definir o menor valor
select min(preco) as Preço_Minímo from tb_produtos;

-- Realizar uma consulta dentro de outra consulta para obter mais informações de um determinado assunto
select * from tb_produtos where preco = (select max(preco) as Preço_Máximo from tb_produtos);

-- Inner Join faz a junção das tabelas relacionadas
select tb_produtos.nome, tb_produtos.preco, tb_categoria.descricao as Categoria
from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id;

-- Left trás tudo o que tem relação e o que não tem, do lado esquerdo da tabela
select tb_produtos.nome, tb_produtos.preco, tb_categoria.descricao as Categoria
from tb_produtos left join tb_categoria on tb_categoria.id = tb_produtos.categoria_id;

-- Right trás tudo o que tem relação e o que não tem, do lado direito da tabela
select tb_produtos.nome, tb_produtos.preco, tb_categoria.descricao as Categoria
from tb_produtos right join tb_categoria on tb_categoria.id = tb_produtos.categoria_id;


