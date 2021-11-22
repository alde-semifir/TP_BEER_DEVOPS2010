-- 7 Quelles sont les tickets émis au mois de mars et juin 2014 ?

SELECT 
    *
FROM
    ticket
WHERE
    annee = 2014
        AND MONTH(date_vente) IN (3 , 6);
