# 13. Lister les bières de type ‘Trappiste’. (id, nom de la bière, volume et titrage)

SELECT 
    article.NOM_ARTICLE 'ID',
    article.NOM_ARTICLE 'Nom',
    article.VOLUME 'Volume',
    article.TITRAGE 'Titrage',
    beer.type.NOM_TYPE 'Type de biere' -- A commenter
FROM
    article
LEFT JOIN beer.type ON beer.type.ID_TYPE = beer.article.ID_TYPE
where beer.type.NOM_TYPE = "Trappiste"
