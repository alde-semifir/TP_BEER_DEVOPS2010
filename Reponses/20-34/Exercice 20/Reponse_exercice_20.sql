-- 20. Lister les articles qui n’ont fait l’objet d’aucune vente en 2014.

SELECT 
    id_article, nom_article
FROM
    article
WHERE
    (SELECT 
            SUM(quantite)
        FROM
            ventes
        WHERE
            id_article = article.id_article
                AND annee = 2014) IS NULL;