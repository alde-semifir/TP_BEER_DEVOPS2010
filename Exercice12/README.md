# EXERCICE 12

### Lister chaque ticket pour lequel la quantité totale d’articles vendus est supérieure à 500. On exclura du total, les vente s ayant une quantité supérieure à 50 (classer par quantité décroissante)
---
### CODE 1

```sql
--- USE beer

SELECT 
    SUM(quantite) AS total
FROM
    ventes
WHERE
    quantite <= 50
GROUP BY numero_ticket
HAVING total > 500
ORDER BY total DESC;

```


### CODE 2

```sql
--- USE beer

SELECT 
    ventes.NUMERO_TICKET 'Numéro Ticket',
    SUM(CASE
        WHEN ventes.QUANTITE <= 50 THEN ventes.QUANTITE
        ELSE 0
    END) as Total
FROM
    ventes
GROUP BY ventes.NUMERO_TICKET
HAVING Total > 500
ORDER BY Total DESC;
```
### OUTPUT

```text

+--------------+-------+
| Numro Ticket | Total |
+--------------+-------+
|         1032 |  1004 |
|          403 |   984 |
|          260 |   967 |
|          246 |   957 |
|           20 |   943 |
|          332 |   941 |
|          577 |   924 |
|           49 |   922 |
|           74 |   916 |
-----------\\-----------
|          319 |   501 |
|          411 |   501 |
|          759 |   501 |
|          844 |   501 |
|          867 |   501 |
|         1017 |   501 |
|         1509 |   501 |
|         1561 |   501 |
|         1712 |   501 |
|         1967 |   501 |
|         2011 |   501 |
|         2419 |   501 |
|         2514 |   501 |
+--------------+-------+
1021 rows in set (0.03 sec)
```
