-- ---------------------------EXERCICE 8------------------------------------------
-- Afficher la liste des bières classée par couleur. (Afficher l’id et le nom)
-- -------------------------------------------------------------------------------

SELECT 
    article.ID_ARTICLE AS 'N° id de l\' article',
    article.NOM_ARTICLE AS 'Nom de la Bière',
    Couleur.NOM_COULEUR AS 'Est de Couleur'
FROM
    article
        JOIN
    couleur ON article.ID_Couleur = couleur.ID_Couleur