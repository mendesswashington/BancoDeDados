Create Database if not exists Produto;
Use Produto;
CREATE TABLE empresa ( 
	codigoEMP int(11) NOT NULL, 
	nomeEMP varchar(50)NOT NULL, 
	siglaPAI char(3) NOT NULL, 
	PRIMARY KEY (codigoEMP) 
)ENGINE=InnoDB;

CREATE TABLE pais (
	siglaPAI char(3) NOT NULL, 
    nomePAI varchar(20) default NULL,
    PRIMARY KEY (siglaPAI) 
)ENGINE=InnoDB;

CREATE TABLE produto ( 
	codigoPRO int(11) NOT NULL, 
	nomePRO varchar(50)
	NOT NULL, 
	codigoEMP int(11) NOT NULL, 
	valorPRO decimal(10,2) default NULL,
	PRIMARY KEY (codigoPRO)
 )ENGINE=InnoDB;
 
INSERT INTO empresa VALUES (17, 'Drakken', 'ale'); 
INSERT INTO empresa VALUES (25, 'SportStore', 'ing'); 
INSERT INTO empresa VALUES (37, 'Sokome Dipalito', 'jap'); 
INSERT INTO empresa VALUES (38, 'Estrela', 'bra'); 
INSERT INTO empresa VALUES (42, 'Kajima Metals', 'jap'); 
INSERT INTO empresa VALUES (44,'Wolkswagen', 'ale'); 
INSERT INTO empresa VALUES (77, 'Votorantim', 'bra');
INSERT INTO empresa VALUES (81, 'Samelo', 'bra'); 
INSERT INTO empresa VALUES (86, 'Chemical Queen', 'ing'); 
INSERT INTO empresa VALUES (93, 'LosPampas', 'arg');

INSERT INTO pais VALUES ('ale', 'Alemanha'); 
INSERT INTO pais VALUES ('arg','Argentina'); 
INSERT INTO pais VALUES ('bra', 'Brasil'); 
INSERT INTO pais VALUES('ing', 'Inglaterra'); 
INSERT INTO pais VALUES ('jap', 'Japão');

INSERT INTO produto VALUES (1, 'parafuso', 42, NULL); 
INSERT INTO produto VALUES (2, 'bola de tenis', 25, '10.50'); 
INSERT INTO produto VALUES (3,'macarrao instantaneo', 37, '1.25'); 
INSERT INTO produto VALUES (4, 'corante', 86,'150.00'); 
INSERT INTO produto VALUES (5, 'junta automotiva', 44, '0.70'); 
INSERT INTO produto VALUES (6, 'tinta industrial', 17, '236.00'); 
INSERT INTO produto VALUES (7, 'couro', 93, '120.00'); 
INSERT INTO produto VALUES (8, 'brinquedo',38, '210.50'); 
INSERT INTO produto VALUES (9, 'Sapato', 81, '120.00'); 
INSERT INTO produto VALUES (10, 'viga de aco', 77, '50.00');
