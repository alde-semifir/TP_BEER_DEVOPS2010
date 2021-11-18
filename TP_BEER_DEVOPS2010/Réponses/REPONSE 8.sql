SELECT NOM_ARTICLE,  couleur.NOM_COULEUR as couleur
FROM article
JOIN couleur on couleur.ID_Couleur = couleur.ID_Couleur
ORDER BY couleur