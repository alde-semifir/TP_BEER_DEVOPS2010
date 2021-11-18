SELECT 
    article.ID_ARTICLE,
    article.NOM_ARTICLE,
    article.VOLUME,
    article.TITRAGE
FROM
    article
        INNER JOIN
    type ON article.ID_TYPE = type.ID_TYPE
WHERE
    type.NOM_TYPE = 'Trappiste';