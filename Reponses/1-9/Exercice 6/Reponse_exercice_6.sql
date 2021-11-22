-- 6 Quelles sont les tickets émis entre les mois de mars et avril 2014 ?

SELECT 
    *
FROM
    ticket
WHERE
    annee = 2014
        AND MONTH(date_vente) IN (3 , 4);