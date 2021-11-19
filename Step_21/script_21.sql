SELECT 
    pays.NOM_PAYS
FROM
    pays
WHERE
    ID_PAYS IN (SELECT DISTINCT
            (marque.ID_PAYS)
        FROM
            marque
        WHERE
            ID_MARQUE IN (SELECT DISTINCT
                    (id_marque)
                FROM
                    article
                WHERE
                    article.ID_TYPE IN (SELECT 
                            ID_TYPE
                        FROM
                            type
                        WHERE
                            NOM_TYPE = 'Trappiste')))