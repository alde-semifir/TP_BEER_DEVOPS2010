SELECT 
    ID_ARTICLE AS 'ID de l\'article', QUANTITE AS ' Quantité'
FROM
    ventes
WHERE
    QUANTITE > 50
    
order by QUANTITE