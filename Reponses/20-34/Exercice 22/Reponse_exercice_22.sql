-- 22 Lister les tickets sur lesquels apparaissent un des articles apparaissant aussi sur le ticket 2014-856.
SELECT DISTINCT
    ANNEE, NUMERO_TICKET
FROM
    Ventes
WHERE
    ID_ARTICLE IN (SELECT 
            ID_ARTICLE
        FROM
            ventes
        WHERE
            annee = 2014 AND NUMERO_TICKET = 856);