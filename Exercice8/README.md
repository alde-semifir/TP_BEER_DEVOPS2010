# EXERCICE 8

### Afficher la liste des bières classée par couleur. ( Afficher l’id et le nom)
---
### CODE 1

```sql
--- USE beer

SELECT id_article, nom_article FROM article
INNER JOIN couleur ON article.id_couleur = couleur.id_couleur
ORDER BY couleur.nom_couleur

```
### OUTPUT

```text

+------------+--------------------------------------------------+
| id_article | nom_article                                      |
+------------+--------------------------------------------------+
|         12 | Hertog Jan Karakter                              |
|         37 | Leffe Radieuse                                   |
|         48 | Schwaben Br�u Weihnachtsbier                     |
|         51 | Vieux Temps                                      |
|         57 | 1664 Mill�sime 2011                              |
|         74 | Liefmans Jan Van Gent                            |
|         76 | Adelscott                                        |
------------------------\\---------------------------------------
|       3861 | Kasteel Bier Brune                               |
|       3866 | Augustijn Brune                                  |
|       3868 | Bornem Double                                    |
|       3870 | Gulden Draak                                     |
|       3871 | Leute Bokbier                                    |
|       3878 | Vaudr�e Brune (la)                               |
|       3879 | Wilson Stout                                     |
|       3881 | Viven Porter                                     |
|       3882 | Caves                                            |
|       3883 | Duchesse de Bourgogne                            |
|       3885 | Queue de Charrue Brune                           |
|       3886 | Vichtenaar                                       |
|       3888 | Moose Blues                                      |
|       3889 | Verzet Oud Bruin                                 |
|       3895 | Decadence Stout                                  |
|       3900 | Old Heather                                      |
|       3903 | The Crow                                         |
|       3904 | The Oracle                                       |
|       3906 | Zumbi                                            |
|       3907 | Zwart Bloed                                      |
|       3910 | Ebulum                                           |
|       3914 | Kelpie Seawed Ale                                |
|       3916 | Conqueror Black IPA                              |
|       3917 | Black Wych                                       |
|       3922 | Young's Double Chocolate                         |
+------------+--------------------------------------------------+
3216 rows in set (0.01 sec)
```