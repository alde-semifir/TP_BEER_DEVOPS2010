SELECT NOM_ARTICLE, ID_ARTICLE,  couleur.NOM_COULEUR as couleur
FROM article
JOIN couleur on couleur.ID_Couleur = article.ID_Couleur
ORDER BY couleur