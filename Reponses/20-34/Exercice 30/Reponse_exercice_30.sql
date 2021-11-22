-- 30  Existe-t-il des tickets sans vente ?

SELECT 
    t.*
FROM
    beer.ticket t
        LEFT JOIN
    beer.ventes v ON t.NUMERO_TICKET = v.NUMERO_TICKET
        AND t.ANNEE = v.ANNEE
WHERE
    v.NUMERO_TICKET IS NULL;