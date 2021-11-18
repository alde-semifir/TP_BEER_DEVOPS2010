SELECT 
    ID_ARTICLE, NOM_ARTICLE
FROM
    article
left join couleur on article.ID_Couleur= couleur.ID_Couleur
where NOM_COULEUR is null;