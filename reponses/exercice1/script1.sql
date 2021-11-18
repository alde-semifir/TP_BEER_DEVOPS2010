SELECT 
    ticket.NUMERO_TICKET AS 'Numéro ticket'
FROM
    ticket
        JOIN
    ventes ON ticket.NUMERO_TICKET = ventes.NUMERO_TICKET
        JOIN
    article ON ventes.ID_ARTICLE = article.ID_ARTICLE
        AND article.ID_ARTICLE = 500
