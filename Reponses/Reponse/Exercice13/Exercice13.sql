SELECT 
    article.NOM_ARTICLE 'ID',
    article.NOM_ARTICLE 'Nom',
    article.VOLUME 'Volume',
    article.TITRAGE 'Titrage',
    beer.type.NOM_TYPE 'Type de biere'
FROM
    article, `type`
WHERE beer.type.NOM_TYPE = 'Trappiste'