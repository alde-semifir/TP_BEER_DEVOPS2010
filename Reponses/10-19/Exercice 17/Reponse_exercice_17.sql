-- 17  Donner le C.A. par année.

 SELECT 
    annee,
    ROUND(SUM((QUANTITE * PRIX_ACHAT) * 1.15), 2) AS 'prix'
FROM
    Ventes
        JOIN
    Article ON article.id_article = ventes.ID_ARTICLE
GROUP BY ANNEE;