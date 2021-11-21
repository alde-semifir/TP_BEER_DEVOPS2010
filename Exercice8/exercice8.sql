SELECT id_article, nom_article FROM article
INNER JOIN couleur ON article.id_couleur = couleur.id_couleur
ORDER BY couleur.nom_couleur