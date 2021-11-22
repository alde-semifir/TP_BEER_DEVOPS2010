-- 8 Afficher la liste des bières classée par couleur. (Afficher l’id et le nom)

SELECT 
    id_article, nom_article, nom_couleur
FROM
    article
        JOIN
    couleur ON Article.ID_couleur = Couleur.ID_couleur
ORDER BY couleur.id_couleur;