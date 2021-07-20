create database dados_escola;

use dados_escola;

create table dados_escola (
id bigint auto_increment,
nome varchar(255),
sexo varchar(255),
idade int,
nota int,
situacao varchar(255),
primary key(id)
);

insert into dados_escola(nome, sexo, idade, nota, situacao) values ("João", "M", 14, 8, "Aprovado(a)");
insert into dados_escola(nome, sexo, idade, nota, situacao) values ("Amanda", "F", 15, 5, "Reprovado(a)");
insert into dados_escola(nome, sexo, idade, nota, situacao) values ("Beatriz", "F", 14, 7, "Aprovado(a)");
insert into dados_escola(nome, sexo, idade, nota, situacao) values ("Caio", "M", 13, 9, "Aprovado(a)");
insert into dados_escola(nome, sexo, idade, nota, situacao) values ("Angelica", "F", 14, 6, "Reprovado(a)");
insert into dados_escola(nome, sexo, idade, nota, situacao) values ("Pedro", "M", 14, 8, "Aprovado(a)");
insert into dados_escola(nome, sexo, idade, nota, situacao) values ("Ana", "F", 13, 5, "Reprovado(a)");
insert into dados_escola(nome, sexo, idade, nota, situacao) values ("Rodrigo", "M", 14, 10, "Aprovado(a)");

select * from dados_escola;

select * from dados_escola where nota > 7;

select * from dados_escola where nota < 7;

update dados_escola set idade = 15 where id = 3;