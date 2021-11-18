SELECT 
    NUMERO_TICKET, sum(QUANTITE)
FROM
    ventes
group by NUMERO_TICKET
order by sum(QUANTITE) desc;