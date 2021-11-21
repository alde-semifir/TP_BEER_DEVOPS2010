select fabricant.NOM_FABRICANT, (select count(ventes.NUMERO_TICKET) from ventes
where ventes.ID_ARTICLE in (select article.ID_ARTICLE from article
							where article.ID_MARQUE in (select marque.ID_MARQUE from marque 
														where marque.ID_FABRICANT=fabricant.ID_FABRICANT))
	  and ventes.ANNEE='2014' ) as nbe
from fabricant 
group by fabricant.NOM_FABRICANT
