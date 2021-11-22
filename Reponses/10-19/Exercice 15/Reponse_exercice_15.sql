-- 15 Lister les bières du continent ‘Afrique’
SELECT id_article,
    nom_article,
    nom_marque,
    nom_pays,
    nom_continent,
    VOLUME
FROM Article
    JOIN Marque ON Article.id_marque = Marque.Id_marque
    JOIN pays ON Marque.ID_pays = pays.ID_pays
    JOIN continent ON Pays.ID_continent = continent.ID_continent
WHERE continent.nom_continent = 'Afrique';