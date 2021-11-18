# Editer la liste des articles apparaissant à 50 et plus exemplaires sur un ticket.
select article.NOM_ARTICLE AS Article,
ventes.QUANTITE AS Quantité
from article
JOIN ventes
on ventes.ID_ARTICLE = article.ID_ARTICLE
where ventes.QUANTITE >= 50 ;


