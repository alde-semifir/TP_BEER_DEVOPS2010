# Lister les quantités vendues de chaque article pour les années 2014,2015 ,2016
SELECT 
    ventes.ANNEE,
    article.NOM_ARTICLE AS Article,
    SUM(ventes.QUANTITE) AS QUANTITE
FROM
    article
        JOIN
    ventes ON article.ID_ARTICLE = ventes.ID_ARTICLE
where ventes.ANNEE between 2014 and 2016
GROUP BY ventes.ID_ARTICLE, ventes.ANNEE ;