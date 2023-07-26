create database holamundo;
show databases;
use holamundo;

create table animales(
	id int,
    tipo varchar (255),
    estado varchar(255),
    primary key (id)
);

-- insert into	animales(tipo, estado) values ('chanchito', 'feliz');
-- comentarios
alter table animales modify column id int auto_increment;

alter table animales modify column estado varchar(250);

show create table animales;

CREATE TABLE `animales` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tipo` varchar(255) DEFAULT NULL,
  `estado` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
);

insert into	animales(tipo, estado) values ('chanchito', 'feliz');
insert into	animales(tipo, estado) values ('dragon', 'feliz');
insert into	animales(tipo, estado) values ('felipe', 'triste');

select * from animales;
select * FROM ANIMALES WHERE ID=1;
select * FROM ANIMALES WHERE ESTADO='feliz' and tipo= 'felipe';

update animales set estado = 'triste' where id =3;

select * from animales;

delete from animales where id=4; 

update animales set estado = 'triste' where tipo = 'dragon';
-- Error Code: 1175. You are using safe update mode and you tried to update a table without a WHERE that uses a KEY column.  
-- To disable safe mode, toggle the option in Preferences -> SQL Editor and reconnect.

-- error 1175, cuando usamos DELETE o  ATE, porque necesitamos usar tambien
-- un ID
-- ------------------------------------------------------------

CREATE TABLE user (
	id int not null auto_increment,
    name varchar(50) not null,
    edad int not null,
    email varchar(100) not null,
    primary key (id)
);

insert into user (name, edad, email) values ('Oscar', 25, 'oscar@gmail.com');
insert into user (name, edad, email) values ('Layla', 15, 'layla@gmail.com');
insert into user (name, edad, email) values ('Nicolas', 36, 'nico@gmail.com');
insert into user (name, edad, email) values ('Chanchito', 7, 'chanchito@gmail.com');

-- select nos muestra información de las tablas de pendiendo de las condiciones que le demos
select * from user;
select * from user limit 1;
select * from user where edad > 15;
select * from user where edad >= 15;
select * from user where edad > 20 and email = 'nico@gmail.com';
select * from user where edad > 20 or email = 'layla@gmail.com'; 
select * from user where email != 'layla@gmail.com';
select * from user where edad between 15 and 30;
select * from user where email like '%gmail%';
select * from user where email like '%gmail';
select * from user where email like 'oscar%';

-- no muestra la consulta en orden asc endente
select * from user order by edad asc;
select * from user order by edad desc;

select max(edad) as mayor from user;
select max(edad) as mayorongo from user;
select max(edad) from user;

select min(edad) as pelao from user;

select	id, name from user;
select id, name as apodo from user;

select * from holamundo
