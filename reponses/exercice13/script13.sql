SELECT 
    id_article, nom_article, volume, titrage
FROM
    article
        INNER JOIN
    type AS t ON article.id_type = t.id_type
        AND t.NOM_TYPE = 'Trappiste';


