#INSERT INTO waaw.fournisseur VALUES(1, "fournisseur1", "fournisseur1@gmail.com");
#INSERT INTO waaw.fournisseur VALUES(2, "fournisseur2", "fournisseur2@gmail.com");
#INSERT INTO waaw.fournisseur VALUES(3, "fournisseur3", "fournisseur3@gmail.com");
#INSERT INTO waaw.fournisseur VALUES(4, "fournisseur4", "fournisseur4@gmail.com");
SELECT * FROM waaw.fournisseur;

#INSERT INTO waaw.fiche_produit VALUES(5, "vin5", "intitulé 5", "description du cinquieme vin", 4, "url photo 5", 6, 16, "bordeaux", "rouge","cepage vin 5", false, 2);
#INSERT INTO waaw.fiche_produit VALUES(1, "vin1", "intitulé 1", "description du premier vin", 2, "url photo 1", 14, 13, "bordeaux", "blanc","cepage vin 1", false, 1);
SELECT * FROM waaw.fiche_produit;

#INSERT INTO waaw.liste_des_coffrets VALUES(1, "coffret1", 5, 30);
SELECT * FROM waaw.liste_des_coffrets;

SELECT * FROM waaw.fiche_produit_liste_des_coffrets;


