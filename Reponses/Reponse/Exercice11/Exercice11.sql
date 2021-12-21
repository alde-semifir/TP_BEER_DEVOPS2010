SELECT
ventes.NUMERO_TICKET, SUM(ventes.quantite) 'Total'
FROM
ventes
GROUP BY ventes.NUMERO_TICKET HAVING Total > 500 ORDER BY Total DESC