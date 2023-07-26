create database hotel;
use hotel;	

create table habitaciones(
	id_habitacion int auto_increment primary key,
    capacidad int,
    precio int
);

create table huespedes(
	id_huesped int auto_increment primary key,
    nombre	varchar(50),
    direccion varchar(50),
    telefono double
);

create table reservas(
	id_reservas int auto_increment primary key,
    fecha_inicio date,
    fecha_finalizacion date,
    id_habitacion int, 
    foreign key (id_habitacion) references habitaciones (id_habitacion),
    id_huesped int, 
    foreign key (id_huesped) references huespedes (id_huesped)
);

create table productosPostobon(
	id_producto int auto_increment primary key,
    nombre varchar(50),
    descripcion text,
    precio double
);

-- insert's ------------------------------
insert into habitaciones (capacidad, precio)
values
(2, 100000),
(3, 150000),
(4, 200000);

insert into huespedes (nombre, direccion, telefono)
values
("Oscar Delgado","Calle 8, #12-32",3113445678),
("Felipe Alfonso","Carrera 3, #23-34",3156754321),
("Omar Gelez","Calle 7, #12-34",3144556787);

insert into productosPostobon (nombre, descripcion, precio)
values
("Manzana","Bebida gaseosa", 2000),
("Naranja","Refresco", 1800),
("Cristal","Agua mineral", 2500);

insert into reservas (fecha_inicio,fecha_finalizacion, id_habitacion, id_huesped)
values
('2023-06-23','2023-06-25', 1, 3),
('2023-05-22','2023-05-24', 2, 1),
('2023-05-29','2023-06-2', 3, 2);

-- join's-----------------------------
select huespedes.nombre, reservas.fecha_finalizacion
from huespedes join reservas on reservas.id_huesped = huespedes.id_huesped;

-- right join--------------------------------------------------------
SELECT *
FROM habitaciones
RIGHT JOIN reservas ON habitaciones.id_habitacion = reservas.id_habitacion;

SELECT *
FROM habitaciones
LEFT JOIN reservas ON habitaciones.id_habitacion = reservas.id_habitacion;

SELECT *
FROM habitaciones
INNER JOIN reservas ON habitaciones.id_habitacion = reservas.id_habitacion;

-- where
select * from huespedes where nombre in ("oscar delgado");

-- like
select * from huespedes where nombre like "%delgado";

-- %: texto antes o despues de el valor a buscar
select * from huespedes where nombre like "%o%";

-- guión bajo _ : sirve para representar caracteres
select * from huespedes where nombre like 'oscar delg___';

SELECT * FROM huespedes WHERE nombre LIKE '%r%' OR nombre LIKE '%f%';

-- between: para numeros, fechas, horas
select * from huespedes where id_huesped between 2 and 6;




