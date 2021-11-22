-- 28. Donner l’ID, le nom, le volume et les quantités vendues en 2015 et 2016, des bières dont les ventes ont été stables. (Moins de 1% de variation)

SELECT 
    ID_ARTICLE,
    NOM_ARTICLE,
    qte15,
    qte16,
    ((qte16 - qte15) / qte15 * 100) AS variation
FROM
    article AS a
        INNER JOIN
    (SELECT 
        id_article AS id15, SUM(quantite) AS qte15
    FROM
        ventes
    WHERE
        annee = 2015
    GROUP BY id_article) AS r15
        INNER JOIN
    (SELECT 
        id_article AS id16, SUM(quantite) AS qte16
    FROM
        ventes
    WHERE
        annee = 2016
    GROUP BY id_article) AS r16 ON a.id_article = r15.id15
        AND r15.id15 = r16.id16
        AND a.id_article = r16.id16
HAVING variation BETWEEN - 1 AND 1;