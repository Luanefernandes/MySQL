use e_commerce;
create table produtos
(
id bigint (15) auto_increment,
nome varchar (20) not null,
setor varchar (20) not null,
preco bigint (20),
disponivel boolean,
primary key (id)
);
