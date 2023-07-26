create database constructora;
use constructora;

create table proyectos(
	id_proyecto int auto_increment primary key,
    nombre varchar(50),
    fecha_inicio date,
    fecha_fin date
    );
    
create table empleados(
	id_empleado int auto_increment primary key,
    nombre varchar(50),
    apellido varchar(50),
    edad int,
    id_proyecto int,
    foreign key (id_proyecto) references proyectos (id_proyecto)
    );
    
insert into proyectos (nombre, fecha_inicio, fecha_fin)
values ("Acasias", current_date(), '2023-08-15');

insert into empleados (nombre, apellido, edad, id_proyecto)
values("Oscar", "Delgado", 22, 1);

-- ------------------ --
select proyectos.nombre, empleados.nombre from proyectos
join empleados on proyectos.id_proyecto = empleados.id_proyecto;
    