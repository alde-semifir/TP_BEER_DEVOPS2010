-- 14  Lister les marques de bières du continent ‘Afrique’

SELECT id_marque, nom_marque, nom_pays, nom_continent
FROM Marque
    JOIN pays 
    ON Marque.ID_pays = pays.ID_pays
    JOIN continent 
    ON Pays.ID_continent = continent.ID_continent
WHERE continent.nom_continent = 'Afrique';