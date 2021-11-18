SELECT article.ID_ARTICLE, article.NOM_ARTICLE,couleur.NOM_COULEUR 
FROM article 
INNER JOIN couleur ON article.ID_Couleur=couleur.ID_Couleur 