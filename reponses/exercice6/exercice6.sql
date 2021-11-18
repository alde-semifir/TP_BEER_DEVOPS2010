SELECT NUMERO_TICKET AS 'Tickets du mois mars et avril' FROM ticket
WHERE DATE_VENTE BETWEEN '2014-03-01' AND '2014-04-30';


SELECT NUMERO_TICKET AS 'Tickets du mois mars et avril' 
FROM 
    ticket
WHERE
    annee = 2014
AND 
    MONTH(date_vente) IN (3, 4)
;
