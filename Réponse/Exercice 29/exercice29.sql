SELECT 
    v2016.NOM_TYPE,
    v2016.Quantite2016,
    v2015.Quantite2015,
    ROUND(((v2016.Quantite2016 - v2015.Quantite2015) / v2016.Quantite2016 * 100),
            2) AS Variation
FROM
    (SELECT 
        ID_TYPE, NOM_TYPE, SUM(v.QUANTITE) AS Quantite2016
    FROM
        (SELECT 
        a.ID_ARTICLE, a.NOM_ARTICLE, a.VOLUME, a.ID_TYPE, t.NOM_TYPE
    FROM
        (SELECT 
        ID_ARTICLE, NOM_ARTICLE, VOLUME, ID_TYPE
    FROM
        article) a, (SELECT 
        type.NOM_TYPE, type.ID_TYPE
    FROM
        type) t
    WHERE
        a.ID_TYPE = t.ID_TYPE) a, (SELECT 
        ventes.ID_ARTICLE, ventes.QUANTITE, ventes.ANNEE
    FROM
        ventes
    WHERE
        ANNEE = '2016') v
    WHERE
        a.ID_ARTICLE = v.ID_ARTICLE
    GROUP BY ID_TYPE) v2016,
    (SELECT 
        ID_TYPE, NOM_TYPE, SUM(v.QUANTITE) AS Quantite2015
    FROM
        (SELECT 
        a.ID_ARTICLE, a.NOM_ARTICLE, a.VOLUME, a.ID_TYPE, t.NOM_TYPE
    FROM
        (SELECT 
        ID_ARTICLE, NOM_ARTICLE, VOLUME, ID_TYPE
    FROM
        article) a, (SELECT 
        type.NOM_TYPE, type.ID_TYPE
    FROM
        type) t
    WHERE
        a.ID_TYPE = t.ID_TYPE) a, (SELECT 
        ventes.ID_ARTICLE, ventes.QUANTITE, ventes.ANNEE
    FROM
        ventes
    WHERE
        ANNEE = '2015') v
    WHERE
        a.ID_ARTICLE = v.ID_ARTICLE
    GROUP BY ID_TYPE) v2015
WHERE
    v2016.id_type = v2015.id_type
ORDER BY Variation DESC