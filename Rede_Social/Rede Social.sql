CREATE TABLE `Temas` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`categoria` varchar(255) NOT NULL,
	`descrição` varchar(255) NOT NULL,
	`valido` BOOLEAN NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `postagens` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`titulo` varchar(255) NOT NULL,
	`texto` varchar(255) NOT NULL,
	`data` DATETIME NOT NULL,
	`localizacao` varchar(255) NOT NULL,
	`temas_id` bigint(255) NOT NULL,
	`usuario_id` varchar(255) NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `usuario` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`nome` bigint NOT NULL,
	`email` varchar(255) NOT NULL,
	`senha` varchar(255) NOT NULL,
	PRIMARY KEY (`id`)
);

ALTER TABLE `postagens` ADD CONSTRAINT `postagens_fk0` FOREIGN KEY (`temas_id`) REFERENCES `Temas`(`id`);

ALTER TABLE `postagens` ADD CONSTRAINT `postagens_fk1` FOREIGN KEY (`usuario_id`) REFERENCES `usuario`(`id`);




