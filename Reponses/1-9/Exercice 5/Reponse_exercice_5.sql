-- 5 Quelles sont les tickets émis au mois de mars 2014.

SELECT 
    numero_ticket, date_vente
FROM
    ticket
WHERE
    MONTH(date_vente) = 3 AND YEAR(date_vente) = 2014;
-- FAKE