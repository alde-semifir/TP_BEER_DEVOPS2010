#  Lister les bières de type ‘Trappiste’. (id, nom de la bière, volume et titrage)
SELECT 
    article.ID_ARTICLE AS ID,
    article.NOM_ARTICLE AS Nom,
    article.VOLUME AS Volume,
    article.TITRAGE AS Titrage
FROM
    article
        JOIN
    type ON article.ID_TYPE = type.ID_TYPE
WHERE
    type.NOM_TYPE = 'Trappiste';