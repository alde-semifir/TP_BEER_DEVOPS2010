SELECT 
    article.NOM_ARTICLE 'ID',
    article.NOM_ARTICLE 'Nom',
   
    continent.NOM_CONTINENT
FROM
    article, continent
WHERE continent.NOM_CONTINENT = 'Afrique'