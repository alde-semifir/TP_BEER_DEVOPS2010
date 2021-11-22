-- 16. Lister les tickets (année, numéro de ticket, montant total payé). En sachant que le prix
-- de vente est égal au prix d’achat augmenté de 15% et que l’on n’est pas assujetti à la TVA.
SELECT ticket.ANNEE,
    ticket.NUMERO_TICKET,
    SUM(quantite * article.PRIX_ACHAT) * 1.15 AS PRIX_VENTE
FROM ticket
    INNER JOIN ventes USING (numero_ticket, annee)
    INNER JOIN article ON article.ID_ARTICLE = ventes.ID_ARTICLE
GROUP BY NUMERO_TICKET, ticket.annee;