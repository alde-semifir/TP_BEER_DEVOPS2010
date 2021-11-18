-- ----------------- EXERCICE 5 --------------------------
--  Quelles sont les tickets émis au mois de mars 2014. --
-- -------------------------------------------------------
SELECT 
    Numero_ticket, DATE_VENTE
FROM
    ticket
WHERE
    MONTH(Date_VENTE) = 03 AND YEAR (Date_Vente) = 2014
    