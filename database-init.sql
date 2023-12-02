\c postgres

create table hello_world (
    hello text not null
);

INSERT INTO hello_world (hello) VALUES (
E'H         H  eeeee  l          l          oooooo   oooooo  w          w     \n' ||
E'H         H  e      l          l         o      o o      o w        w    w  \n' ||
E'H         H  e      l          l         o      o o      o w      w    w    \n' ||
E'H   HHH   H  eeeee  l          l         o      o o      o w    w    w      \n' ||
E'H   HHH   H  e      l          l         o      o o      o w  w    w  w     \n' ||
E'H   HHH   H  e      l          l         o      o o      o w w      w w     \n' ||
E'H         H  e      l          l         o      o o      o ww        ww     \n' ||
E'H         H  eeeee  llllll     llllll     oooooo   oooooo  w          w     \n'
);

CREATE TABLE talosien (
    id SERIAL PRIMARY KEY,
    nom VARCHAR(50),
    prenom VARCHAR(50),
    date_naissance DATE,
    date_arrivee DATE,
    est_associe BOOLEAN DEFAULT false
);

CREATE TABLE cooptation (
    id SERIAL PRIMARY KEY,
    employe_id INT REFERENCES talosien(id),
    coopte_id INT REFERENCES talosien(id)
);

CREATE TABLE mission (
    id SERIAL PRIMARY KEY,
    date_debut DATE,
    date_fin DATE,
    nom_client VARCHAR(100),
    nom_mission VARCHAR(100),
    employe_id INT REFERENCES talosien(id)
);


INSERT INTO talosien (nom, prenom, date_naissance, date_arrivee, est_associe) VALUES
('Honyme', 'Anne', '1980-01-01', '2021-11-15', true),
('Jean', 'Michel', '1981-02-02', '2021-11-15', true),
('Chuck', 'Norris', '1982-03-03', '2021-11-15', true),
('Bilbo', 'Baggins', '1983-04-04', '2021-11-15', true),
('Homer', 'Simpson', '1984-05-05', '2021-11-15', true),
('Harry', 'Potter', '1985-06-06', '2021-11-15', true),
('Barack', 'Obama', '1986-07-07', '2021-12-09', false),
('Michael', 'Jackson', '1987-08-08', '2021-12-22', false),
('Elvis', 'Presley', '1988-09-09', '2021-12-26', false),
('Marilyn', 'Monroe', '1989-10-10', '2021-12-31', false),
('Albert', 'Einstein', '1990-11-11', '2022-01-18', false),
('Charlie', 'Chaplin', '1991-12-12', '2022-01-19', false),
('SpongeBob', 'SquarePants', '1992-01-13', '2022-04-04', false),
('Bugs', 'Bunny', '1993-02-14', '2022-07-03', false),
('Captain', 'America', '1994-03-15', '2022-08-09', false),
('Darth', 'Vader', '1995-04-16', '2022-09-10', false),
('Sherlock', 'Holmes', '1996-05-17', '2022-12-17', false),
('Donald', 'Duck', '1997-06-18', '2023-07-31', false),
('Winnie', 'The Pooh', '1998-07-19', '2023-09-26', false),
('Bart', 'Simpson', '1999-08-20', '2023-10-01', false);

INSERT INTO cooptation (employe_id, coopte_id) VALUES
(3, 14),
(3, 4),
(5, 20),
(5, 18),
(6, 19),
(6, 13),
(11, 2),
(11, 16),
(12, 3),
(12, 9),
(13, 1),
(13, 12);

INSERT INTO mission (date_debut, date_fin, nom_client, nom_mission, employe_id) VALUES
('2022-09-05', '2023-08-01', 'Google', 'Projet de développement web', 3),
('2022-11-06', '2024-01-30', 'Microsoft', 'Migration vers le cloud', 14),
('2023-09-06', '2025-02-27', 'Amazon', 'Analyse de données', 7),
('2023-06-11', '2024-10-03', 'Promod', 'Développement d''application Java Srping boot', 7),
('2023-01-25', '2024-06-18', 'Leroy Merlin', 'Développement d''application  NodeJs', 8),
('2022-08-09', '2022-09-08', 'Adeo', 'Optimisation de base de données', 4),
('2022-07-27', '2023-08-21', 'Brainfinger', 'Babyfoot connécté', 5),
('2023-10-01', '2025-02-22', 'Intel', 'Recherche en intelligence artificielle', 9),
('2023-02-08', '2024-04-03', 'HP', 'Gestion de projet', 10),
('2022-06-24', '2023-09-17', 'Dell', 'Virtualisation de serveurs', 7),
('2022-06-23', '2023-03-20', 'Adobe', 'Conception graphique', 16),
('2022-09-05', '2022-11-04', 'VMware', 'Virtualisation de postes de travail', 4),
('2022-06-03', '2023-06-28', 'Symantec', 'Sécurité informatique', 14),
('2022-11-10', '2023-08-07', 'Salesforce', 'CRM et gestion des ventes', 14),
('2023-10-09', '2023-12-08', 'SAP', 'Implémentation de système ERP', 3),
('2022-02-03', '2022-10-01', 'Red Hat', 'Administration de serveurs Linux', 8),
('2022-08-06', '2023-10-30', 'Juniper Networks', 'Configuration de routeurs', 5),
('2023-04-01', '2024-08-23', 'Nvidia', 'Calculs parallèles et GPU', 12),
('2022-09-18', '2023-11-12', 'Cisco', 'Déploiement de réseau Wi-Fi', 18),
('2023-06-14', '2023-12-11', 'Vicat', 'Migration vers une architecture microservices', 16);
