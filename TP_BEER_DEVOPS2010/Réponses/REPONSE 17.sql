SELECT ventes.ANNEE, round(SUM((ventes.QUANTITE * article.PRIX_ACHAT) * 1.15),2) as CA
FROM ventes
JOIN article ON ventes.ID_ARTICLE = article.ID_ARTICLE
GROUP BY ventes.ANNEE;