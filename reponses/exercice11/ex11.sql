select NUMERO_TICKET, sum(QUANTITE) as qte from ventes group by NUMERO_TICKET having qte > 500 order by qte desc;