SELECT
	ID_ARTICLE AS Id,
    NOM_ARTICLE AS Bières,
    couleur.NOM_COULEUR AS 'Couleur de la robe'
FROM
    article
    INNER JOIN
    couleur 
    WHERE article.ID_Couleur = couleur.ID_Couleur
    ORDER BY NOM_COULEUR;