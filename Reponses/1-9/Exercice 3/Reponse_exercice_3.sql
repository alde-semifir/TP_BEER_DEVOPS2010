-- 3 Afficher les tickets émis du 15/01/2014 et le 17/01/2014.
SELECT numero_ticket
FROM ticket
WHERE date_vente BETWEEN '2014-01-15' AND '2014-01-17';