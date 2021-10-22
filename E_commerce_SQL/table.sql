use e_commerce;

create table produtos(
	id bigint auto_increment,
    nome_produto varchar(30) not null,
    preco decimal(10,2),
    marca varchar(30) not null,
    estoque int,
	ativo boolean,
    primary key (id)
);