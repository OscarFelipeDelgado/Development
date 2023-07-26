create table products(
	id int not null auto_increment,
    name varchar(50) not null,
    created_by int not null,
    marca varchar(50) not null,
    primary key(id),
    -- asignamos nuestro campo created_by como llave foranea, y lo referenciamos a una primary key de otra tabla
    foreign key(created_by) references user(id)
);

-- todos los nombres de las tablas se deben encontrar en singular por convención
rename table products to product;

insert into product(name, created_by, marca)
values
	('ipad', 1, 'apple'),
    ('iphone', 1, 'apple'),
    ('watch', 2, 'apple'),
    ('macbook', 1, 'apple'),
    ('macbook', 1, 'apple'),
    ('imac', 3, 'apple'),
    ('ipad mini', 2, 'apple');
    
select * from product;

-- u es el alias de la tabla de usuario
select u.id, u.email from user u;

-- p es el alias de la tabla product
-- llamamos las columnas que necesitemos y usamos left join
-- llamamos el left join y juntamos dos columnas que son iguales mediante el =
select u.id, u.email, p.name from user u left join product p on u.id = p.created_by; 
-- right
select u.id, u.email, p.name from user u right join product p on u.id = p.created_by; 
-- inner
select u.id, u.email, p.name from user u inner join product p on u.id = p.created_by; 
-- cross
select u.id, u.name, p.id, p.name from user u cross join product p; 

-- group by
select count(p.id), u.name from product p left join user u on u.id = p.created_by group by p.created_by;

-- having
select count(p.id), u.name from product p left join user u on u.id = p.created_by group by p.created_by
having count(p.id) >= 2;

-- drop, para eliminar tablas
drop table product;