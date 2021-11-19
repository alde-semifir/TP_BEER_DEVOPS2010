SELECT 
    ventes.ANNEE,
    concat(ROUND(SUM((ventes.QUANTITE * article.PRIX_ACHAT) * 1.15),2), _ucs2 0x20AC) AS CA
FROM
    ventes
        INNER JOIN
    article ON ventes.ID_ARTICLE = article.ID_ARTICLE
GROUP BY ventes.ANNEE;