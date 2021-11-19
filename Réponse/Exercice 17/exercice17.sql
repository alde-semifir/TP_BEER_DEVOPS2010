SELECT 
    ROUND(SUM(article.PRIX_ACHAT * ventes.QUANTITE * 1.15),
            2) AS 'Montant',
    ventes.ANNEE AS 'Année'
FROM
    article
        JOIN
    ventes ON article.ID_ARTICLE = ventes.ID_ARTICLE
GROUP BY ventes.ANNEE