-- 33 Mettre à jour le degré d’alcool des toutes les bières n’ayant pas cette information. On y mettra le degré d’alcool de la moins forte des bières du même type et de même couleur.

select * from article as a
inner join (select id_type, id_couleur,min(titrage) from article as a group by id_couleur, id_type) as min
on a.id_type = min.id_type and a.id_couleur = min.id_couleur
where titrage is null;

update article as a
inner join (select id_type, id_couleur,min(titrage) as mt from article as a group by id_couleur, id_type) as min
on a.id_type = min.id_type and a.id_couleur = min.id_couleur
set titrage = mt
where titrage is null;