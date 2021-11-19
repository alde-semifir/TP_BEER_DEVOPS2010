SELECT 
    article.NOM_ARTICLE as "Nom de l'article",
    SUM(ventes.QUANTITE) as "Quantité"
FROM
    ventes
        INNER JOIN
    article ON ventes.ID_ARTICLE = article.ID_ARTICLE
WHERE
    ventes.ANNEE = '2016'
GROUP BY article.NOM_ARTICLE;