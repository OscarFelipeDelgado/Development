create database inmobiliaria;
use inmobiliaria;

create table agente(
	id_agente int primary key auto_increment,
    nombre varchar(50),
    telefono int,
    correo varchar(50)
    );
    
create table propiedades(
	id_propiedades int auto_increment primary key,
    titulo varchar(50),
    descripcion text,
    precio double,
    id_agente int,
    foreign key (id_agente) references agente (id_agente)
    );
    
insert into agente (nombre, telefono, correo)
values ("Felipe Delgado", 311474987, "oscar@oscar.com");

insert into propiedades(titulo, descripcion, precio, id_agente)
values ("Casa Grande", "La casa más grande del pedazo", 2000000, 1);

-- join's
select agente.nombre, propiedades.titulo, propiedades.precio
from propiedades
join agente on agente.id_agente = propiedades.id_agente;
    
    