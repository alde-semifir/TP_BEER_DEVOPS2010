-- 21. Coder de 3 manières différentes la requête suivante : Lister les pays qui fabriquent des bières de type ‘Trappiste’.
-- Manière 1 : 
SELECT DISTINCT P.ID_PAYS,
    NOM_PAYS
FROM pays AS P
    JOIN Marque AS M ON M.ID_PAYS = P.ID_PAYS
    JOIN Article AS A ON a.ID_MARQUE = M.ID_MARQUE
    JOIN Type AS T ON a.ID_TYPE = t.ID_TYPE
WHERE NOM_TYPE = 'Trappiste';

--Manière 3 :
SELECT P.ID_PAYS,
    NOM_PAYS
FROM pays AS P
WHERE Id_Pays IN (
        SELECT DISTINCT (
                SELECT ID_PAYS
                FROM Marque
                WHERE ID_MARQUE = a.ID_MARQUE
            )
        FROM article AS A
        WHERE ID_TYPE = (
                SELECT ID_TYPE
                FROM Type
                WHERE NOM_TYPE = 'Trappiste'
            )
    );