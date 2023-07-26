use mydb;

select * from restaurante;

insert into restaurante
values(3, "comidaPeruana", "cra27#4", 3112334567, '08:00:00', '17:30:00');

select * from restaurante;

select * from empleado;

insert into empleado
values(1, "oscar", "mesero", 800000, current_date, 1, 1, 1, 1);

select * from empleado;

alter table empleado
drop Empleadocol;

SELECT NombreRestaurante, DireccionRestaurante
FROM Restaurante;

select * from restaurante;

UPDATE restaurante
SET NombreRestaurante = "comidaArgentina"
WHERE idRestaurante=2;

UPDATE restaurante
SET NombreRestaurante = "comidaChilena", DireccionRestaurante = "suba"
WHERE idRestaurante=3;

select * from restaurante;

UPDATE restaurante
SET NombreRestaurante = "comidaMexicana", DireccionRestaurante = "chapinero"
WHERE idRestaurante=2 and NombreRestaurante="comidaArgentina";

select * from restaurante;

delete from empleado where idEmpleado=1;

drop table materia;

