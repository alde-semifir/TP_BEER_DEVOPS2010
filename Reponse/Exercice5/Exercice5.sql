# Quelles sont les tickets émis au mois de mars 2014
SELECT 
    NUMERO_TICKET
FROM
    ticket
WHERE
    ticket.DATE_VENTE LIKE '2014-03-%';