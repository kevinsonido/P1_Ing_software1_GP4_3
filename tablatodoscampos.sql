use Fac_grupotienda3;

--select * from tablatodos;

select * from tablatodoscampos;
create table tablatodoscampos(

codigo_tienda int primary key,
direccion_tienda varchar(30),
nombre_tienda varchar(30),
imagen varchar(50),
dpi_cliente varchar(50),
nombre_cliente varchar(50),
correo_cliente varchar(50),
no_telefono varchar(15),
direccion_cliente varchar(80),
nit_cliente varchar(15),
total_a_pagar money,
nombre_producto varchar(80),
precio money, 
cantidad_comprada int,
sub_total money
);





alter table tablatodoscampos
ALTER COLUMN nombre_producto varchar(300);