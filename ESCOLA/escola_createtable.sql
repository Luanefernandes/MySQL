use escola;
create table alunos 
(
id bigint (15) auto_increment,
nome varchar(20) not null,
setor varchar (20) not null,
maiornota bigint (7),
menornota bigint (7),
primary key (id)
)
