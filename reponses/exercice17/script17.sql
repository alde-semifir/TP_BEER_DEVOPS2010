select ventes.annee, SUM(a.PRIX_ACHAT+a.PRIX_ACHAT*15/100) AS 'Chiffre d"affaire'
from ventes
inner join article as a on a.ID_ARTICLE=ventes.ID_ARTICLE
group by ventes.ANNEE;