--- 12. Lister chaque ticket pour lequel la quantité totale d’articles vendus est supérieure à
--- 500. On exclura du total, les vente s ayant une quantité supérieure à 50 (classer par
--- quantité décroissante)

SELECT 
    ventes.NUMERO_TICKET 'Numéro Ticket',
    SUM(CASE
        WHEN ventes.QUANTITE <= 50 THEN ventes.QUANTITE
        ELSE 0
    END) as Total
FROM
    ventes
GROUP BY ventes.NUMERO_TICKET
HAVING Total > 500
ORDER BY Total DESC


