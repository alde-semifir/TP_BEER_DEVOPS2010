-- 11 Lister chaque ticket pour lequel la quantité totale d’articles vendus est supérieure à 500. (Classer par quantité décroissante)

SELECT annee, NUMERO_TICKET, SUM(QUANTITE) AS quantite_articles_vendus
FROM ventes
GROUP BY NUMERO_TICKET
HAVING quantite_articles_vendus > 500
ORDER BY annee, NUMERO_TICKET, quantite_articles_vendus DESC;