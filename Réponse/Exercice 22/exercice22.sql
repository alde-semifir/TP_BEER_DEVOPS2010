SELECT DISTINCT
    (ventes.NUMERO_TICKET)
FROM
    ventes
WHERE
    ventes.ID_ARTICLE IN (SELECT 
            ventes.ID_ARTICLE
        FROM
            ventes
        WHERE
            ventes.NUMERO_TICKET = '856'
                AND ventes.ANNEE = '2014');