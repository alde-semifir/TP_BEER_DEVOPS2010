# 11. Lister chaque ticket pour lequel la quantité totale d’articles vendus est supérieure à 500. ( C lasser par quantité décroissante)

SELECT 
    beer.ventes.NUMERO_TICKET 'Numéro Ticket', SUM(beer.ventes.quantite) 'Total'
FROM
    beer.ventes
GROUP BY beer.ventes.NUMERO_TICKET HAVING Total > 500
ORDER BY Total DESC




