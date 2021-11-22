-- 25. Donner pour chaque fabricant, le nombre de tickets sur lesquels apparait un de ses produits en 2014.

SELECT 
    ID_FABRICANT,
    NOM_FABRICANT,
    (SELECT 
            COUNT(*)
        FROM
            Ticket
        WHERE
            CONCAT(annee, NUMERO_TICKET) IN (SELECT 
                    CONCAT(ANNEE, NUMERO_TICKET)
                FROM
                    Ventes
                WHERE
                    annee = 2014
                        AND ID_ARTICLE IN (SELECT 
                            ID_ARTICLE
                        FROM
                            Article
                        WHERE
                            ID_MARQUE IN (SELECT 
                                    id_marque
                                FROM
                                    marque
                                WHERE
                                    id_fabricant = F.ID_FABRICANT)))) AS 'Nbre Tickets 2014'
FROM
    Fabricant AS F
ORDER BY 'Nbre Tickets 2014' DESC;