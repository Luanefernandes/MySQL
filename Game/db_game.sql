Create database db_game

use db_game;

create table tb_classe (
	id bigint (8) auto_increment,
    cat varchar (30) not null,
    poder varchar (30) not null,
    
    primary key (id)
);

insert into tb_classe (cat, poder) values ("arqueiro", "Arco e flecha")
insert into tb_classe (cat, poder) values ("Escudeiro", "Escuro de ferro")
insert into tb_classe (cat, poder) values ("Atirador", "Arma")
insert into tb_classe (cat, poder) values ("Superman", "Força sobrehumana")
insert into tb_classe (cat, poder) values ("Batman", "Inteligência elevada")

use db_game;

create table tb_personagem (
	id bigint auto_increment,
    ataque double (20,2),
    defesa double (20,2),
    categoria_id bigint not null,
    
    primary key (id),
    foreign key (categoria_id) references tb_classe (id)
)

insert into tb_personagem (ataque, defesa, categoria_id) values (2200,1000,1)
insert into tb_personagem (ataque, defesa, categoria_id) values (800,5000,2)
insert into tb_personagem (ataque, defesa, categoria_id) values (3000,1500,3)
insert into tb_personagem (ataque, defesa, categoria_id) values (10000,10000,4)
insert into tb_personagem (ataque, defesa, categoria_id) values (11000,9000,4)

select * from tb_personagem where ataque > 2000
select * from tb_personagem where defesa > 1000 and defesa <2000
select * from tb_classe where cat like "%C%"
select * from tb_personagem
inner join tb_classe on tb_classe.id = tb_personagem.categoria_id

select * from tb_personagem
inner join tb_classe on tb_classe.id = tb_personagem.categoria_id
where tb_personagem.categoria_id = 1
