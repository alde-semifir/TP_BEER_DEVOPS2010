SELECT DISTINCT
    pays.NOM_PAYS
FROM
    type
        INNER JOIN
    article ON type.ID_TYPE = article.ID_TYPE
        INNER JOIN
    marque ON article.ID_MARQUE = marque.ID_MARQUE
        INNER JOIN
    pays ON marque.ID_PAYS = pays.ID_PAYS
WHERE
    type.NOM_TYPE = 'Trappiste';