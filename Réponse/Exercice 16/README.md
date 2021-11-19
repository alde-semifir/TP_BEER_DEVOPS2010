# Exercice 

## Enoncé

Lister les tickets (année, numéro de ticket, montant total payé). En sachant que le prix
de vente est égal au prix d’achat augmenté de 15% et que l’on n’est pas assujetti à la
TVA.

## Requête

``` sql
SELECT 
    ventes.NUMERO_TICKET AS 'Numéro de ticket',
    ROUND(SUM(article.PRIX_ACHAT * ventes.QUANTITE * 1.15),
            2) AS 'Montant',
    ventes.ANNEE AS 'Année'
FROM
    article
        JOIN
    ventes ON article.ID_ARTICLE = ventes.ID_ARTICLE
GROUP BY ventes.NUMERO_TICKET
```

## Capture

Voici le résultat de la requête:

![Exercice16](exercice16.png)

## Remarques
Aucune