SELECT 
    NOM_ARTICLE, VOLUME, TITRAGE
FROM
    article
left join type on article.ID_TYPE= type.ID_TYPE
where type.NOM_TYPE= 'Trappiste';
