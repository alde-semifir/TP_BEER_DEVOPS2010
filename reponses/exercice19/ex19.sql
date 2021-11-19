SELECT 
    article.NOM_ARTICLE, ventes.ANNEE, SUM(ventes.QUANTITE)
FROM
    ventes
        INNER JOIN
    article ON ventes.ID_ARTICLE = article.ID_ARTICLE
GROUP BY article.ID_ARTICLE, ventes.ANNEE;