# Afficher les tickets émis du 15/01/2014 et le 17/01/2014.
SELECT 
    NUMERO_TICKET AS Ticket
FROM
    ticket
WHERE ticket.DATE_VENTE BETWEEN '2014-01-15' AND '2014-01-17';