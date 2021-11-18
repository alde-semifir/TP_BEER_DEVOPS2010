SELECT 
    NUMERO_TICKET, sum(QUANTITE)
FROM
    ventes
group by NUMERO_TICKET having sum(QUANTITE) >= 500
order by sum(QUANTITE) desc;