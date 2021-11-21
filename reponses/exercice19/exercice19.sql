-- 19. Lister les quantités vendues de chaque article pour les années 2014,2015 ,2016.

SELECT article.ID_ARTICLE, article.NOM_ARTICLE, SUM(ventes.QUANTITE), ventes.ANNEE FROM ventes
INNER JOIN
article
ON ventes.ID_ARTICLE = article.ID_ARTICLE
WHERE ventes.ANNEE BETWEEN 2014 AND 2016
GROUP BY
article.ID_ARTICLE, ventes.ANNEE
order by
article.NOM_ARTICLE