-- --------------------------------------------------------------------------------------------------------
--  Lister pour chaque ticket la quantité totale d’articles vendus. (Classer par quantité décroissante)  --
-- --------------------------------------------------------------------------------------------------------
SELECT 
    QUANTITE AS 'Quantité',
    NUMERO_TICKET AS 'N° Ticket',
    SUM(QUANTITE) AS 'Somme'
FROM
    ventes
WHERE
    ventes.QUANTITE >= 1
GROUP BY NUMERO_TICKET
ORDER BY Somme DESC;