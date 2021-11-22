-- 23. Lister les articles ayant un degré d’alcool plus élevé que la plus forte des trappistes.

SELECT 
    ID_ARTICLE, NOM_ARTICLE, TITRAGE
FROM
    article
WHERE
    titrage > (SELECT 
            MAX(titrage)
        FROM
            article
        WHERE
            ID_TYPE = (SELECT 
                    ID_TYPE
                FROM
                    type
                WHERE
                    NOM_TYPE = 'Trappiste'))
ORDER BY TITRAGE DESC;