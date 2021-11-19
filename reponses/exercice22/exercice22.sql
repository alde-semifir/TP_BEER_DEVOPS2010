-- 22. Lister les tickets sur lesquels apparaissent un des articles apparaissant aussi sur le 
-- ticket 2014-856 (le ticket 856 de l’année 2014).

SELECT 
    ventes.NUMERO_TICKET, ventes.ANNEE
FROM
    ventes
WHERE
    ventes.ID_ARTICLE IN (SELECT 
            ventes.ID_ARTICLE
        FROM
            ventes
        WHERE
            ventes.NUMERO_TICKET = 856
                AND ventes.ANNEE = 2014);