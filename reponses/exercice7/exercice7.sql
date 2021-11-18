SELECT NUMERO_TICKET,DATE_VENTE AS 'Tickets du mois mars et juin 2014' FROM ticket
WHERE MONTH(DATE_VENTE) = 3 AND YEAR(DATE_VENTE) = 2014
UNION
SELECT NUMERO_TICKET,DATE_VENTE FROM ticket
WHERE MONTH(DATE_VENTE) = 6 AND YEAR(DATE_VENTE) = 2014
;
