# Lister les quantités vendues de chaque article pour l’année 2016.
SELECT 
    ventes.ANNEE,
    article.NOM_ARTICLE AS Article,
    SUM(ventes.QUANTITE) AS QUANTITE
FROM
    article
        JOIN
    ventes ON article.ID_ARTICLE = ventes.ID_ARTICLE
WHERE
    ventes.ANNEE = 2016
GROUP BY article.ID_ARTICLE;
