create database db_ecommerce2

use db_ecommerce2;
create table tb_produto (
	id bigint(15) auto_increment, 
    nomeproduto varchar (20) not null,
    valor double (20,2),
    primary key (id)
);

use db_ecommerce2;
create table tb_produto (
	id bigint(15) auto_increment, 
    nomeproduto varchar (20) not null,
    valor double (20,2),
    categoriaproduto_id bigint not null,
    primary key (id),
    foreign key (categoriaproduto_id) references tb_categoria (id)
);


insert into tb_categoria (categoria) values ("Vestuário")
insert into tb_categoria (categoria) values ("Eletrodomésticos")
insert into tb_categoria (categoria) values ("Açougue")
insert into tb_categoria (categoria) values ("Beleza e cuidado pessoal")
insert into tb_categoria (categoria) values ("Câmeras")
insert into tb_categoria (categoria) values ("Laticínios")
insert into tb_categoria (categoria) values ("Papelaria")

insert into tb_produto (nomeproduto,valor,categoriaproduto_id) values ("Calça", 120.00, 1)
insert into tb_produto (nomeproduto,valor,categoriaproduto_id) values ("Patinho", 30.00, 2)
insert into tb_produto (nomeproduto,valor,categoriaproduto_id) values ("Canon T6", 4500.00, 6)
insert into tb_produto (nomeproduto,valor,categoriaproduto_id) values ("Porsche", 800.000.00, 6)

select * from tb_produto where valor <2000
select * from tb_produto where valor > 2000
select * from tb_produto where nomeproduto like "%p%"

select * from tb_produto
inner join tb_categoria on tb_categoria.id = tb_produto.categoriaproduto_id
where tb_produto.categoriaproduto_id = 2
