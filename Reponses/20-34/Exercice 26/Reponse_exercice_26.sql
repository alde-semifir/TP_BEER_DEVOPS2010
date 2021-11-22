-- 26. Donner l’ID, le nom, le volume et la quantité vendue des 20 articles les plus vendus en 2016.

SELECT 
    ID_ARTICLE,
    NOM_ARTICLE,
    VOLUME,
    (SELECT 
            SUM(quantite)
        FROM
            Ventes
        WHERE
            ID_ARTICLE = A.ID_ARTICLE
                AND ANNEE = 2016) AS Qté
FROM
    Article AS A
LIMIT 20;