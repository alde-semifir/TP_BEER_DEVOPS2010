SELECT ID_ARTICLE, NOM_ARTICLE, NOM_COULEUR 
FROM article 
INNER JOIN couleur ON article.ID_Couleur=couleur.ID_Couleur