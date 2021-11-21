# EXERCICE 4

### Editer la liste des articles apparaissant à 50 et plus exemplaires sur un ticket.
---
### CODE

```sql
--- USE beer

SELECT 
    article.NOM_ARTICLE, ventes.QUANTITE
FROM
    ventes
        INNER JOIN
    article ON ventes.ID_ARTICLE = article.ID_ARTICLE
WHERE
    ventes.QUANTITE > 50

```

### OUTPUT

```text

+------------------------------------+----------+
| NOM_ARTICLE                        | QUANTITE |
+------------------------------------+----------+
| Trop� (la)                         |       61 |
| Rigor Mortis                       |       60 |
| Oud Beersel Kriek                  |       73 |
| Hitachino Nest XH                  |       68 |
| Brasserie Corr�zienne Saison       |       65 |
---------------------\\--------------------------
| Fin du Monde (la)                  |       66 |
| Alex le Rouge                      |       74 |
| Stuttgarter Hofbr�u Pilsner        |       73 |
| Hemel & Aarde                      |       72 |
| F�e Bistande (la)                  |       55 |
+------------------------------------+----------+
36 rows in set (0.02 sec)

```