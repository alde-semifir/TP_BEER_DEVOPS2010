SELECT 
    NOM_ARTICLE, continent.NOM_CONTINENT, VOLUME
FROM
    article
join marque on article.ID_MARQUE= marque.ID_MARQUE
join pays on marque.ID_PAYS= pays.ID_PAYS
join continent on pays.ID_CONTINENT= continent.ID_CONTINENT
where continent.NOM_CONTINENT= 'Afrique';
