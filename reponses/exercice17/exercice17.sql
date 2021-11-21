-- 17. Donner le C.A. par anné

SELECT 
    ventes.ANNEE,
    round(SUM(ventes.QUANTITE*article.PRIX_ACHAT*1.15),2) AS 'CA / An'
FROM
	ventes
lEFT JOIN
	article
ON ventes.ID_ARTICLE = article.ID_ARTICLE
GROUP BY
	ventes.ANNEE;