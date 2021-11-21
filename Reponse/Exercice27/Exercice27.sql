# Donner l’ID, le nom, le volume et la quantité vendue des 5 ‘Trappistes’ les plus vendus en 2016.
SELECT Qté.ID_ARTICLE AS ID,
NOM_ARTICLE	AS Nom,
VOLUME AS Volume,
Sum(QUANTITE) AS Quantité
from
(SELECT ventes.ID_ARTICLE, ventes.QUANTITE from ventes
where ventes.ANNEE ='2016') AS Qté,
(SELECT
article.ID_ARTICLE,
article.NOM_ARTICLE,
article.VOLUME from article
where article.ID_TYPE IN (SELECT 
type.ID_TYPE FROM type
WHERE type.NOM_TYPE = 'Trappiste')) AS Trappiste
WHERE
    Qté.ID_ARTICLE = Trappiste.ID_ARTICLE
group by ID
Order by Quantité DESC Limit 5

