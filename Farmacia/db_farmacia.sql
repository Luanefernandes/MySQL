Create database tb_farmacia

use tb_farmacia;

create table tb_categoria (
	id bigint (3) auto_increment,
    categoria varchar (20) not null,
    
    primary key (id)
)

insert into tb_categoria (categoria) values ("cosméticos")
insert into tb_categoria (categoria) values ("laboratoriais")
insert into tb_categoria (categoria) values ("oficinais")
insert into tb_categoria (categoria) values ("manipulacao")
insert into tb_categoria (categoria) values ("insumos")

use tb_farmacia;

create table tb_produto (
	id bigint auto_increment,
    nome varchar (20) not null,
    preco double (10,2),
    categoria_id bigint not null,
    
    primary key (id),
    foreign key (categoria_id) references tb_categoria (id)
)

insert into tb_produto (nome, preco, categoria_id) values ("advil", "6.00", 5)
insert into tb_produto (nome, preco, categoria_id) values ("Tetraciclina", "45.00",2)
insert into tb_produto (nome, preco, categoria_id) values ("Escova cabelo", "45.00",1)
insert into tb_produto (nome, preco, categoria_id) values ("Ibuprofeno", "35.00",4)
insert into tb_produto (nome, preco, categoria_id) values ("Pasta de dente", "12.00",1)

select * from tb_produto where preco > 50
select * from tb_produto where preco > 3 and preco < 60

select * from tb_produto where nome like "%B%"

select * from tb_produto 
inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id

select * from tb_produto 
inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id
where tb_categoria.id = 1
