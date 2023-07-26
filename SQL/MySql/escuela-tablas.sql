-- create database colegio_2;
use colegio_2;

-- crear tabla estudiantes
create table estudiantes(
	id_estudiante int primary key,
    nombre varchar(50),
    apellido varchar(50),
    edad int,
    id_clase int
    );
    
    -- crear tabla clases
create table clases(
	id_clase int primary key,
    nombre varchar(50),
    profesor varchar(50)
);

-- crear tabla de notas (union)
create table notas(
	id_estudiante int,
    id_clase int,
    nota double,
    primary key (id_estudiante, id_clase),
    foreign key (id_estudiante) references Estudiantes(id_estudiante),
    foreign key (id_clase) references clases(id_clase)
);


insert into clases(id_clase, nombre, profesor)
values (1, "programacion", "rafael");

insert into estudiantes(id_estudiante, nombre, apellido, edad, id_clase)
values (1, "oscar", "delgado", 12, 1);

insert into notas(id_estudiante, id_clase, nota)
values (1, 1, 4);

-- join's
select estudiantes.nombre, clases.nombre, notas.nota from estudiantes
-- especificamos que si o si los datos del id que se relaciona deben ser iguales
join clases on estudiantes.id_clase = clases.id_clase
join notas on estudiantes.id_estudiante = notas.id_estudiante
and clases.id_clase = notas.id_clase;


