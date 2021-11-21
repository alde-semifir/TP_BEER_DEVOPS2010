select article.ID_ARTICLE, article.NOM_ARTICLE, article.VOLUME, (select sum(ventes.QUANTITE) from ventes
																where ventes.ANNEE='2016' 
                                                                and ventes.ID_ARTICLE=article.ID_ARTICLE) as qte
from article
group by article.ID_ARTICLE
order by qte desc
limit 20;