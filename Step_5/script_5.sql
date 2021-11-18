SELECT 
    NUMERO_TICKET, DATE_VENTE
FROM
    ticket
WHERE
    month(DATE_VENTE) in (03)
    and year(DATE_VENTE)=2014;