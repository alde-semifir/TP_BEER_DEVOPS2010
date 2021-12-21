SELECT
ID_ARTICLE 'ID',
NOM_ARTICLE 'Nom',
VOLUME 'Volume',
TITRAGE 'Titrage'
FROM
article
LEFT JOIN beer.type ON beer.type.ID_TYPE = article.ID_TYPE
where beer.type.NOM_TYPE = "Trappiste"