-- -----------------------------------exercice 9 --------------------------------
-- Afficher la liste des bières n’ayant pas de couleur. (Afficher l’id et le nom)
-- -------------------------------------------------------------------------------

SELECT article.ID_ARTICLE AS Article,
article.NOM_ARTICLE AS Nom,
article.ID_Couleur 

from article
LEFT JOIN
couleur ON article.ID_Couleur = couleur.ID_Couleur
WHERE couleur.NOM_COULEUR IS null
