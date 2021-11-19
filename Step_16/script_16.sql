SELECT 
    ventes.ANNEE as Année, ventes.NUMERO_TICKET as Ticket, sum(ventes.QUANTITE*article.PRIX_ACHAT*1.15) as Montant
FROM
    article
join ventes on article.ID_ARTICLE= ventes.ID_ARTICLE
join ticket on ventes.NUMERO_TICKET= ticket.NUMERO_TICKET
group by ventes.NUMERO_TICKET 
