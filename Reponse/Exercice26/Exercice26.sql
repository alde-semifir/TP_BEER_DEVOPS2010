# Donner l’ID, le nom, le volume et la quantité vendue des 20 articles les plus vendus en 2016.
SELECT article.ID_ARTICLE AS ID,
article.NOM_ARTICLE	AS Nom,
article.VOLUME AS Volume,
(SELECT sum(ventes.QUANTITE) from ventes
where ventes.ANNEE ='2016'and ventes.ID_ARTICLE=article.ID_ARTICLE
) AS Quantité
From article
group by ID
Order by Quantité DESC Limit 20
