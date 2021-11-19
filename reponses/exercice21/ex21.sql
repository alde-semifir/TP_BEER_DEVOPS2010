SELECT 
    pays.NOM_PAYS
FROM
    pays
WHERE
    pays.ID_PAYS IN (SELECT 
            marque.ID_PAYS
        FROM
            marque
        WHERE 
            marque.ID_MARQUE IN (SELECT 
                    article.ID_MARQUE
                FROM
                    article
                WHERE
                    article.ID_TYPE IN (SELECT 
                            type.ID_TYPE
                        FROM
                            type
                        WHERE
                            type.NOM_TYPE = 'Trappiste') ) );