select  nom_article , QUANTITE
from ventes, article 
where 
ventes.ID_ARTICLE=article.ID_ARTICLE and
QUANTITE > 50;