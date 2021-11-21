select article.ID_ARTICLE, article.NOM_ARTICLE, article.VOLUME, (select sum(ventes.QUANTITE) from ventes
																where ventes.ANNEE='2016' 
                                                                and ventes.ID_ARTICLE=article.ID_ARTICLE) as qte
from article
where article.ID_TYPE in (select type.ID_TYPE from type where type.NOM_TYPE='Trappiste')
group by article.ID_ARTICLE
order by qte desc
limit 5;