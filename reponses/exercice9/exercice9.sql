SELECT
	ID_ARTICLE AS Id,
    NOM_ARTICLE AS Bières,
    couleur.NOM_COULEUR AS 'sans robe'
FROM
    article
    LEFT JOIN
    couleur
    ON article.ID_Couleur = couleur.ID_Couleur
    WHERE couleur.NOM_COULEUR IS NULL;