-- 12 Lister chaque ticket pour lequel la quantité totale d’articles vendus est supérieure à 500.
-- On exclura du total, les ventes ayant une quantité supérieure à 50 (classer par quantité décroissante)

SELECT 
    NUMERO_TICKET, ID_ARTICLE, SUM(QUANTITE) AS somme
FROM
    ventes
WHERE
    QUANTITE <= 50
GROUP BY NUMERO_TICKET
HAVING somme > 500
ORDER BY somme DESC;