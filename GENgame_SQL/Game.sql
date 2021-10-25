create database db_generation_game_online;

use db_generation_game_online;

create table tb_classe(
	id bigint auto_increment,
	descricao varchar (255),
    tipo varchar(255),
    valido boolean,
    primary key (id)
);
select*from tb_classe;
insert into tb_classe(descricao,tipo,valido) values ("Arqueiro","Classe de ataques a distancia",true);
insert into tb_classe(descricao,tipo,valido) values ("Guerreiro","Classe de ataques de perto",true);
insert into tb_classe(descricao,tipo,valido) values ("Mago","Classe de ataques magicos a distancia",true);
insert into tb_classe(descricao,tipo,valido) values ("Ladino","Classe de ataques proximos",true);
insert into tb_classe(descricao,tipo,valido) values ("Barbaro","Classe de ataques de perto",true);

create table tb_personagem(
 id bigint auto_increment,
 nome varchar(255) not null,
 sexo char,
 raca varchar(255),
 ataque decimal(10,2),
 defesa decimal(10,2),
 classe_id bigint,
primary key(id),
foreign key(classe_id) references tb_classe(id)
);
insert into tb_personagem(nome,sexo,raca,ataque,defesa,classe_id) values("Chaqui","M","Elfo",10000,2000,1);
insert into tb_personagem(nome,sexo,raca,ataque,defesa,classe_id) values("Loopin","F","Humana",15000,5000,3);
insert into tb_personagem(nome,sexo,raca,ataque,defesa,classe_id) values("Loki","M","Anão",1000,500,4);
insert into tb_personagem(nome,sexo,raca,ataque,defesa,classe_id) values("Pietra","F","Draconica",25000,30000,5);
insert into tb_personagem(nome,sexo,raca,ataque,defesa,classe_id) values("Chico","M","Elfo",1235,1000,4);
insert into tb_personagem(nome,sexo,raca,ataque,defesa,classe_id) values("Jose","M","Humano",2000,3000,2);
insert into tb_personagem(nome,sexo,raca,ataque,defesa,classe_id) values("Cleyton","M","Ork",6000,5200,5);
insert into tb_personagem(nome,sexo,raca,ataque,defesa,classe_id) values("Clarisse","F","Anão",3500,1500,1);


select * from tb_personagem where ataque >2000;

select * from tb_personagem where defesa between 1000 and 2000;

select * from tb_personagem where nome like "c%";

select * 
from tb_personagem 
inner join tb_classe where tb_pessonagem.classe_id like tb_classe.id;

select * 
from tb_personagem 
inner join tb_classe
on tb_classe.id=tb_personagem.classe_id where tb_classe.descricao = "arqueiro";



