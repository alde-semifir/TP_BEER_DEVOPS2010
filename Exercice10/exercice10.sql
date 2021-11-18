-- 10. Lister pour chaque ticket la quantité totale d’articles vendus. (Classer par quantité décroissante)

SELECT 
    beer.ventes.NUMERO_TICKET 'Numéro Ticket', SUM(beer.ventes.quantite) 'Total'
FROM
    beer.ventes
GROUP BY beer.ventes.NUMERO_TICKET order by Total DESC