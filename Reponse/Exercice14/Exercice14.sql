 # Lister les marques de bières du continent ‘Afrique’
SELECT 
    marque.NOM_MARQUE AS Marque,
    continent.NOM_CONTINENT AS Continent
FROM
    marque
        JOIN
    pays ON marque.ID_PAYS = pays.ID_PAYS
			JOIN
		continent ON pays.ID_CONTINENT = continent.ID_CONTINENT
WHERE
    continent.NOM_CONTINENT = 'Afrique';

    