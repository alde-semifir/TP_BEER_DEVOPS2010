SELECT 
    article.ID_ARTICLE AS 'id',
    article.NOM_ARTICLE AS 'Nom',
    couleur.NOM_COULEUR AS 'Couleur'
FROM
    article
        INNER JOIN
    couleur ON article.ID_Couleur = couleur.ID_Couleur
ORDER BY NOM_COULEUR