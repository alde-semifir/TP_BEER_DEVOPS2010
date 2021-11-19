SELECT ventes.ANNEE AS Année,
Round(sum(ventes.QUANTITE*article.PRIX_ACHAT*1.15),2) AS Montant
from article
JOIN 
ventes on article.ID_ARTICLE = ventes.ID_ARTICLE
group by ANNEE;