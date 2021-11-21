SELECT annee, numero_ticket, date_vente
FROM ticket
WHERE YEAR(date_vente)= "2014" AND MONTH(date_vente) IN (3,6);