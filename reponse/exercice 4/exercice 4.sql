-- ----------------------------------------------------------------------------------
--                                     EXERCICE 4
-- Editer la liste des articles apparaissant à 50 et plus exemplaires sur un ticket.
-- 
-- -----------------------------------------------------------------------------------

SELECT 
    NOM_ARTICLE AS Article, ventes.QUANTITE AS Quantité
FROM
    article,
    ventes
WHERE
    ventes.QUANTITE >= 50
