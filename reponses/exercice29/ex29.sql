select type.NOM_TYPE, (select sum(ventes.QUANTITE) from ventes where ventes.ANNEE='2015' and ventes.ID_ARTICLE in
								(select article.ID_ARTICLE from article where article.ID_TYPE=type.ID_TYPE)) as qte2015,
					  (select sum(ventes.QUANTITE) from ventes where ventes.ANNEE='2016' and ventes.ID_ARTICLE in
								(select article.ID_ARTICLE from article where article.ID_TYPE=type.ID_TYPE)) as qte2016
from type
group by type.NOM_TYPE
order by ((qte2016-qte2015)/qte2015)*100 desc;
 