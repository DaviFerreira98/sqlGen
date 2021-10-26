create database db_cidade_das_frutas;
use db_cidade_das_frutas;

create table tb_categoria(
	id bigint auto_increment,
    tipo varchar(255),
    organico boolean,
    primary key (id)
);
create table tb_produto(
	id bigint auto_increment,
    nome varchar(255) not null,
    preco decimal (5,2),
    estoque boolean,
    validade date,
    categoria_id bigint,
    primary key(id),
    foreign key (categoria_id) references tb_categoria (id)
);

insert into tb_categoria(tipo,organico) values ("Fruta",True);
insert into tb_categoria(tipo,organico) values ("Fruta",false);
insert into tb_categoria(tipo,organico) values ("Legume",True);
insert into tb_categoria(tipo,organico) values ("Legume",false);
insert into tb_categoria(tipo,organico) values ("Vegetal",True);


insert into tb_produto(nome,preco,estoque,validade,categoria_id) values ("Cenoura",4.55,true,"2021-10-30",5);
insert into tb_produto(nome,preco,estoque,validade,categoria_id) values ("Alfava",12.55,true,"2021-11-05",3);
insert into tb_produto(nome,preco,estoque,validade,categoria_id) values ("Brócoles",9.00,true,"2021-10-30",4);
insert into tb_produto(nome,preco,estoque,validade,categoria_id) values ("Jabuticaba",10.99,false,"2021-10-30",1);
insert into tb_produto(nome,preco,estoque,validade,categoria_id) values ("Maçã",7.00,true,"2021-10-30",2);
insert into tb_produto(nome,preco,estoque,validade,categoria_id) values ("Beterraba",8.99,true,"2021-10-30",5);
insert into tb_produto(nome,preco,estoque,validade,categoria_id) values ("Pera",5.99,true,"2021-10-30",1);
insert into tb_produto(nome,preco,estoque,validade,categoria_id) values ("Uva",12.55,true,"2021-10-30",2);

select * from tb_produto where preco >50;
select * from tb_produto where preco between 3 and 60;
select * from tb_produto where nome like "C%";

select * from tb_produto inner join tb_categoria
where tb_produto.categoria_id = tb_categoria.id;

select * from tb_produto inner join tb_categoria
on tb_produto.categoria_id = tb_categoria.id where tb_categoria.tipo = "Fruta";