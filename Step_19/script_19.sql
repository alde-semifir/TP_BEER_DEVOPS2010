SELECT 
    article.NOM_ARTICLE AS Article,
    sum(ventes.QUANTITE) as Quantitée,
    ventes.ANNEE
FROM
    ventes
    join article on ventes.ID_ARTICLE= article.ID_ARTICLE
where ANNEE between 2014 and 2016
group by ventes.ID_ARTICLE, ventes.ANNEE
