-- insert tienda.
select * from tienda
insert into tienda values('nueva esperanza');
insert into tienda values('Tienda 1');
-- insert estado
select * from estado
insert into estado values('Boveda');
insert into estado values('In Hold');

-- insert producto
select * from producto
--delete from producto
--where idproducto=1
insert into producto values ('link 1','producto1','linkde imagen',25.30,3,(select (cantidad*precio)as total from producto));

-- insert dir_entrega
select * from dir_entrega
insert into dir_entrega values('Kevin','Beteta', 'email@corre.com','55555555','Guatemala','Guatemala','7002','Ciudad zona 9');

-- insert dir_factura
select * from dir_factura
insert into dir_factura values('Kevin','Beteta', 'email@corre.com','55555555','Guatemala','Guatemala','7002','Ciudad zona 9');

Select * from opcionescolor;
insert into opcionescolor values('color', 'yellow');

select * from opcionesmaterial;
insert into opcionesmaterial values('material','Aluminio');

select * from mediopago;
insert into mediopago values('Tarjeta');

select * from opciones;
insert into opciones values (1,1);


select * from detallefactura
insert into detallefactura values(2,'link1','producto1','imagen1',1);



select * from dir_factura f
inner join dir_entrega e on f.id_factura = e.id_entrega ;


create table tablatodos(

nombre_tienda varchar(40),
estado_descripcion varchar(20),
fecha_pedido date, --yyyy-mm-dd
link_producto varchar(300),
nombre_producto varchar(300),
imagen_producto varchar(300),
precio_producto money, 
cantidad_producto int, 
nombre_cl varchar(50),
apellido_cl varchar(50),
email_cl varchar(50),
telefono_cl varchar(50),
pais_cl varchar(50),
ciudad_cl varchar(50),
codigo_postal_cl varchar(50),
direccion_cl varchar(50),
nombre_cl_fac varchar(50),
apellido_cl_fac varchar(50),
email_cl_fac varchar(50),
telefono_cl_fac varchar(50),
pais_cl_fac varchar(50),
ciudad_cl_fac varchar(50),
codigo_postal_cl_fac varchar(50),
direccion_cl_fac varchar(50),
labelcolor varchar(20), 
valorcolor varchar(20),
labelmaterial varchar(20), 
valormaterial varchar(20),
metodopago varchar(30)
);


select * from tablatodos;
alter table tablatodos
add cantidadpedido int,
subtotal money, 
total money,
total_producto money;

alter table tablatodos
add idtablatodos int primary key identity;

alter table tablatodos
drop column fecha_pedido;



