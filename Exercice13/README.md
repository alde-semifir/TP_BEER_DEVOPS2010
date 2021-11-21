# EXERCICE 13

### Lister les bières de type ‘Trappiste’. (id, nom de la bière, volume et titrage)
---
### CODE 1

```sql
--- USE beer
SELECT 
    article.NOM_ARTICLE 'ID',
    article.NOM_ARTICLE 'Nom',
    article.VOLUME 'Volume',
    article.TITRAGE 'Titrage',
    beer.type.NOM_TYPE 'Type de biere' -- A commenter
FROM
    article
LEFT JOIN beer.type ON beer.type.ID_TYPE = beer.article.ID_TYPE
where beer.type.NOM_TYPE = "Trappiste"

```


### OUTPUT

```text

+--------------------------------+--------------------------------+--------+---------+---------------+
| ID                             | Nom                            | Volume | Titrage | Type de biere |
+--------------------------------+--------------------------------+--------+---------+---------------+
| Chimay Cinq Cents              | Chimay Cinq Cents              |     33 |       8 | Trappiste     |
| Chimay Dor�e                   | Chimay Dor�e                   |     33 |     4.8 | Trappiste     |
| Chimay Grande R�serve          | Chimay Grande R�serve          |     33 |       9 | Trappiste     |
| Chimay Premi�re                | Chimay Premi�re                |     33 |       7 | Trappiste     |
| Westmalle Double               | Westmalle Double               |     33 |       7 | Trappiste     |
| Westmalle Triple               | Westmalle Triple               |     33 |     9.5 | Trappiste     |
| Achel Blonde                   | Achel Blonde                   |     33 |       8 | Trappiste     |
| Achel Brune                    | Achel Brune                    |     33 |       8 | Trappiste     |
| Achel Extra Bruin              | Achel Extra Bruin              |     33 |     9.5 | Trappiste     |
| Rochefort 10                   | Rochefort 10                   |     33 |    11.3 | Trappiste     |
| Rochefort 6                    | Rochefort 6                    |     33 |     7.5 | Trappiste     |
| Rochefort 8                    | Rochefort 8                    |     33 |     9.2 | Trappiste     |
| Westvleteren 12                | Westvleteren 12                |     33 |    10.2 | Trappiste     |
------------------------------------------\\----------------------------------------------------------
| Rochefort 10                   | Rochefort 10                   |     75 |    11.3 | Trappiste     |
| Rochefort 6                    | Rochefort 6                    |     75 |     7.5 | Trappiste     |
| Rochefort 8                    | Rochefort 8                    |     75 |     9.2 | Trappiste     |
| Westvleteren 12                | Westvleteren 12                |     75 |    10.2 | Trappiste     |
| Westvleteren 6 Blond           | Westvleteren 6 Blond           |     75 |       6 | Trappiste     |
| Westvleteren 8                 | Westvleteren 8                 |     75 |       8 | Trappiste     |
| Orval                          | Orval                          |     75 |     6.2 | Trappiste     |
| Trappe Blond (la)              | Trappe Blond (la)              |     75 |     6.5 | Trappiste     |
| Trappe Dubbel (la)             | Trappe Dubbel (la)             |     75 |     6.5 | Trappiste     |
| Trappe Puur (la)               | Trappe Puur (la)               |     75 |     4.7 | Trappiste     |
| Trappe Quadrupel (la)          | Trappe Quadrupel (la)          |     75 |      10 | Trappiste     |
| Trappe Quadrupel Oak Aged (la) | Trappe Quadrupel Oak Aged (la) |     75 |      10 | Trappiste     |
| Trappe Tripel (la)             | Trappe Tripel (la)             |     75 |       8 | Trappiste     |
| Witte Trappiste                | Witte Trappiste                |     75 |     5.5 | Trappiste     |
| Gregorius Trapistenbier        | Gregorius Trapistenbier        |     75 |     9.7 | Trappiste     |
+--------------------------------+--------------------------------+--------+---------+---------------+
48 rows in set (0.00 sec)
```
