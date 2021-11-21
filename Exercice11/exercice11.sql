# 11. Lister chaque ticket pour lequel la quantité totale d’articles vendus est supérieure à 500. ( C lasser par quantité décroissante)

SELECT 
    numero_ticket, SUM(quantite) as Total
FROM
    ventes
GROUP BY numero_ticket
HAVING Total > 500
ORDER BY Total DESC;



