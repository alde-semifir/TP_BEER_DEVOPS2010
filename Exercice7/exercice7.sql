SELECT 
    *
FROM
    beer.ticket
WHERE
    MONTH(beer.ticket.DATE_VENTE) = 3
        OR MONTH(beer.ticket.DATE_VENTE) = 6;