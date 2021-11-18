SELECT 
    article.ID_ARTICLE AS 'id',
    article.NOM_ARTICLE AS 'Nom'
FROM
    article
        LEFT JOIN
    couleur ON article.ID_Couleur = couleur.ID_Couleur
    WHERE couleur.NOM_COULEUR IS null