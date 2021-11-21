SELECT 
    art_nom_vol.ID_ARTICLE,
    art_nom_vol.NOM_ARTICLE,
    art_nom_vol.VOLUME,
    qte.SumQte2016
FROM
    (SELECT 
        ID_ARTICLE, article.NOM_ARTICLE, article.VOLUME
    FROM
        article) art_nom_vol,
    (SELECT 
        ventes.ID_ARTICLE, SUM(ventes.QUANTITE) AS SumQte2016
    FROM
        ventes
    WHERE
        ANNEE = '2016'
    GROUP BY ID_ARTICLE) qte
WHERE
    art_nom_vol.ID_ARTICLE = qte.ID_ARTICLE
        AND qte.SumQte2016 > ((SELECT 
            MAX(qte.SumQte2016)
        FROM
            (SELECT 
                ID_ARTICLE, article.NOM_ARTICLE, article.VOLUME
            FROM
                article) art_nom_vol,
            (SELECT 
                ventes.ID_ARTICLE, SUM(ventes.QUANTITE) AS SumQte2016
            FROM
                ventes
            WHERE
                ANNEE = '2016'
            GROUP BY ID_ARTICLE) qte
        WHERE
            art_nom_vol.ID_ARTICLE = qte.ID_ARTICLE) * 0.85)
ORDER BY SumQte2016 DESC