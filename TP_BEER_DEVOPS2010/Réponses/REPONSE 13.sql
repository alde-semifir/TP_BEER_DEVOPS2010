SELECT NOM_ARTICLE, ID_ARTICLE, VOLUME, TITRAGE,  type.NOM_TYPE
FROM article
JOIN type on type.ID_TYPE = article.ID_TYPE
where type.NOM_TYPE = "Trappiste"