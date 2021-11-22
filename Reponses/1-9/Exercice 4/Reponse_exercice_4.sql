-- 4 Editer la liste des articles apparaissant à 50 et plus exemplaires sur un ticket.

SELECT 
    NUMERO_TICKET, nom_article, quantite
FROM
    ventes
        JOIN
    Article ON article.ID_article = Ventes.ID_Article
WHERE
    Ventes.quantite >= 50;