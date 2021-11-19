SELECT 
    ventes.id_article, quantite
FROM
    ventes
        INNER JOIN
    article AS a ON a.ID_ARTICLE = ventes.ID_ARTICLE
        AND ventes.ANNEE = 2016
group by ventes.ID_ARTICLE;