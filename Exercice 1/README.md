# Exercice 1

## Enoncé

1. Quels sont les tickets qui comportent l’article d’ID 500, afficher le numéro de ticket
uniquement ?

## Requête

``` sql
SELECT ventes.NUMERO_TICKET
FROM ventes
WHERE ventes.ID_ARTICLE = "500"
```


## Remarques
Aucune