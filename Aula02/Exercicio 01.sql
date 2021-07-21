create database db_generation_game_online;

use db_generation_game_online;


create table tb_classe(
id bigint auto_increment,
nome_classe varchar(255) not null,
fases int not null,
jogo_online boolean,
primary key (id)
);

insert into tb_classe (nome_classe, fases, jogo_online) values ("Ação e Aventura", 21, true);
insert into tb_classe (nome_classe, fases, jogo_online) values ("Estratégia", 41, false);
insert into tb_classe (nome_classe, fases, jogo_online) values ("Raciocínio Lógico", 33, false);
insert into tb_classe (nome_classe, fases, jogo_online) values ("Luta", 24, true);
insert into tb_classe (nome_classe, fases, jogo_online) values ("Sobrevivência", 37, true);

select * from tb_classe;

create table tb_personagem(
id bigint auto_increment,
nome_personagem varchar(255) not null,
poder_ataque decimal,
velocidade decimal,
resistencia decimal,
poder_defesa decimal,
person_id bigint,
primary key (id),
FOREIGN KEY (person_id) REFERENCES tb_classe (id)
);

insert into tb_personagem (nome_personagem, poder_ataque, velocidade, resistencia, poder_defesa, person_id) values ("Gaat", 2300, 9500, 7458, 1940, 5);
insert into tb_personagem (nome_personagem, poder_ataque, velocidade, resistencia, poder_defesa, person_id) values ("Amaymon", 4300, 5500, 8460, 8400, 2);
insert into tb_personagem (nome_personagem, poder_ataque, velocidade, resistencia, poder_defesa, person_id) values ("Bael", 1700, 1625, 4120, 3405, 3);
insert into tb_personagem (nome_personagem, poder_ataque, velocidade, resistencia, poder_defesa, person_id) values ("Callan", 8620, 3200, 7950, 9540, 4);
insert into tb_personagem (nome_personagem, poder_ataque, velocidade, resistencia, poder_defesa, person_id) values ("Gary", 950, 4160, 2850, 4530, 2);
insert into tb_personagem (nome_personagem, poder_ataque, velocidade, resistencia, poder_defesa, person_id) values ("Kratos", 1846, 4660, 8560, 1487, 4);
insert into tb_personagem (nome_personagem, poder_ataque, velocidade, resistencia, poder_defesa, person_id) values ("Ryu", 4500, 6580, 5784, 1269, 1);
insert into tb_personagem (nome_personagem, poder_ataque, velocidade, resistencia, poder_defesa, person_id) values ("Vos", 2876, 9500, 7845, 2250, 5);

select * from tb_personagem;

select * from tb_personagem where poder_ataque > 2000;

select * from tb_personagem where poder_defesa between 1000 and 2000;

select * from tb_personagem where nome_personagem like "C%";

select tb_personagem.nome_personagem, tb_personagem.poder_ataque, tb_classe.nome_classe as Classe
from tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.person_id;

select tb_personagem.nome_personagem, tb_personagem.poder_ataque, tb_personagem.poder_defesa, tb_classe.nome_classe as Classe
from tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.person_id where tb_personagem.person_id = 4;