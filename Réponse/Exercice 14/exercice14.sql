SELECT 
    marque.NOM_MARQUE, continent.NOM_CONTINENT
FROM
    pays
        LEFT JOIN
    marque ON marque.ID_PAYS = pays.ID_PAYS
        LEFT JOIN
    continent ON continent.ID_CONTINENT = pays.ID_CONTINENT
WHERE
    continent.NOM_CONTINENT = 'Afrique'