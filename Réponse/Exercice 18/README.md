# Exercice 18

## Enoncé

Lister les quantités vendues de chaque article pour l’année 2016.

## Requête

``` sql
SELECT 
    article.NOM_ARTICLE as "Nom de l'article",
    SUM(ventes.QUANTITE) as "Quantité"
FROM
    ventes
        INNER JOIN
    article ON ventes.ID_ARTICLE = article.ID_ARTICLE
WHERE
    ventes.ANNEE = '2016'
GROUP BY article.NOM_ARTICLE;
```

## Capture

Voici le résultat de la requête:

![Exercice18](exercice17.png)

## Remarques
Aucune