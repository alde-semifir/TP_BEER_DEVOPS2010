SELECT  marque.NOM_MARQUE, continent.NOM_CONTINENT
FROM marque
JOIN pays on marque.ID_pays = pays.ID_PAYS
JOIN continent on continent.ID_CONTINENT = pays.ID_CONTINENT
where continent.NOM_CONTINENT = "Afrique"