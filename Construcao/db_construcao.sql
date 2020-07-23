create database db_construcao

use db_construcao;

create table tb_categoria (
	id bigint (5) auto_increment,
    categoria varchar (25) not null,
    
    primary key (id)
)

insert into tb_categoria (categoria) values ("Civil")
insert into tb_categoria (categoria) values ("Arquitetura")
insert into tb_categoria (categoria) values ("HVAC")
insert into tb_categoria (categoria) values ("Elétrica")
insert into tb_categoria (categoria) values ("Hidráulica")

use db_construcao;

create table tb_produto (
	id bigint auto_increment,
    tipo varchar (30) not null,
    categoria_id bigint not null,
    
    primary key (id),
    foreign key (categoria_id) references tb_categoria (id)
    )

insert into tb_produto (tipo, categoria_id) values ("obra", "1")
insert into tb_produto (tipo, categoria_id) values ("Planta", "2")
insert into tb_produto (tipo, categoria_id) values ("Projeto Ar-Condicionado", "3")
insert into tb_produto (tipo, categoria_id) values ("Planta técnica", "4")
insert into tb_produto (tipo, categoria_id) values ("Planta layout", "2")
insert into tb_produto (tipo, categoria_id) values ("Planta design", "2")
insert into tb_produto (tipo, categoria_id) values ("Planta fundação", "1")
insert into tb_produto (tipo, categoria_id) values ("Detalhamento viga baldrame", "1")

select * from tb_produto where tipo like "%C%"

select * from tb_produto
inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id

select * from tb_produto
inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id
where tipo = planta
