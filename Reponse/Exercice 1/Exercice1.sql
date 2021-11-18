-- Quels sont les tickets qui comportent l’article d’ID 500, afficher le numéro de ticket uniquement
Select NUMERO_TICKET AS Ticket
From ventes
where ID_ARTICLE = 500;
-- JOIN article
-- ON ventes.ID_ARTICLE=article.ID_ARTICLE