# EXERCICE 11

### Lister chaque ticket pour lequel la quantité totale d’articles vendus est supérieure à 500. ( C lasser par quantité décroissante)
---
### CODE 1


```sql
--- USE beer

SELECT 
    numero_ticket, SUM(quantite) as Total
FROM
    ventes
GROUP BY numero_ticket
HAVING Total > 500
ORDER BY Total DESC;


```
### OUTPUT

```text

+---------------+-------+
| numero_ticket | Total |
+---------------+-------+
|          1032 |  1004 |
|           403 |   984 |
|           260 |   967 |
|           246 |   957 |
|            20 |   943 |
|           332 |   941 |
|           577 |   924 |
|            49 |   922 |
-----------\\------------
|          1017 |   501 |
|          1509 |   501 |
|          1561 |   501 |
|          1712 |   501 |
|          1967 |   501 |
|          2011 |   501 |
|          2419 |   501 |
|          2514 |   501 |
+---------------+-------+
1026 rows in set (0.03 sec)
```
