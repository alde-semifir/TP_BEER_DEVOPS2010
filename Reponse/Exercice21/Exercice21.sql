# Coder de 3 manières différentes la requête suivante : Lister les pays qui fabriquent des bières de type ‘Trappiste’.
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
                            type.NOM_TYPE = 'Trappiste')));
                            
SELECT DISTINCT
    pays.NOM_PAYS
FROM
    pays
        JOIN
    marque ON pays.ID_PAYS = marque.ID_PAYS
        JOIN
    article ON marque.ID_MARQUE = article.ID_MARQUE
        JOIN
    type ON article.ID_TYPE = type.ID_TYPE
WHERE
    type.NOM_TYPE = 'Trappiste';