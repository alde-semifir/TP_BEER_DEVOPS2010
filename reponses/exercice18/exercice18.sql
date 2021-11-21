-- 18. Lister les quantités vendues de chaque article pour l’année 2016.

SELECT article.ID_ARTICLE, article.NOM_ARTICLE, ventes.QUANTITE, ventes.ANNEE FROM ventes
INNER JOIN
article
ON ventes.ID_ARTICLE = article.ID_ARTICLE
WHERE ventes.ANNEE = 2016
GROUP BY
article.ID_ARTICLE;