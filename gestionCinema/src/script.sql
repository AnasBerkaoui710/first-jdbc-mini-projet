create database cinema;

use cinema;

CREATE TABLE film (
    id_film INT AUTO_INCREMENT PRIMARY KEY,
    titre VARCHAR(50) NOT NULL,
    duree INT NOT NULL,
    categorie VARCHAR(100)
);

CREATE TABLE seance (
	id INT AUTO_INCREMENT PRIMARY KEY,
	horaire INT NOT NULL,
    salle VARCHAR(50),
    capacite_max DOUBLE
);


CREATE TABLE spectateur(
	id_spectateur INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(50) NOT NULL,
    email VARCHAR(100)
);

CREATE TABLE tickets(
	num INT PRIMARY KEY,
    prix DOUBLE NOT NULL
);

CREATE TABLE reservation(
	id_reser INT AUTO_INCREMENT PRIMARY KEY,
    date_reserv VARCHAR(50),
    id_spectateur int,
    id_seance int,
    foreign key (id_spectateur) references spectateur (id_spectateur),
    foreign key (id_seance) references seance (id)
);

ALTER TABLE seance
ADD COLUMN id_film INT,
ADD CONSTRAINT fk_seance_film FOREIGN KEY (id_film) REFERENCES film(id_film);

ALTER TABLE tickets
ADD COLUMN id_reser INT,
ADD CONSTRAINT fk_tickets_reservation FOREIGN KEY (id_reser) REFERENCES reservation(id_reser);



