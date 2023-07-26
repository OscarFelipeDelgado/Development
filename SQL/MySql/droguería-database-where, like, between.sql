create database drogueria;
use drogueria;

 create table medicamentos(
  codigo int unsigned auto_increment,
  nombre varchar(20),
  laboratorio varchar(20),
  precio decimal(5,2) unsigned,
  cantidad int unsigned,
  primary key(codigo)
 );
 
select * from medicamentos;
 
insert into medicamentos (nombre,laboratorio,precio,cantidad)
values('Sertal','Roche',5.2,100);
insert into medicamentos (nombre,laboratorio,precio,cantidad)
values('Buscapina','Roche',4.10,200);
insert into medicamentos (nombre,laboratorio,precio,cantidad)
values('Amoxidal 500','Bayer',15.60,100);
insert into medicamentos (nombre,laboratorio,precio,cantidad)
values('Paracetamol 500','Bago',1.90,200);
insert into medicamentos (nombre,laboratorio,precio,cantidad)
values('Bayaspirina','Bayer',2.10,150); 
insert into medicamentos (nombre,laboratorio,precio,cantidad)
values('Amoxidal jarabe','Bayer',5.10,250); 

select * from medicamentos where precio between 5 and 15;

select * from medicamentos where laboratorio like "bayer" or laboratorio like "Bago";

delete from medicamentos where cantidad between 100 and 200; 

-- COUNT -----------------------------------------------------
-- SELECT COUNT(columna) FROM tabla WHERE condición;
select count(cantidad) from medicamentos where cantidad = 250; 


-- SUM -------------------------------------------------------
-- SELECT SUM(columna) FROM tabla WHERE condición;
select sum(precio) from medicamentos where precio < 5;
-- ----------------------------------------------------------
select precio from medicamentos where precio < 5;

-- AVG
-- SELECT AVG(columna) FROM tabla WHERE condición;
select avg(precio) from medicamentos where laboratorio="bayer";