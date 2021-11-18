#  Afficher la liste des bières n’ayant pas de couleur. (Afficher l’id et le nom)
select article.ID_ARTICLE AS Article,
article.NOM_ARTICLE AS Nom
-- Couleur.NOM_COULEUR AS Couleur
from article
Where article.ID_Couleur is NULL ;