SELECT 
    article.ID_ARTICLE, article.NOM_ARTICLE
FROM
    article
WHERE
    (SELECT 
            SUM(ventes.QUANTITE)
        FROM
            ventes
        WHERE
            ventes.ID_ARTICLE = article.ID_ARTICLE
                AND ventes.ANNEE = 2014
        GROUP BY ventes.ID_ARTICLE) IS NULL;