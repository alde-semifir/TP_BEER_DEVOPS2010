# Editer les quantités vendues pour chaque couleur en 2014.
SELECT couleur.NOM_COULEUR AS Couleur, 
(SELECT sum(ventes.QUANTITE) from ventes
where ventes.ANNEE = '2014' and ventes.ID_ARTICLE in (SELECT
article.ID_ARTICLE from article
Where article.ID_Couleur=couleur.ID_Couleur and ventes.ANNEE='2014'
group by article.ID_ARTICLE)
) AS Quantité
from couleur
group by Couleur

