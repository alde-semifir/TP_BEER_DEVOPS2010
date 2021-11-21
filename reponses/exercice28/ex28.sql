select article.ID_ARTICLE, article.NOM_ARTICLE, article.VOLUME, (select sum(ventes.QUANTITE) from ventes
																where ventes.ANNEE in ('2015')
                                                                and ventes.ID_ARTICLE=article.ID_ARTICLE) as qte2015,
                                                                (select sum(ventes.QUANTITE) from ventes
																where ventes.ANNEE in ('2016')
                                                                and ventes.ID_ARTICLE=article.ID_ARTICLE) as qte2016                                                                
from article
group by article.ID_ARTICLE
having abs(((qte2016-qte2015)/qte2015)*100) < 1;