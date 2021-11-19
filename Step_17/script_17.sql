SELECT 
    ventes.ANNEE AS Année,
    ROUND(SUM(ventes.QUANTITE * article.PRIX_ACHAT * 1.15)) AS Montant
FROM
    article
        JOIN
    ventes ON article.ID_ARTICLE = ventes.ID_ARTICLE
GROUP BY ANNEE
