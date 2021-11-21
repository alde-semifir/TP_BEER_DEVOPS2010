
SELECT couleur.NOM_COULEUR, (select sum(ventes.QUANTITE) from ventes where ventes.ANNEE='2014' and ventes.ID_ARTICLE in 
										(select article.ID_ARTICLE from article where article.ID_Couleur=couleur.ID_Couleur)) as qte
FROM couleur
group by couleur.NOM_COULEUR;


