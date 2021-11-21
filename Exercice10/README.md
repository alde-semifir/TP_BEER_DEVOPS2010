# EXERCICE 10

### Lister pour chaque ticket la quantité totale d’articles vendus. (Classer par quantité décroissante)
---
### CODE 1


```sql
--- USE beer

SELECT 
    numero_ticket, SUM(quantite) as Total
FROM
    ventes
GROUP BY numero_ticket ORDER BY Total DESC;


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
|            74 |   916 |
|           915 |   910 |
|            90 |   907 |
|           137 |   899 |
|           361 |   895 |
-----------\\------------
|          3876 |    35 |
|          4372 |    34 |
|          3122 |    33 |
|          4118 |    30 |
|          3587 |    28 |
|          3188 |    27 |
|          2902 |    25 |
|          3742 |    25 |
|          3958 |    23 |
|          3808 |    21 |
|          3716 |    19 |
|          3226 |     9 |
|          4076 |     6 |
|          4131 |     3 |
|          2922 |     1 |
+---------------+-------+
4502 rows in set (0.02 sec)
```