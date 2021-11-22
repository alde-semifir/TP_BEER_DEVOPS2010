-- 18. Lister les quantités vendues de chaque article pour l’année 2016.
SELECT 
    ventes.ID_ARTICLE,
    NOM_ARTICLE,
    SUM(QUANTITE) AS VENTES_PAR_ARTICLE,
    ANNEE
FROM
    ventes
        INNER JOIN
    article ON ventes.ID_ARTICLE = article.ID_ARTICLE
WHERE
    ANNEE = 2016
GROUP BY ventes.ID_ARTICLE
ORDER BY ventes.ID_ARTICLE;