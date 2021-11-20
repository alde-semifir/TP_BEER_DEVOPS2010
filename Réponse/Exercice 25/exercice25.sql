SELECT 
    NOM_FABRICANT, COUNT(*)
FROM
    (SELECT 
        ventes.NUMERO_TICKET, ventes.ID_ARTICLE
    FROM
        ventes
    WHERE
        ANNEE = '2014') NumTicket_ID,
    (SELECT 
        ID_ARTICLE, NOM_FABRICANT
    FROM
        article a, (SELECT 
        NOM_FABRICANT, ID_MARQUE
    FROM
        fabricant f, marque m
    WHERE
        f.ID_FABRICANT = m.ID_FABRICANT) fm
    WHERE
        a.ID_MARQUE = fm.ID_MARQUE) NomFab_ID
WHERE
    NumTicket_ID.ID_ARTICLE = NomFab_ID.ID_ARTICLE
GROUP BY NOM_FABRICANT