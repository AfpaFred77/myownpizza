USE `mydb`;
DELIMITER $$
CREATE TRIGGER `Commande_BINS` BEFORE INSERT ON `Commande` FOR EACH ROW
begin
if date_commande >= localtimestamp then
insert into Commande (id,no_commande,client_id,pizza_id,pizzeria_id,date_commande,heure_livraison,livraison)
values (new.id,new.no_commande,new.Client_id,new.pizza_id,new.pizzeria_id,new.date_commande,new.heure_livraison,new.livraison);
end if;
end;
$$
