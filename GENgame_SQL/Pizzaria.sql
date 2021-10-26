create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categoria(
	id bigint auto_increment,
    ingrediente varchar(255) not null,
	borda varchar (100),
	tipo varchar(255),
    primary key (id)
);
select * from tb_categoria;

create table tb_pizza(
	id bigint auto_increment,
    nome varchar(255) not null,
	preco decimal(5,2),
    tamanho varchar(100),
	categoria_id bigint,
    primary key (id),
    foreign key (categoria_id) references tb_categoria(id)
);
select * from tb_pizza;

insert into tb_categoria(ingrediente,borda,tipo) values ("Carne","catupiry","Salgada");
insert into tb_categoria(ingrediente,borda,tipo) values ("Queijo","Cheddar","Salgada");
insert into tb_categoria(ingrediente,borda,tipo) values ("Chocolate","Chocolate","Doce");
insert into tb_categoria(ingrediente,borda,tipo) values ("Frango","Cream Cheese","Salgada");
insert into tb_categoria(ingrediente,borda,tipo) values ("Banana","Chocolate","Doce");

insert into tb_pizza(nome,preco,tamanho,categoria_id)values("Calabresa",39.99,"Familia",1);
insert into tb_pizza(nome,preco,tamanho,categoria_id)values("4 queijos",29.99,"Familia",2);
insert into tb_pizza(nome,preco,tamanho,categoria_id)values("Romeu e Julieta",35.99,"Brotinho",5);
insert into tb_pizza(nome,preco,tamanho,categoria_id)values("Brigadeiro",29.99,"Media",3);
insert into tb_pizza(nome,preco,tamanho,categoria_id)values("Frango com Catupiry",39.99,"Familia",4);
insert into tb_pizza(nome,preco,tamanho,categoria_id)values("Margherita",39.99,"Brotinho",2);
insert into tb_pizza(nome,preco,tamanho,categoria_id)values("M&M",49.99,"Familia",3);


select * from tb_pizza where preco >45;
select * from tb_pizza where preco between 29 and 60;
select * from tb_pizza where nome like "C%";

select * from tb_pizza inner join tb_categoria
where tb_pizza.categoria_id = tb_categoria.id;

select * from tb_pizza inner join tb_categoria
on tb_pizza.categoria_id = tb_categoria.id where tb_categoria.tipo = "Doce";


