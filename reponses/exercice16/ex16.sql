SELECT 
    ventes.ANNEE,
    ventes.NUMERO_TICKET,
    round(SUM((ventes.QUANTITE * article.PRIX_ACHAT) * 1.15),2) AS prix_total
FROM
    ventes
        INNER JOIN
    article ON ventes.ID_ARTICLE = article.ID_ARTICLE
GROUP BY ventes.NUMERO_TICKET;