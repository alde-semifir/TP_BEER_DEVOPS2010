# Quelles sont les tickets émis entre les mois de mars et avril 2014 ?
SELECT 
    NUMERO_TICKET
FROM
    ticket
WHERE
    ticket.DATE_VENTE between '2014-03-01' AND '2014-04-30';