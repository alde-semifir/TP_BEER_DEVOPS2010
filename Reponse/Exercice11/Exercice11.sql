#   Lister chaque ticket pour lequel la quantité totale d’articles vendus est supérieure à 500. (Classer par quantité décroissante)
SELECT 
    ventes.NUMERO_TICKET AS Ticket, sum(ventes.QUANTITE) AS Quantité
FROM
    ventes
group by ventes.NUMERO_TICKET 
HAVING sum(ventes.QUANTITE) > 500
order by Quantité DESC;

