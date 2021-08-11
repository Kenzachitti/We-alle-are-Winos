#CREATE DATABASE waaw;
#CREATE TABLE waaw.fournisseur (
#id_fournisseur MEDIUMINT NOT NULL AUTO_INCREMENT,
#nom_fournisseur CHAR ( 55 ) NOT NULL,
#mail_fournisseur CHAR ( 55 ) NOT NULL,
#PRIMARY KEY ( id_fournisseur )
#);
#INSERT INTO waaw.fournisseur VALUES ();
#CREATE TABLE waaw.fiche_produit (
#id_fiche MEDIUMINT NOT NULL AUTO_INCREMENT, 
#id_fournisseur MEDIUMINT,
#nom_vin CHAR ( 55 ) NOT NULL,
#intitule_fiche CHAR ( 200 ) NOT NULL,
#description_produit MEDIUMTEXT NOT NULL,
#note_produit CHAR ( 100 ) NOT NULL,
#photo_produit CHAR ( 250 ) NOT NULL, 
#quantite_vin MEDIUMINT,
#prix_vin CHAR ( 55 ) NOT NULL,
#region_origine CHAR ( 100 ) NOT NULL,
#couleur_vin CHAR ( 55 ) NOT NULL,
#cepage_vin CHAR ( 55 ) NOT NULL,
#bulles_vin CHAR ( 55 ) NOT NULL,
#PRIMARY KEY ( id_fiche ),
#FOREIGN KEY ( id_fournisseur ) REFERENCES fournisseur ( id_fournisseur )
#);


#CREATE TABLE waaw.coffret (
#id_coffret MEDIUMINT NOT NULL AUTO_INCREMENT,
#nom_coffret CHAR ( 55 ) NOT NULL,
#id_fiche MEDIUMINT,
#prix_coffret CHAR ( 55 ) NOT NULL,
#PRIMARY KEY ( id_coffret ),
#FOREIGN KEY ( id_fiche ) REFERENCES fiche_produit ( id_fiche )
#);

#CREATE TABLE waaw.fiche_coffret (
#id_coffret MEDIUMINT,
#id_fiche MEDIUMINT, 
#PRIMARY KEY ( id_fiche, id_coffret ),
#FOREIGN KEY ( id_fiche ) REFERENCES fiche_produit ( id_fiche ),
#FOREIGN KEY ( id_coffret ) REFERENCES coffret ( id_coffret )
#);

#CREATE TABLE waaw.tag (
#id_tag MEDIUMINT NOT NULL AUTO_INCREMENT,
#tag_accord CHAR ( 55 ) NOT NULL,
#tag_gout CHAR ( 55 ) NOT NULL,
#PRIMARY KEY ( id_tag )
#);

#CREATE TABLE waaw.fiche_tag (
#id_tag MEDIUMINT,
#id_fiche MEDIUMINT,
#PRIMARY KEY ( id_fiche,id_tag ),
#FOREIGN KEY ( id_fiche ) REFERENCES fiche_produit ( id_fiche ),
#FOREIGN KEY ( id_tag ) REFERENCES tag ( id_tag )
#);

#CREATE TABLE waaw.commande (
#id_commande MEDIUMINT NOT NULL AUTO_INCREMENT,
#date_commande DATE NOT NULL,
#date_livraison_commande DATE NOT NULL,
#PRIMARY KEY ( id_commande )
#);

#CREATE TABLE waaw.fiche_commande (
#id_commande MEDIUMINT,
#id_fiche MEDIUMINT,
#PRIMARY KEY ( id_fiche, id_commande ),
#FOREIGN KEY ( id_fiche ) REFERENCES fiche_produit ( id_fiche ),
#FOREIGN KEY ( id_commande ) REFERENCES commande ( id_commande )
#);

#CREATE TABLE waaw.utilisateur (
#id_utilisateur MEDIUMINT NOT NULL AUTO_INCREMENT,
#mail_utilisateur CHAR ( 55 ) NOT NULL,
#mpd_utilisateur CHAR ( 55 ) NOT NULL,
#adresse_utilisateur CHAR ( 55 ) NOT NULL,
#PRIMARY KEY ( id_utilisateur )
#);

#CREATE TABLE waaw.utilisateur_commande (
#id_commande MEDIUMINT,
#id_utilisateur MEDIUMINT,
#PRIMARY KEY ( id_utilisateur, id_commande ),
#FOREIGN KEY ( id_utilisateur ) REFERENCES utilisateur ( id_utilisateur ),
#FOREIGN KEY ( id_commande ) REFERENCES commande ( id_commande )
#);

#CREATE TABLE waaw.panier(
#id_fiche MEDIUMINT,
#id_utilisateur MEDIUMINT,
#PRIMARY KEY ( id_fiche, id_utilisateur ),
#FOREIGN KEY ( id_utilisateur ) REFERENCES utilisateur ( id_utilisateur ),
#FOREIGN KEY ( id_fiche ) REFERENCES fiche_produit ( id_fiche )
#);

#CREATE TABLE waaw.equipe_waaw (
#id_equipe MEDIUMINT NOT NULL AUTO_INCREMENT,
#mail_equipe CHAR ( 55 ) NOT NULL,
#PRIMARY KEY ( id_equipe )
#);

#CREATE TABLE waaw.article (
#id_article MEDIUMINT NOT NULL AUTO_INCREMENT,
#intitule_article CHAR ( 100 ) NOT NULL,
#texte_article LONGTEXT NOT NULL,
#url_media CHAR ( 250 ) NOT NULL,
#PRIMARY KEY ( id_article )
#);

#CREATE TABLE waaw.equipe_utilisateur (
#id_equipe MEDIUMINT,
#id_utilisateur MEDIUMINT,
#PRIMARY KEY ( id_equipe, id_utilisateur ),
#FOREIGN KEY ( id_utilisateur ) REFERENCES utilisateur ( id_utilisateur ),
#FOREIGN KEY ( id_equipe ) REFERENCES equipe_waaw ( id_equipe )
#);

#CREATE TABLE waaw.equipe_article(
#id_equipe MEDIUMINT,
#id_article MEDIUMINT,
#PRIMARY KEY ( id_equipe, id_article ),
#FOREIGN KEY ( id_equipe ) REFERENCES equipe_waaw  ( id_equipe ),
#FOREIGN KEY ( id_article ) REFERENCES article ( id_article )
#fiche_produit);



