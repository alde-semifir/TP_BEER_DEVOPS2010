SELECT 
    ID_ARTICLE AS ID, NOM_ARTICLE AS Biere, VOLUME, TITRAGE, `type`.NOM_TYPE
FROM
    article
INNER JOIN
	`type`
ON article.ID_TYPE = `type`.ID_TYPE
WHERE NOM_TYPE = 'Trappiste';