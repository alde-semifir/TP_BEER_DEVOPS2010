SELECT DISTINCT
    (pays.NOM_PAYS)
FROM
    pays
        JOIN
    marque ON pays.ID_PAYS = marque.ID_PAYS
        JOIN
    article ON marque.ID_MARQUE = article.ID_MARQUE
        JOIN
    type ON article.ID_TYPE = type.ID_TYPE
WHERE
    type.NOM_TYPE = 'Trappiste'