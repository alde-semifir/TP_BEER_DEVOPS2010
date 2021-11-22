-- 24 Editer les quantités vendues pour chaque couleur en 2014.
SELECT 
    ID_Couleur,
    NOM_COULEUR,
    (
        SELECT SUM(QUANTITE)
        FROM Ventes
        WHERE ANNEE = 2014
              AND ID_ARTICLE IN (
                  SELECT ID_ARTICLE
                  FROM Article
                  WHERE ID_Couleur = C.ID_Couleur
                )
    ) AS Quantite
FROM Couleur AS C;