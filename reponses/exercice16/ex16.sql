SELECT 
    ventes.ANNEE,
    ventes.NUMERO_TICKET,
    concat(ROUND(SUM((ventes.QUANTITE * article.PRIX_ACHAT) * 1.15),2), _ucs2 0x20AC) AS prix_total
FROM
    ventes
        INNER JOIN
    article ON ventes.ID_ARTICLE = article.ID_ARTICLE
GROUP BY ventes.NUMERO_TICKET, ventes.ANNEE;