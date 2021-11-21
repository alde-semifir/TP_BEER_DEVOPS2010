# Donner l’ID, le nom, le volume et les quantités vendues en 2015 et 2016, des bières dont les ventes ont été stables. 
# (Moins de 1% de variation) ((dbt - fin)/dbt)*100
SELECT 
    artven15.ID_ARTICLE AS ID,
    artven15.NOM_ARTICLE AS Nom,
    artven15.VOLUME AS Volume,
    artven15.qté15 AS ventes2015,
    artven16.qté16 AS ventes2016
FROM
    (SELECT 
		art.ID_ARTICLE,
		art.NOM_ARTICLE,
		art.VOLUME,
		Qté15.qté15
    FROM
        ((SELECT ID_ARTICLE, article.NOM_ARTICLE, article.VOLUME
		FROM article) AS art, 
        (SELECT ventes.ID_ARTICLE, SUM(ventes.QUANTITE) AS qté15
		FROM ventes
		WHERE ventes.ANNEE = '2015'
		GROUP BY ID_ARTICLE) AS QTé15)
		WHERE art.ID_ARTICLE = Qté15.ID_ARTICLE
		ORDER BY qté15) AS artven15,
    (SELECT 
        art.ID_ARTICLE,
		art.NOM_ARTICLE,
        art.VOLUME,
        Qté16.qté16
    FROM
        ((SELECT ID_ARTICLE, article.NOM_ARTICLE, article.VOLUME
		FROM article) AS art, 
		(SELECT ventes.ID_ARTICLE, SUM(ventes.QUANTITE) AS qté16
		FROM ventes
		WHERE ventes.ANNEE = '2016'
		GROUP BY ID_ARTICLE) AS Qté16)
		WHERE art.ID_ARTICLE = Qté16.ID_ARTICLE
		ORDER BY qté16) artven16
WHERE artven15.ID_ARTICLE = artven16.ID_ARTICLE
AND ABS((artven16.qté16 - artven15.qté15) / artven15.qté15 * 100) < 1