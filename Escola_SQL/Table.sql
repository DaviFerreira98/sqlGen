CREATE TABLE funcionario (
  id bigint NOT NULL AUTO_INCREMENT,
  nome varchar(30) NOT NULL,
  cargo varchar(15),
  telefone varchar(11),
  email varchar(30),
  salario decimal(10,2),
  PRIMARY KEY (id)
)