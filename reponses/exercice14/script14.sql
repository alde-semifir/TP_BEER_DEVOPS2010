SELECT 
    nom_marque, id_marque
FROM
    marque
        INNER JOIN
    pays AS p ON p.ID_PAYS = marque.ID_PAYS
        INNER JOIN
    continent AS c ON c.ID_CONTINENT = p.ID_CONTINENT
        AND c.NOM_CONTINENT = 'Afrique';