SELECT 
    Numero_ticket AS 'Numéro ticket', Date_vente
FROM
    ticket
WHERE
    MONTH(Date_Vente) between '03' and '04'
        AND YEAR(Date_vente) = 2014