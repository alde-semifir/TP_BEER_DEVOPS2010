SELECT article.NOM_ARTICLE, sum(ventes.QUANTITE) as "total_ventes"
FROM ventes
JOIN article ON ventes.ID_ARTICLE = article.ID_ARTICLE
where ventes.ANNEE = "2016"
group by article.NOM_ARTICLE