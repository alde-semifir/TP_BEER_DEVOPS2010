SELECT beer.article.NOM_ARTICLE, beer.ventes.QUANTITE 
FROM ventes
INNER JOIN beer.article ON ventes.ID_ARTICLE = beer.article.ID_ARTICLE
where beer.ventes.QUANTITE > 50

