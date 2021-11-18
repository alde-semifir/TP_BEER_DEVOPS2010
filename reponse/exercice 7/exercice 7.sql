-- ---------------------EXERCICE 7 ----------------------------
-- Quelles sont les tickets émis au mois de mars et juin 2014 ?
-- -------------------------------------------------------------

SELECT Numero_ticket, DATE_VENTE
FROM ticket

WHERE 

 MONTH(Date_VENTE) = '03' OR  MONTH(Date_VENTE) = '06' 