SELECT 
    nom_article, id_article
FROM
    article
        INNER JOIN
    marque AS m ON m.ID_MARQUE = article.ID_MARQUE
        INNER JOIN
    pays AS p ON p.ID_PAYS = m.ID_PAYS
        INNER JOIN
    continent AS c ON c.ID_CONTINENT = p.ID_CONTINENT
        AND c.NOM_CONTINENT = 'Afrique';