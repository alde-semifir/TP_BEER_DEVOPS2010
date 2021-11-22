-- 34 Suppression des bières qui ne sont pas des bières ! (Type ‘Bière Aromatisée’)

delete from Article
where ID_TYPE = (select ID_TYPE from type where NOM_TYPE = 'Bière Aromatisée');
alter table article add constraint
foreign key (id_type)
references type (id_type) on delete cascade;
delete from type where nom_type = "Bière Aromatisée";
SET FOREIGN_KEY_CHECKS=1;
