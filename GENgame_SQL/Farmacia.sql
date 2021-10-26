create database db_farmacia_do_bem;
use db_farmacia_do_bem;

create table tb_categoria(
	id bigint auto_increment,
    tipo varchar(255),
    laboratorio varchar (255),
    generico boolean,
    primary key(id)
);
create table tb_produto(
	id bigint auto_increment,
    nome varchar(255) not null,
    preco decimal(5,2),
    uso varchar (100),
    faixa_idade varchar(100),
    categoria_id bigint,
    primary key(id),
    foreign key (categoria_id) references tb_categoria(id)
);

insert into tb_categoria(tipo,laboratorio,generico) values ("analgesico","Sanofi-Aventis",false);
insert into tb_categoria(tipo,laboratorio,generico) values ("antialergico","Alelegan",false);
insert into tb_categoria(tipo,laboratorio,generico) values ("anticoagulante","Aventis",true);
insert into tb_categoria(tipo,laboratorio,generico) values ("sedativo","Sanotis",false);
insert into tb_categoria(tipo,laboratorio,generico) values ("analgesico","Fientis",true);


insert into tb_produto(nome,preco,uso,faixa_idade,categoria_id) values("Allegra",65.30,"Oral","Adulto-Criança",2);
insert into tb_produto(nome,preco,uso,faixa_idade,categoria_id) values("Tylenol",23.00,"Oral","Adulto",5);
insert into tb_produto(nome,preco,uso,faixa_idade,categoria_id) values("Acenocumarol",63.00,"Oral","Adulto",3);
insert into tb_produto(nome,preco,uso,faixa_idade,categoria_id) values("Loratadina",45.00,"Oral","Adulto-Criança",2);
insert into tb_produto(nome,preco,uso,faixa_idade,categoria_id) values("Lorazepam",25.00,"Oral","Adulto",4);
insert into tb_produto(nome,preco,uso,faixa_idade,categoria_id) values("Xarelto",5.60,"Oral","Adulto",3);
insert into tb_produto(nome,preco,uso,faixa_idade,categoria_id) values("Paracetamol",18.80,"Oral","Adulto",1);


select * from tb_produto where preco > 50;

select * from tb_produto where preco between 3 and 60;

select * from tb_produto where nome like "%B%";

select * from tb_produto inner join tb_categoria
where tb_produto.categoria_id = tb_categoria.id;

select * from tb_produto inner join tb_categoria
on tb_produto.categoria_id = tb_categoria.id where tb_categoria.tipo = "analgesico";

