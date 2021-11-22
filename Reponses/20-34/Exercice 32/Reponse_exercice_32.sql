-- 32 Appliquer une augmentation de tarif de 10% pour toutes les bières ‘Trappistes’ de couleur ‘Blonde’

select * from Article as a
inner join type as t
inner join couleur as c
on a.ID_Couleur = c.ID_Couleur and t.ID_TYPE = a.ID_TYPE
where c.NOM_COULEUR like "blonde"
and t.NOM_TYPE like "trappiste";

SET SQL_SAFE_UPDATES=0;

update article as a
inner join type as t
inner join couleur as c
on t.id_type = a.id_type and c.id_couleur = a.id_couleur
set a.prix_achat = a.prix_achat*0.9
where t.nom_type like "trappiste" and c.nom_couleur like "blonde";
