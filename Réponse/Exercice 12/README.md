# Exercice 12

## Enoncé

Lister chaque ticket pour lequel la quantité totale d’articles vendus est supérieure à 500.   On exclura du total, les ventes ayant une quantité supérieure à 50 (classer par quantité décroissante)

## Requête

``` sql
SELECT 
    ventes.NUMERO_TICKET AS 'Numéro de ticket',
    SUM(QUANTITE) AS 'Quantité'
FROM
    VENTES
WHERE ventes.QUANTITE <= 50
GROUP BY ventes.NUMERO_TICKET
HAVING SUM(QUANTITE) > 500
ORDER BY SUM(QUANTITE) DESC

```

## Capture

Voici le résultat de la requête:

![Exercice12](exercice12.png)

## Remarques
Aucune