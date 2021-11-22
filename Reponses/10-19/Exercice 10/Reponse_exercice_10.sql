-- 10 Lister pour chaque ticket la quantité totale d’articles vendus. (Classer par quantité décroissante)

SELECT 
    numero_ticket, SUM(quantite) AS 'Total de vente'
FROM
    Ventes
GROUP BY numero_ticket
ORDER BY SUM(quantite) DESC;