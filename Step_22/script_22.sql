SELECT distinct
    ventes.NUMERO_TICKET, ventes.ANNEE
FROM
    ventes
WHERE
    ID_ARTICLE in (select
    ID_ARTICLE
    from ventes
    where ANNEE= 2014 and NUMERO_TICKET = 856);