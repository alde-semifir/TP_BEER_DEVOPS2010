# EXERCICE 3

### Afficher les tickets du 15/01/2014.
---
### CODE

```sql
--- USE beer

SELECT *
FROM ticket
WHERE DATE_VENTE = '2014-01-15'
```


### OUTPUT

```text

+-------+---------------+---------------------+
| ANNEE | NUMERO_TICKET | DATE_VENTE          |
+-------+---------------+---------------------+
|  2014 |            37 | 2014-01-15 00:00:00 |
+-------+---------------+---------------------+
1 row in set (0.00 sec)

```