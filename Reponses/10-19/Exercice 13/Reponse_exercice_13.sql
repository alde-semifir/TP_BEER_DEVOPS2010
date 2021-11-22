-- 13 Lister les bières de type ‘Trappiste’. (id, nom de la bière, volume et titrage)
SELECT id_article, nom_type, volume, titrage
FROM article
JOIN Type 
ON Article.ID_type = type.ID_type
WHERE type.nom_type = 'Trappiste';