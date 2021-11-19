SELECT 
    ventes.id_article, quantite, ventes.ANNEE
FROM
    ventes
        INNER JOIN
    article AS a ON a.ID_ARTICLE = ventes.ID_ARTICLE
        AND ventes.ANNEE in (2014,2015,2016)
group by ventes.ID_ARTICLE;