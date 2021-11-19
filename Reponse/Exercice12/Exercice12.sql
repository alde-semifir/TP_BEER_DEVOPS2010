# Lister chaque ticket pour lequel la quantité totale d’articles vendus est supérieure à  500. 
#On exclura du total, les ventes ayant une quantité supérieure à 50 (classer par quantité décroissante)
SELECT 
    ventes.NUMERO_TICKET AS Ticket, sum(ventes.QUANTITE) AS Quantité
FROM
    ventes
where ventes.QUANTITE < 51
group by ventes.NUMERO_TICKET 
HAVING sum(ventes.QUANTITE) > 500
order by Quantité DESC;