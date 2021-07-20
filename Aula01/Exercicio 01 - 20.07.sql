create database Rh_empresa;

use Rh_empresa;

create table Rh_empresa(
id bigint auto_increment,
nome varchar(255),
cpf varchar(255),
sexo varchar(255),
idade int,
salario bigint,
primary key(id)
);

insert into Rh_empresa(nome, cpf, sexo, idade, salario) values ("Anderson", "44789652341", "Masculino", 32, 1500);
insert into Rh_empresa(nome, cpf, sexo, idade, salario) values ("Carlos", "44785264591", "Masculino", 37, 3600);
insert into Rh_empresa(nome, cpf, sexo, idade, salario) values ("Jade", "49687426318", "Feminino", 26, 1900);
insert into Rh_empresa(nome, cpf, sexo, idade, salario) values ("Beatriz", "35487695214", "Feminino", 24, 2500);
insert into Rh_empresa(nome, cpf, sexo, idade, salario) values ("Karoline", "36952684361", "Feminino", 22, 5600);

select * from Rh_empresa;

drop database Rh_empresa;

select * from Rh_empresa where salario > 2000;

select * from Rh_empresa where salario < 2000;

update Rh_empresa set idade = 36 where id = 2;