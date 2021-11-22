-- 9 Afficher la liste des bières n’ayant pas de couleur. (Afficher l’id et le nom)

SELECT 
    id_couleur, nom_article
FROM
    Article
WHERE
    id_couleur IS NULL;