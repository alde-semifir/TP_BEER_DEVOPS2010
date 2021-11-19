SELECT article.NOM_ARTICLE, sum(ventes.QUANTITE) as totalventes, ventes.annee
FROM ventes
JOIN article ON ventes.ID_ARTICLE = article.ID_ARTICLE
group by article.NOM_ARTICLE, ventes.ANNEE