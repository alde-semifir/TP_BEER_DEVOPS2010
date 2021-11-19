SELECT article.NOM_ARTICLE, continent.NOM_CONTINENT, article.VOLUME
FROM article
JOIN marque ON article.ID_MARQUE = marque.ID_MARQUE
JOIN pays ON marque.ID_PAYS = pays.ID_PAYS
JOIN continent ON pays.ID_CONTINENT = continent.ID_CONTINENT
where continent.NOM_CONTINENT = "Afrique"