-- G�n�r� par Oracle SQL Developer Data Modeler 23.1.0.087.0806
--   � :        2024-05-19 21:22:37 HAE
--   site :      Oracle Database 21c
--   type :      Oracle Database 21c



-- predefined type, no DDL - MDSYS.SDO_GEOMETRY

-- predefined type, no DDL - XMLTYPE

CREATE TABLE class (
    class_id  INTEGER NOT NULL,
    nom_class VARCHAR2(100) NOT NULL
);

ALTER TABLE class ADD CONSTRAINT class_pk PRIMARY KEY ( class_id );

CREATE TABLE projet (
    projet_id            INTEGER NOT NULL,
    nom_projet           VARCHAR2(100) NOT NULL,
    description          CLOB NOT NULL,
    utilisateurs_user_id INTEGER NOT NULL,
    class_class_id2      INTEGER NOT NULL
);

ALTER TABLE projet ADD CONSTRAINT projet_pk PRIMARY KEY ( projet_id );

CREATE TABLE task (
    task_id          INTEGER NOT NULL,
    nom_task         VARCHAR2(100) NOT NULL,
    status           VARCHAR2(50) NOT NULL,
    projet_projet_id INTEGER NOT NULL
);

ALTER TABLE task ADD CONSTRAINT task_pk PRIMARY KEY ( task_id );

CREATE TABLE utilisateurs (
    user_id    INTEGER NOT NULL,
    username   VARCHAR2(50) NOT NULL,
    motdepasse VARCHAR2(255) NOT NULL,
    email      VARCHAR2(100) NOT NULL
);

ALTER TABLE utilisateurs ADD CONSTRAINT utilisateurs_pk PRIMARY KEY ( user_id );

ALTER TABLE projet
    ADD CONSTRAINT projet_class_fkv2 FOREIGN KEY ( class_class_id2 )
        REFERENCES class ( class_id );

ALTER TABLE projet
    ADD CONSTRAINT projet_utilisateurs_fk FOREIGN KEY ( utilisateurs_user_id )
        REFERENCES utilisateurs ( user_id );

ALTER TABLE task
    ADD CONSTRAINT task_projet_fk FOREIGN KEY ( projet_projet_id )
        REFERENCES projet ( projet_id );



-- Rapport r�capitulatif d'Oracle SQL Developer Data Modeler : 
-- 
-- CREATE TABLE                             4
-- CREATE INDEX                             0
-- ALTER TABLE                              7
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          0
-- CREATE MATERIALIZED VIEW                 0
-- CREATE MATERIALIZED VIEW LOG             0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                   0
-- WARNINGS                                 0

REM INSERTING into RESTSCOTT.UTILISATEURS
SET DEFINE OFF;
Insert into RESTSCOTT.UTILISATEURS (USER_ID,USERNAME,MOTDEPASSE,EMAIL) values ('1','alicia','alicia123','alicia@example.com');
Insert into RESTSCOTT.UTILISATEURS (USER_ID,USERNAME,MOTDEPASSE,EMAIL) values ('2','max','max123','max@example.com');
Insert into RESTSCOTT.UTILISATEURS (USER_ID,USERNAME,MOTDEPASSE,EMAIL) values ('3','william','william123','william@example.com');

REM INSERTING into RESTSCOTT.CLASS
SET DEFINE OFF;
Insert into RESTSCOTT.CLASS (CLASS_ID,NOM_CLASS) values ('1','Application Web');
Insert into RESTSCOTT.CLASS (CLASS_ID,NOM_CLASS) values ('2','Programmation Objet 2');
Insert into RESTSCOTT.CLASS (CLASS_ID,NOM_CLASS) values ('3','Math');
Insert into RESTSCOTT.CLASS (CLASS_ID,NOM_CLASS) values ('4','Philosophie');
Insert into RESTSCOTT.CLASS (CLASS_ID,NOM_CLASS) values ('5','Education Physique');

