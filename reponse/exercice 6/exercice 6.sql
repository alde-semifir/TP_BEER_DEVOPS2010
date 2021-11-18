-- -------------------------EXECRICE 6 ------------------------------
-- Quelles sont les tickets émis entre les mois de mars et avril 2014 
-- ------------------------------------------------------------------

SELECT Numero_ticket, DATE_VENTE
FROM ticket

WHERE 

 MONTH(Date_VENTE) BETWEEN '03' AND '04' AND YEAR (Date_Vente) = 2014