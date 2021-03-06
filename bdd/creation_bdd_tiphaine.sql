#CREATE DATABASE waaw;

#CREATE TABLE waaw.fournisseur (
#	id_fournisseur MEDIUMINT NOT NULL AUTO_INCREMENT,
#    nom_fournisseur CHAR(55),
#    mail_fournisseur CHAR(55),
 #   PRIMARY KEY (id_fournisseur)
#);

#CREATE TABLE waaw.fiche_produit (
	#id_fiche MEDIUMINT NOT NULL AUTO_INCREMENT,
 #   nom_vin CHAR(55),
#    intitule_fiche CHAR(100),
 #   description_produit MEDIUMTEXT,
    #note_produit MEDIUMINT,
    #photo_produit MEDIUMTEXT,
   # quantite_vin MEDIUMINT,
   # prix_vin MEDIUMINT,
  #  region_origine CHAR(55),
 #   couleur_vin CHAR(55),
#    cepage_vin CHAR(55),
   # bulles_vin BOOLEAN,
  #  id_fournisseur MEDIUMINT,
  #  PRIMARY KEY (id_fiche),
 #   FOREIGN KEY (id_fournisseur) REFERENCES fournisseur(id_fournisseur)
#);

#CREATE TABLE waaw.liste_des_coffrets (
#	id_coffret MEDIUMINT NOT NULL AUTO_INCREMENT,
   # nom_coffret CHAR(55),
   # id_fiche MEDIUMINT,
   # prix_fiche MEDIUMINT,
  #  PRIMARY KEY (id_coffret),
 #   FOREIGN KEY (id_fiche) REFERENCES fiche_produit(id_fiche)
#);

#CREATE TABLE waaw.tag (
	#id_tag MEDIUMINT NOT NULL AUTO_INCREMENT,
  #  tag_accords CHAR(55),
 #   tag_gout CHAR(55),
#    PRIMARY KEY (id_tag)
#);

#CREATE TABLE waaw.commande (
	#id_commande MEDIUMINT NOT NULL AUTO_INCREMENT,
   # date_commande DATETIME,
  #  date_livraison_commande DATETIME,
 #   PRIMARY KEY (id_commande)
#);

#CREATE TABLE waaw.utilisateur (
#	id_utilisateur MEDIUMINT NOT NULL AUTO_INCREMENT,
   # mail_utilisateur CHAR(55),
   # mdp_utilisateur CHAR(55),
  #  adresse_utilisateur CHAR(100),
 #   PRIMARY KEY (id_utilisateur)
#);

CREATE TABLE waaw.panier (
	id_panier MEDIUMINT NOT NULL AUTO_INCREMENT,
    liste_fiche_produit MEDIUMINT,
    id_utilisateur MEDIUMINT,
    PRIMARY KEY (id_panier),
    FOREIGN KEY (liste_fiche_produit) REFERENCES fiche_produit(id_fiche),
    FOREIGN KEY (id_utilisateur) REFERENCES utilisateur(id_utilisateur)
);

CREATE TABLE waaw.equipe_waaw (
	id_equipe MEDIUMINT NOT NULL AUTO_INCREMENT,
    mail_equipe CHAR(55),
    PRIMARY KEY (id_equipe)
);

CREATE TABLE waaw.article (
	id_article MEDIUMINT NOT NULL AUTO_INCREMENT,
    intitule_article CHAR(100),
    texte_article LONGTEXT,
    url_media MEDIUMTEXT,
    PRIMARY KEY (id_article)
);

CREATE TABLE waaw.article_equipe_waaw (
	id_article MEDIUMINT,
    id_equipe MEDIUMINT,
    FOREIGN KEY (id_article) REFERENCES article(id_article),
    FOREIGN KEY (id_equipe) REFERENCES equipe_waaw(id_equipe),
    PRIMARY KEY (id_article, id_equipe)
);

CREATE TABLE waaw.equipe_waaw_utilisateur (
	id_equipe MEDIUMINT,
    id_utilisateur MEDIUMINT,
    FOREIGN KEY (id_equipe) REFERENCES equipe_waaw(id_equipe),
    FOREIGN KEY (id_utilisateur) REFERENCES utilisateur(id_utilisateur),
    PRIMARY KEY (id_equipe, id_utilisateur)
);

CREATE TABLE waaw.utilisateur_commande (
	id_utilisateur MEDIUMINT,
    id_commande MEDIUMINT,
    FOREIGN KEY (id_utilisateur) REFERENCES utilisateur(id_utilisateur),
    FOREIGN KEY (id_commande) REFERENCES commande(id_commande),
    PRIMARY KEY (id_utilisateur, id_commande)
);

CREATE TABLE waaw.fiche_produit_commande (
	id_fiche MEDIUMINT, 
    id_commande MEDIUMINT,
    FOREIGN KEY (id_fiche) REFERENCES fiche_produit(id_fiche),
    FOREIGN KEY (id_commande) REFERENCES commande(id_commande),
    PRIMARY KEY (id_fiche, id_commande)
);

CREATE TABLE waaw.fiche_produit_tag (
	id_fiche MEDIUMINT,
    id_tag MEDIUMINT,
    FOREIGN KEY (id_fiche) REFERENCES fiche_produit(id_fiche),
    FOREIGN KEY (id_tag) REFERENCES tag(id_tag),
    PRIMARY KEY (id_fiche, id_tag)
);

CREATE TABLE waaw.fiche_produit_liste_des_coffrets (
	id_fiche MEDIUMINT,
    id_coffret MEDIUMINT,
    FOREIGN KEY (id_fiche) REFERENCES fiche_produit(id_fiche),
    FOREIGN KEY (id_coffret) REFERENCES liste_des_coffrets(id_coffret),
    PRIMARY KEY (id_fiche, id_coffret)
);
