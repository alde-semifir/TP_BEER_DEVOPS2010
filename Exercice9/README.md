# EXERCICE 9

### Afficher la liste des bières n’ayant pas de couleur. (Afficher l’id et le nom)
---
### CODE 1

```sql
--- USE beer

SELECT id_article, nom_article FROM article
WHERE article.id_couleur IS NULL


```
### OUTPUT

```text

+------------+------------------------------------------+
| id_article | nom_article                              |
+------------+------------------------------------------+
|          2 | das Helle                                |
|         23 | B�casse Originale Framboise              |
|         25 | B�casse Originale Kriek                  |
|         28 | Bodingtons Draught Bitter                |
|         39 | Leffe Ruby                               |
|         47 | Quilmes                                  |
|         49 | Skol Pils                                |
|         71 | Liefmans Frambozen                       |
|         72 | Liefmans Gl�hkriek                       |
|         86 | Desperados                               |
|         88 | Fischer de Printemps                     |
|        103 | John Smith's Original Bitter             |
|        104 | Maes                                     |
|        105 | Mc Ewan's Scotch                         |
|        108 | Mort Subite Kriek                        |
|        110 | Newcastle Brown Ale                      |
|        116 | Watneys Scotch Ale                       |
------------------------\\-------------------------------
|       3821 | Grooving Hop                             |
|       3823 | Traquair House Ale                       |
|       3824 | Traquair Jacobite Ale                    |
|       3845 | Bi�re d'Automne Mosaic                   |
|       3860 | Brigand I.P.A.                           |
|       3863 | St Louis Gl�hbier                        |
|       3880 | Viven Imperial IPA                       |
|       3896 | Bombardier Premium Bitter                |
|       3897 | One Claw                                 |
|       3899 | Double Simcoe IPA                        |
|       3901 | Verboten                                 |
|       3902 | Autonomy Lost                            |
|       3905 | What the Fuck - Palisade Sorachi Ace     |
|       3908 | White Shield                             |
|       3909 | Alba Scots Pine Ale                      |
|       3919 | Fiddlers Elbow                           |
|       3920 | Hobgoblin                                |
+------------+------------------------------------------+
706 rows in set (0.00 sec)
```