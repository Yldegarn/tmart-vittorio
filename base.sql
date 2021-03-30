 

create table enfant
	(
	IdEnfant INT(10) NOT NULL AUTO_INCREMENT PRIMARY KEY,
	EmailEnfant VARCHAR(100),
	mdpEnfant VARCHAR(40),
	anneeNaissance INT,
	Contact VARCHAR(40),
	bonPoints  INT(255) NOT NULL
	)ENGINE=InnoDB DEFAULT CHARSET=latin1; 


INSERT INTO enfant VALUES ("","enfant0@gmail.com","enfant0",2005,65765,100);
INSERT INTO enfant VALUES ("","enfant1@gmail.com","enfant1",2005,65765,200);
INSERT INTO enfant VALUES ("","enfant2@gmail.com","enfant2",2005,65765,100);
INSERT INTO enfant VALUES ("","enfant3@gmail.com","enfant3",2005,65765,200);
INSERT INTO enfant VALUES ("","enfant4@gmail.com","enfant4",2005,65765,100);
INSERT INTO enfant VALUES ("","enfant5@gmail.com","enfant5",2005,65765,500);
INSERT INTO enfant VALUES ("","enfant6@gmail.com","enfant6",2005,65765,500);
INSERT INTO enfant VALUES ("","enfant7@gmail.com","enfant7",2005,65765,350);
INSERT INTO enfant VALUES ("","enfant8@gmail.com","enfant8",2005,65765,200);
INSERT INTO enfant VALUES ("","enfant9@gmail.com","enfant9",2005,65765,100);
INSERT INTO enfant VALUES ("","enfant10@gmail.com","enfant10",2005,65765,350);

create table souhait
	(
	IdSouhait INT(10) NOT NULL AUTO_INCREMENT PRIMARY KEY,
	IdEnfant INT(10) NOT NULL,
	IdCadeau INT(10)NOT NULL,
	quantite INT(40),
	estValide VARCHAR(40),
	FOREIGN KEY(IdEnfant) REFERENCES enfant(IdEnfant)
	)ENGINE=InnoDB DEFAULT CHARSET=latin1;




create table Categories
	(
	IdCategories INT(10) NOT NULL AUTO_INCREMENT PRIMARY KEY,
	NomCategorie VARCHAR(40)
	)ENGINE=InnoDB DEFAULT CHARSET=latin1;

insert into Categories values("","jeux");
insert into Categories values("","voiture");
insert into Categories values("","figurine");




create table administrateur
(
	login VARCHAR(40),
	motdepasse  VARCHAR(40)
) ;


create table cadeau
	(
	IdCadeau INT(10) NOT NULL AUTO_INCREMENT PRIMARY KEY,
	NomCadeau VARCHAR(40),
	Points  INT NOT null,
	Categories VARCHAR(40),
	image VARCHAR(40) 

	)ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO cadeau VALUES ('', 'PS5', 65,'console','ps.jpg');
INSERT INTO cadeau VALUES ('', 'PS5', 65,'console','ps4.jpg');
INSERT INTO cadeau VALUES ('', 'N switch', '50','console', 'netendo.jpg');
INSERT INTO cadeau VALUES ('', 'Netendo', '35','console', 'netendo.jpeg');
INSERT INTO cadeau VALUES ('', 'Wii', '40','console', 'wii.jpg');
INSERT INTO cadeau VALUES ('', 'ordi', '60','console', 'ordi.jpg');

INSERT INTO cadeau VALUES ('', 'mille born', '20','jeu de sosiete', 'born.jpg');
INSERT INTO cadeau VALUES ('', 'uno', '25','jeu de sosiete', 'uno.jpg');
INSERT INTO cadeau VALUES ('', 'carte', '30','jeu de sosiete', 'carte.jpg');
INSERT INTO cadeau VALUES ('', 'domino', '45','jeu de sosiete', 'domino.jpg');
INSERT INTO cadeau VALUES ('', 'monopoly', '30','jeu de sosiete', 'monopoly.jpg');

INSERT INTO cadeau VALUES ('', 'poupee', '20','jouet', 'poupee.jpg');
INSERT INTO cadeau VALUES ('', 'voiture', '30','jouet', 'voiture.jpg');
INSERT INTO cadeau VALUES ('', 'drones', '15','jouet', 'drones.jpg');
INSERT INTO cadeau VALUES ('', 'figurine', '20','jouet', 'figurine.jepg');
INSERT INTO cadeau VALUES ('', 'robot', '25','jouet', 'robot.jpg');
INSERT INTO cadeau VALUES ('', 'peluche', '5','jouet', 'peluche.jpg');
INSERT INTO cadeau VALUES ('', 'puzzles', '10','jouet', 'puzzle.jpg');

INSERT INTO cadeau VALUES ('', 'ballon de foot', '30','sport', 'foot.jpg');
INSERT INTO cadeau VALUES ('', 'ballon de basket', '35','sport', 'basket.jpg');
INSERT INTO cadeau VALUES ('', 'balle de base ball', '20','sport', 'ball.jpg');
INSERT INTO cadeau VALUES ('', 'gant de base ball', '20','sport', 'gant.jpg');
INSERT INTO cadeau VALUES ('', 'ballon de foot', '10','sport', 'foot.jpg');
INSERT INTO cadeau VALUES ('', 'godass', '20','sport', 'godesse.jpg');
INSERT INTO cadeau VALUES ('', 'follers', '30','sport', 'roller.jpg');
INSERT INTO cadeau VALUES ('', 'trampolines', '30','sport', 'trampoline.jpg');

INSERT INTO cadeau VALUES ('', 'lego', '20','jeu de construction', 'lego.jpg');
INSERT INTO cadeau VALUES ('', 'meccano', '25','jeu de construction', 'meccano.jpg');
INSERT INTO cadeau VALUES ('', 'planchette', '15','jeu de construction', 'plan.jpg');

INSERT INTO Categories VALUES ('', 'console');
INSERT INTO Categories VALUES ('', 'jeu de socoete');
INSERT INTO Categories VALUES ('', 'jouet');
INSERT INTO Categories VALUES ('', 'sport');
INSERT INTO Categories VALUES ('', 'jeu de construction');



INSERT INTO administrateur values("administrateur","administrateur");
INSERT INTO administrateur values("admin","bdmin");

