SELECT 
    Numero_ticket AS 'Numéro ticket', DATE_VENTE
FROM
    ticket
WHERE
    (MONTH( DATE_VENTE) = '03'
        OR MONTH( DATE_VENTE) = '06')
        AND YEAR(Date_vente) = 2014