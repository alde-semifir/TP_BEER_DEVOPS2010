SELECT 
	ID_ARTICLE as " ide de l'article",
    NOM_ARTICLE as "Nom de l'article",
    VOLUME,
    TITRAGE,
    type.NOM_TYPE as "Type de bière"
FROM
    article
        JOIN
    type ON article.ID_TYPE = type.ID_TYPE
WHERE
    type.NOM_TYPE = 'Trappiste'