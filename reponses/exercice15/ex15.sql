SELECT 
    article.NOM_ARTICLE,
    marque.NOM_MARQUE,
    continent.NOM_CONTINENT
FROM
    article
        INNER JOIN
    marque ON article.ID_MARQUE = marque.ID_MARQUE
        INNER JOIN
    pays ON marque.ID_PAYS = pays.ID_PAYS
        INNER JOIN
    continent ON pays.ID_CONTINENT = continent.ID_CONTINENT
WHERE
    continent.NOM_CONTINENT = 'Afrique';