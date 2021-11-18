SELECT 
    Numero_ticket AS 'Numéro ticket', Date_vente
FROM
    ticket
WHERE
    MONTH(Date_Vente) = 03
        AND YEAR(Date_vente) = 2014