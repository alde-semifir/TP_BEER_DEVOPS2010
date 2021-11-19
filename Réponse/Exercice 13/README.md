# Exercice 13

## Enoncé

Lister les bières de type ‘Trappiste’. (id, nom de la bière, volume et titrage)

## Requête

``` sql
SELECT 
	ID_ARTICLE as " ide de l'article",
    NOM_ARTICLE as "Nom de l'article",
    VOLUME,
    TITRAGE,
    type.NOM_TYPE as "Type de bière"
FROM
    article
        JOIN
    type ON article.ID_TYPE = type.ID_TYPE
WHERE
    type.NOM_TYPE = 'Trappiste'

```

## Capture

Voici le résultat de la requête:

![Exercice13](exercice13.png)

## Remarques
Aucune