SELECT 
   ID_ARTICLE, numero_ticket, SUM(quantite) AS somme
FROM
    ventes
WHERE
    QUANTITE < 50
GROUP BY NUMERO_TICKET
HAVING somme > 500
ORDER BY somme DESC;
