SELECT 
    article.NOM_ARTICLE AS Article,
    sum(ventes.QUANTITE) as Quantitée
FROM
    article
    join ventes on article.ID_ARTICLE= ventes.ID_ARTICLE
where ANNEE= 2016
group by Article
