-- 31  Lister les produits vendus en 2016 dans des quantités jusqu’à -15% des quantités de l’article le plus vendu.

SELECT id_article,
    annee,
    SUM(quantite) AS qte
FROM ventes
WHERE annee = 2016
GROUP BY id_article
HAVING qte >= (
        SELECT MAX(total * 0.85)
        FROM (
                SELECT SUM(quantite) AS total
                FROM ventes
                WHERE annee = 2016
                GROUP BY id_article
            ) AS somme
    );
