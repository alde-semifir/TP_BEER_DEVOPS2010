SELECT 
    NOM_MARQUE, continent.NOM_CONTINENT
FROM
    marque
        JOIN
    pays ON marque.ID_PAYS = pays.ID_PAYS
        JOIN
    continent ON pays.ID_CONTINENT = continent.ID_CONTINENT
WHERE
    continent.NOM_CONTINENT = 'Afrique';
