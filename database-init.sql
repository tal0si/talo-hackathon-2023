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
('Nom1', 'Prenom1', '1980-01-01', '2021-11-15', true),
('Nom2', 'Prenom2', '1981-02-02', '2021-11-15', true),
('Nom3', 'Prenom3', '1982-03-03', '2021-11-15', true),
('Nom4', 'Prenom4', '1983-04-04', '2021-11-15', true),
('Nom5', 'Prenom5', '1984-05-05', '2021-11-15', true),
('Nom6', 'Prenom6', '1985-06-06', '2021-11-15', true),
('Nom7', 'Prenom7', '1986-07-07', '2021-12-09', false),
('Nom8', 'Prenom8', '1987-08-08', '2021-12-22', false),
('Nom9', 'Prenom9', '1988-09-09', '2021-12-26', false),
('Nom10', 'Prenom10', '1989-10-10', '2021-12-31', false),
('Nom11', 'Prenom11', '1990-11-11', '2022-01-18', false),
('Nom12', 'Prenom12', '1991-12-12', '2022-01-19', false),
('Nom13', 'Prenom13', '1992-01-13', '2022-04-04', false),
('Nom14', 'Prenom14', '1993-02-14', '2022-07-03', false),
('Nom15', 'Prenom15', '1994-03-15', '2022-08-09', false),
('Nom16', 'Prenom16', '1995-04-16', '2022-09-10', false),
('Nom17', 'Prenom17', '1996-05-17', '2022-12-17', false),
('Nom18', 'Prenom18', '1997-06-18', '2023-07-31', false),
('Nom19', 'Prenom19', '1998-07-19', '2023-09-26', false),
('Nom20', 'Prenom20', '1999-08-20', '2023-10-01', false);

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
('2022-09-05', '2023-08-01', 'Client1', 'Mission1', 3),
('2022-11-06', '2024-01-30', 'Client2', 'Mission2', 14),
('2023-09-06', '2025-02-27', 'Client3', 'Mission3', 7),
('2023-06-11', '2024-10-03', 'Client4', 'Mission4', 7),
('2023-01-25', '2024-06-18', 'Client5', 'Mission5', 8),
('2022-08-09', '2022-09-08', 'Client6', 'Mission6', 4),
('2022-07-27', '2023-08-21', 'Client7', 'Mission7', 5),
('2023-10-01', '2025-02-22', 'Client8', 'Mission8', 9),
('2023-02-08', '2024-04-03', 'Client9', 'Mission9', 10),
('2022-06-24', '2023-09-17', 'Client10', 'Mission10', 7),
('2022-06-23', '2023-03-20', 'Client11', 'Mission11', 16),
('2022-09-05', '2022-11-04', 'Client12', 'Mission12', 4),
('2022-06-03', '2023-06-28', 'Client13', 'Mission13', 14),
('2022-11-10', '2023-08-07', 'Client14', 'Mission14', 14),
('2023-10-09', '2023-12-08', 'Client15', 'Mission15', 3),
('2022-02-03', '2022-10-01', 'Client16', 'Mission16', 8),
('2022-08-06', '2023-10-30', 'Client17', 'Mission17', 5),
('2023-04-01', '2024-08-23', 'Client18', 'Mission18', 12),
('2022-09-18', '2023-11-12', 'Client19', 'Mission19', 18),
('2023-06-14', '2023-12-11', 'Client20', 'Mission20', 16);
