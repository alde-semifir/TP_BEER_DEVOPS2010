-- 1 Quels sont les tickets qui comportent l’article d’ID 500, afficher le numéro de ticket uniquement ?
SELECT ventes.NUMERO_TICKET
FROM ventes
WHERE ventes.ID_ARTICLE = 500;