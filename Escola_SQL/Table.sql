use db_escola;

create table tb_estudantes(

 id bigint auto_increment,
  nome varchar(100) not null,
  idade int,
  RA varchar(8) not null,
  telefone varchar(11) not null,
  nota decimal(10.2),
  primary key(id)

);