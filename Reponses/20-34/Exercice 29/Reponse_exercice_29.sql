-- 29  Lister les types de bières suivant l’évolution de leurs ventes entre 2015 et 2016.
-- Classer le résultat par ordre décroissant des performances.

SELECT 
    NOM_TYPE,
    ((SELECT 
            SUM(QUANTITE)
        FROM
            ventes
                INNER JOIN
            article USING (ID_ARTICLE)
        WHERE
            article.ID_TYPE = type.ID_TYPE
                AND ANNEE = 2016) - (SELECT 
            SUM(QUANTITE)
        FROM
            ventes
                INNER JOIN
            article USING (ID_ARTICLE)
        WHERE
            article.ID_TYPE = type.ID_TYPE
                AND ANNEE = 2015)) AS EVOLUTION
FROM
    type
GROUP BY ID_TYPE
ORDER BY EVOLUTION DESC;