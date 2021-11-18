select  nom_article , id_article,couleur.NOM_COULEUR
from article
join couleur on article.ID_Couleur=couleur.ID_Couleur
order by couleur.ID_Couleur;
