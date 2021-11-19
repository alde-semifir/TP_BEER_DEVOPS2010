
SELECT DISTINCT
    ventes.NUMERO_TICKET
FROM
    ventes
WHERE
    ventes.ID_ARTICLE IN (SELECT 
            ventes.ID_ARTICLE
        FROM
            ventes
        WHERE
            ventes.ANNEE = '2014'
                AND ventes.NUMERO_TICKET = 856);