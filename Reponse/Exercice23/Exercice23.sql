# Lister les articles ayant un degré d’alcool plus élevé que la plus forte des trappistes.
SELECT 
    article.NOM_ARTICLE AS Nom, article.TITRAGE AS Titrage
FROM
    article
WHERE
    Titrage > (SELECT 
            MAX(article.TITRAGE) AS TitrageMax
        FROM
            article
        WHERE
            article.ID_TYPE = (SELECT 
                    type.ID_TYPE
                FROM
                    type
                WHERE
                    type.NOM_TYPE = 'Trappiste'))