-- Insertion de 15 objets dans la table PROJET
INSERT INTO PROJET (PROJET_ID, NOM_PROJET, DESCRIPTION, UTILISATEURS_USER_ID, CLASS_CLASS_ID2) 
VALUES
    (1, 'Projet Application Web', 'D�veloppement d''une application web compl�te.', 1, 1),
    (2, 'Projet Programmation Objet', 'Cr�ation d''un syst�me orient� objet avanc�.', 2, 2),
    (3, 'Projet Math�matiques', 'Recherche et r�solution de probl�mes math�matiques.', 3, 3),
    (4, 'Projet Philosophie', 'Analyse et discussion des grands textes philosophiques.', 1, 4),
    (5, 'Projet �ducation Physique', 'D�veloppement d''un programme d''entra�nement physique.', 2, 5),
    (6, 'Projet Application Web Avanc�', 'Optimisation et ajout de nouvelles fonctionnalit�s.', 3, 1),
    (7, 'Projet Programmation Objet II', 'Mise en �uvre des principes avanc�s de la POO.', 1, 2),
    (8, 'Projet Statistiques', '�tude approfondie des statistiques et probabilit�s.', 2, 3),
    (9, 'Projet �thique et Philosophie', 'Exploration des questions �thiques en philosophie.', 3, 4),
    (10, 'Projet Sports Collectifs', 'Organisation et gestion de sports collectifs.', 1, 5),
    (11, 'Projet Web S�curis�', 'D�veloppement d''applications web s�curis�es.', 2, 1),
    (12, 'Projet Design Patterns', 'Utilisation des design patterns en programmation objet.', 3, 2),
    (13, 'Projet G�om�trie', '�tude des formes et structures g�om�triques.', 1, 3),
    (14, 'Projet Philosophie Contemporaine', 'Analyse des courants philosophiques contemporains.', 2, 4),
    (15, 'Projet Nutrition et Fitness', 'Cr�ation d''un plan de nutrition et de fitness.', 3, 5);


-- Insertion de 30 objets dans la table Task
INSERT INTO Task (TASK_ID, NOM_TASK, STATUS, PROJET_PROJET_ID) 
VALUES
    (1, 'T�che de d�veloppement frontend', 'En cours', 1),
    (2, 'T�che de d�veloppement backend', 'Termin�e', 1),
    (3, 'Impl�mentation des classes', 'En cours', 2),
    (4, 'Test des classes', 'En attente', 2),
    (5, 'Recherche th�orique', 'Termin�e', 3),
    (6, 'R�solution de probl�mes', 'En cours', 3),
    (7, 'Lecture de textes', 'En attente', 4),
    (8, 'Discussion de groupe', 'Termin�e', 4),
    (9, 'Cr�ation du programme d''entra�nement', 'En cours', 5),
    (10, '�valuation de la condition physique', 'Termin�e', 5),
    (11, 'Optimisation des performances', 'En attente', 6),
    (12, 'D�ploiement de nouvelles fonctionnalit�s', 'Termin�e', 6),
    (13, 'Mise en �uvre des principes avanc�s', 'En cours', 7),
    (14, 'Revue de code', 'Termin�e', 7),
    (15, 'Collecte de donn�es statistiques', 'En attente', 8),
    (16, 'Analyse des r�sultats', 'En cours', 8),
    (17, 'Discussion �thique', 'Termin�e', 9),
    (18, 'R�daction de l''essai', 'En attente', 9),
    (19, 'Organisation des �quipes', 'En cours', 10),
    (20, 'Planification des matchs', 'Termin�e', 10),
    (21, 'Mise en place des mesures de s�curit�', 'En attente', 11),
    (22, 'Test de p�n�tration', 'En cours', 11),
    (23, 'Application des design patterns', 'Termin�e', 12),
    (24, 'Refactorisation du code', 'En attente', 12),
    (25, '�tude des structures g�om�triques', 'En cours', 13),
    (26, 'Application des concepts g�om�triques', 'Termin�e', 13),
    (27, 'Analyse des textes contemporains', 'En attente', 14),
    (28, 'Synth�se des courants philosophiques', 'En cours', 14),
    (29, 'Plan de nutrition', 'Termin�e', 15),
    (30, '�laboration du programme de fitness', 'En attente', 15);

BEGIN
    ORDS.ENABLE_OBJECT(
        p_object => 'UTILISATEURS',
        p_object_type => 'TABLE'
    );
END;
/

BEGIN
    ORDS.ENABLE_SCHEMA(
        p_enabled => TRUE,
        p_schema => 'RESTSCOTT',
        p_url_mapping_type => 'BASE_PATH',
        p_url_mapping_pattern => 'restscott',
        p_auto_rest_auth => FALSE
    );
END;
/


BEGIN
    ORDS.ENABLE_OBJECT(
        p_object => 'UTILISATEURS',
        p_object_type => 'TABLE'
    );
END;
/


BEGIN
    ORDS.ENABLE_OBJECT(
        p_object => 'PROJET',
        p_object_type => 'TABLE'
    );
END;
/
BEGIN
    ORDS.ENABLE_OBJECT(
        p_object => 'TASK',
        p_object_type => 'TABLE'
    );
END;
/
BEGIN
    ORDS.ENABLE_OBJECT(
        p_object => 'CLASS',
        p_object_type => 'TABLE'
    );
END;
/