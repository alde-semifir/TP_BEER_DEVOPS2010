#  Lister les tickets (année, numéro de ticket, montant total payé). En sachant que le prix 
# de vente est égal au prix d’achat augmenté de 15% et que l’on n’est pas assujetti à la TVA
SELECT ventes.ANNEE AS Année,
ventes.NUMERO_TICKET AS Ticket,
Round(sum(ventes.QUANTITE*article.PRIX_ACHAT*1.15),2) AS Montant
from article
JOIN 
ventes on article.ID_ARTICLE = ventes.ID_ARTICLE
group by ventes.NUMERO_TICKET;

