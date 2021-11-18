#  Afficher la liste des bières classée par couleur. (Afficher l’id et le nom)
select article.ID_ARTICLE AS Article,
article.NOM_ARTICLE AS Nom,
Couleur.NOM_COULEUR AS Couleur
from article
JOIN couleur
on article.ID_Couleur = couleur.ID_Couleur