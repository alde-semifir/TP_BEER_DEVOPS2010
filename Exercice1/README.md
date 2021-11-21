# EXERCICE 1

### Quels sont les tickets qui comportent l’article d’ID 500, afficher le numéro de ticket uniquement.
---
### CODE

```sql
--- USE beer

SELECT NUMERO_TICKET
FROM ventes
WHERE ventes.ID_ARTICLE = 500;
```


### OUTPUT

    +---------------+
    | NUMERO_TICKET |
    +---------------+
    |           290 |
    |           423 |
    |           524 |
    |           770 |
    -------//--------
    |          3004 |
    |          3479 |
    +---------------+
    24 rows in set (0.00 sec)