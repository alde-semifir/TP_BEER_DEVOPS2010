select numero_ticket, annee,  a.PRIX_ACHAT,  a.PRIX_ACHAT+a.PRIX_ACHAT*15/100 AS 'Montant Total Payé'
from ventes
inner join article as a on a.ID_ARTICLE=ventes.ID_ARTICLE;