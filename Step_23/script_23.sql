SELECT 
    NOM_ARTICLE as Bière
FROM
    article
    where article.TITRAGE > (select max(article.TITRAGE) as Degré
    from article
		WHERE
			ID_TYPE = (select
			type.ID_TYPE
			from type
				where type.NOM_TYPE = 'Trappiste'));