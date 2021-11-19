# Lister les tickets sur lesquels apparaissent un des articles apparaissant aussi sur le ticket 2014-856 (le ticket 856 de l’année 2014).
SELECT DISTINCT ventes.NUMERO_TICKET, ventes.ANNEE
from ventes
WHERE ventes.ID_ARTICLE IN (SELECT 
   ventes.ID_ARTICLE
FROM
   ventes
where ventes.NUMERO_TICKET = 856 and ventes.ANNEE = 2014)