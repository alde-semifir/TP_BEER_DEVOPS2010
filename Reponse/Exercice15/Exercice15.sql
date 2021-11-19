# Lister les bières du continent ‘Afrique’
SELECT 
    article.NOM_ARTICLE AS Article,
    article.VOLUME AS Volume,
    pays.NOM_PAYS AS Pays
FROM
    article
		JOIN
    marque ON article.ID_MARQUE = marque.ID_MARQUE
			JOIN
		pays ON marque.ID_PAYS = pays.ID_PAYS
				JOIN
			continent ON pays.ID_CONTINENT = continent.ID_CONTINENT
WHERE
    continent.NOM_CONTINENT = 'Afrique';