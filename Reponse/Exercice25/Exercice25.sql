# Donner pour chaque fabricant, le nombre de tickets sur lesquels apparait un de ses produits en 2014.
SELECT fabricant.NOM_FABRICANT AS Fabricant,
(SELECT count(ventes.NUMERO_TICKET) from ventes
where ventes.ANNEE = '2014' and ventes.ID_ARTICLE IN (SELECT
article.ID_ARTICLE from article
where article.ID_MARQUE IN (select
marque.ID_MARQUE from marque
where marque.ID_FABRICANT = fabricant.ID_FABRICANT
))) AS Nombre_Ticket
from fabricant
group by Fabricant