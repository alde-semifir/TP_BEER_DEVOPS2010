-- 27. Donner l’ID, le nom, le volume et la quantité vendue des 5 ‘Trappistes’ les plus vendus en 2016.

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
WHERE
    ID_TYPE = (SELECT 
            id_type
        FROM
            Type
        WHERE
            NOM_TYPE = 'Trappiste')
LIMIT 5
