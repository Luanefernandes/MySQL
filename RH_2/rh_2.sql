Create database db_RH2

use db_RH2;
create table tb_cargo (
id bigint (5) auto_increment,
cargo varchar (20) not null,
setor varchar (20) not null,
primary key (id)
)

insert into tb_cargo (cargo, setor) values ("Engenheiro elétrico", "Engenharia")
insert into tb_cargo (cargo, setor) values ("Engenheiro civil", "Engenharia")
insert into tb_cargo (cargo, setor) values ("Arquiteto", "Arquitetura")
insert into tb_cargo (cargo, setor) values ("Engenheiro de Software", "TI")
insert into tb_cargo (cargo, setor) values ("Analista de Sistemas", "TI")


use db_rh2;

create table tb_funcionario (
id bigint auto_increment,
nome varchar (30) not null,
cracha bigint (10),
empresa varchar (20) not null,
profissao_id bigint not null,
primary key (id),
foreign key (profissao_id) references tb_cargo (id)
)

insert into tb_funcionario (nome, cracha, profissao_id, salario) 
values ("Josefa", 363728, 1, 2345.00)
insert into tb_funcionario (nome, cracha, profissao_id, salario) 
values ("Roberval", 463728, 2, 1345.00)
insert into tb_funcionario (nome, cracha, profissao_id, salario) 
values ("Beotrana", 8728, 2, 7645.00)
insert into tb_funcionario (nome, cracha, profissao_id, salario) 
values ("Ciclana", 8728, 2, 7645.00)
insert into tb_funcionario (nome, cracha, profissao_id, salario) 
values ("Fulana", 8728, 2, 7645.00)
insert into tb_funcionario (nome, cracha, profissao_id, salario) 
values ("Rendvalda", 18728, 1, 8645.00)
insert into tb_funcionario (nome, cracha, profissao_id, salario) 
values ("Clendeuspai", 28728, 5, 4645.00)
insert into tb_funcionario (nome, cracha, profissao_id, salario) 
values ("Armaria", 363728, 2, 1845.00)
insert into tb_funcionario (nome, cracha, profissao_id, salario) 
values ("José", 81728, 2, 2645.00)
insert into tb_funcionario (nome, cracha, profissao_id, salario) 
values ("Apocalipse", 82728, 2, 3645.00)
insert into tb_funcionario (nome, cracha, profissao_id, salario) 
values ("Lucas", 83728, 2, 4645.00)
insert into tb_funcionario (nome, cracha, profissao_id, salario) 
values ("João", 148728, 1, 5645.00)
insert into tb_funcionario (nome, cracha, profissao_id, salario) 
values ("Pedro", 258728, 5, 6645.00)


select * from tb_funcionario
select * from tb_funcionario where salario >2000
select * from tb_funcionario where salario >1000 and salario <2000
select * from tb_funcionario where nome like "%ro%"
 
select * from tb_funcionario 
inner join tb_cargo on tb_cargo.id = tb_funcionario.profissao_id

select * from tb_funcionario 
inner join tb_cargo on tb_cargo.id = tb_funcionario.profissao_id
where tb_funcionario.profissao_id = 1
