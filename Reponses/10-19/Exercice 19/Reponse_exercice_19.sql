-- 19. Lister les quantités vendues de chaque article pour les années 2014, 2015, 2016.
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
    ANNEE BETWEEN 2014 AND 2016
GROUP BY article.id_article , annee
ORDER BY ventes.ID_ARTICLE;