SELECT 
    marque.NOM_MARQUE 'ID',
    marque.NOM_MARQUE 'Nom',
   
    continent.NOM_CONTINENT
FROM
    marque, continent
WHERE continent.NOM_CONTINENT = 'Afrique'