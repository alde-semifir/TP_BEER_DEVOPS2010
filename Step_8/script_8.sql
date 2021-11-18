SELECT 
    ID_ARTICLE, NOM_ARTICLE
FROM
    article
where ID_Couleur is not null
order by ID_Couleur;