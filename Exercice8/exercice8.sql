SELECT 
    ID_ARTICLE, NOM_ARTICLE
FROM
    article,
    couleur
WHERE
    article.ID_Couleur = couleur.ID_Couleur
ORDER BY couleur.ID_Couleur