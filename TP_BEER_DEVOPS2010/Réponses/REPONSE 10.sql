select NUMERO_TICKET,  sum(QUANTITE)
FROM ventes
GROUP BY NUMERO_TICKET