Create database db_pizzaria

use db_pizzaria;

create table tb_categoria (
	id bigint (5) auto_increment,
    tipo varchar (20) not null,
    borda varchar (20) not null,
    
    primary key (id)
)

insert into tb_categoria (tipo, borda) values ("Salgada", "Recheada")
insert into tb_categoria (tipo, borda) values ("Doce", "Recheada")
insert into tb_categoria (tipo, borda) values ("Doce", "Sem recheio")
insert into tb_categoria (tipo, borda) values ("Salgada", "Sem recheio")

use tb_pizzaria;

create table tb_pizza (
	id bigint auto_increment,
    sabor varchar (20) not null,
    preco double (10,2),
    tipo_id bigint not null,
    
    primary key (id),
    foreign key (tipo_id) references tb_categoria (id)
)

insert into tb_pizza (sabor, preco, tipo_id) values ("Calabresa", 22.00, 1)
insert into tb_pizza (sabor, preco, tipo_id) values ("Brigadeiro", 30.00, 2)
insert into tb_pizza (sabor, preco, tipo_id) values ("Portuguesa", 45.00, 4)
insert into tb_pizza (sabor, preco, tipo_id) values ("MM's", 32.00, 3)
insert into tb_pizza (sabor, preco, tipo_id) values ("Beijinho", 35.00, 3)

select * from tb_pizza where preco > 45.00
select * from tb_pizza where preco > 29.00 and preco < 60
select * from tb_pizza where sabor like "%C%"

select * from tb_pizza 
inner join tb_categoria on tb_categoria.id = tb_pizza.tipo_id

select * from tb_pizza 
inner join tb_categoria on tb_categoria.id = tb_pizza.tipo_id
where tb_pizza.tipo_id = 3
