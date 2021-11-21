# Lister les types de bières suivant l’évolution de leurs ventes entre 2015 et 2016. 
# Classer le résultat par ordre décroissant des performances.
SELECT 
    VENT15.NOM_TYPE AS 'Type',
    qté15 As Ventes2015,
    qté16 AS ventes2016,
    ((Vent16.qté16 - vent15.qté15)/vent16.qté16*100) AS Evolution
FROM
    (SELECT ID_TYPE, NOM_TYPE, sum(QUANTITE) AS qté15
		FROM
		(SELECT art.ID_ARTICLE, art.ID_TYPE, typ.NOM_TYPE
			FROM
			(SELECT article.ID_ARTICLE, article.ID_type
			from article) AS art,
			(select ID_TYPE, NOM_TYPE
			from type) AS typ
			where art.ID_TYPE = typ.ID_TYPE) as a,
		(SELECT ventes.ID_ARTICLE, ventes.QUANTITE, ventes.ANNEE
			From ventes
		where ventes.ANNEE = '2015') AS v15
    where a.ID_ARTICLE = v15.ID_ARTICLE
    Group by ID_TYPE ) AS Vent15,
    (SELECT ID_TYPE, NOM_TYPE, sum(QUANTITE) AS qté16
		FROM
		(SELECT art.ID_ARTICLE, art.ID_TYPE, typ.NOM_TYPE
			FROM
			(SELECT article.ID_ARTICLE, article.ID_type
			from article) AS art,
			(select ID_TYPE, NOM_TYPE
			from type) AS typ
			where art.ID_TYPE = typ.ID_TYPE) as a,
		(SELECT ventes.ID_ARTICLE, ventes.QUANTITE, ventes.ANNEE
			From ventes
		where ventes.ANNEE = '2016') AS v16
    where a.ID_ARTICLE = v16.ID_ARTICLE
    Group by ID_TYPE ) AS Vent16
where Vent16.ID_TYPE = Vent15.ID_TYPE
ORDER by Evolution DESC
