--drop database Fac_grupotienda3;
use Fac_grupoTienda3;
use examen;
create database Fac_grupotienda3;

use Fac_grupotienda3;

--crea tienda
create table tienda(
idtienda int primary key identity,
nombre_tienda varchar(40)
);

-- crea estado
create table estado(
id_estado int primary key identity,
estado_descripcion varchar(20)
);

--crea pedido
create table pedido(
id_pedido int primary key identity,
fecha_pedido date,
id_estado int,
CONSTRAINT fk_estadopedido FOREIGN KEY (id_estado) REFERENCES estado
);

--crea producto
create table producto(
idproducto int primary key identity,
link_producto varchar(300),
nombre_producto varchar(300),
imagen_producto varchar(300),
precio_producto money, 
cantidad_producto int, 
total_producto money
);

create table dir_entrega
(
id_entrega int primary key identity,
nombre_cl varchar(50),
apellido_cl varchar(50),
email_cl varchar(50),
telefono_cl varchar(50),
pais_cl varchar(50),
ciudad_cl varchar(50),
codigo_postal_cl varchar(50),
direccion_cl varchar(50),
);

--listo
create table dir_factura
(
id_factura int primary key identity,
nombre_cl_fac varchar(50),
apellido_cl_fac varchar(50),
email_cl_fac varchar(50),
telefono_cl_fac varchar(50),
pais_cl_fac varchar(50),
ciudad_cl_fac varchar(50),
codigo_postal_cl_fac varchar(50),
direccion_cl_fac varchar(50),
)

--listo
create table opcionescolor(
idopcionescolores int primary key identity,
labelcolor varchar(20), 
valorcolor varchar(20) 
);
--listo
create table opcionesmaterial(
idopcionesmaterial int primary key identity,
labelmaterial varchar(20), 
valormaterial varchar(20) 
);


--listo
create table mediopago(
id_mediopago int primary key identity,
metodopago varchar(30)
)
--listo
-- encabezado de factura.
create table encabezado(
idencabezado int primary key identity,
idtienda int,
id_pedido int,
iddetalle int,
idproducto int,
id_cantidadpedido int,
CONSTRAINT fk_tiendadetalle FOREIGN KEY (idtienda) REFERENCES tienda,
CONSTRAINT fk_pedidodetalle FOREIGN KEY (id_pedido) REFERENCES pedido,
CONSTRAINT fk_detalle FOREIGN KEY (iddetalle) REFERENCES detallefactura,
CONSTRAINT fk_productodetalle FOREIGN KEY (idproducto) REFERENCES producto,
CONSTRAINT fk_cantidadpedidodetalle FOREIGN KEY (id_cantidadpedido) REFERENCES cantidadpedido
);
--listo
create table detallefactura
(
iddetalle int primary key identity,
idproducto int,
link varchar(300),
nombre varchar(300),
imagen varchar(300),
idopciones int,
CONSTRAINT fk_producto FOREIGN KEY (idproducto) REFERENCES producto,
CONSTRAINT fk_opciones FOREIGN KEY (idopciones) REFERENCES opciones
);


--listo
create table opciones(
idopciones int primary key identity,
idopcionescolores int,
idopcionesmaterial int,
CONSTRAINT fk_opcionescol FOREIGN KEY (idopcionescolores) REFERENCES opcionescolor,
CONSTRAINT fk_opcionesmate FOREIGN KEY (idopcionesmaterial) REFERENCES opcionesmaterial
);


create table cantidadpedido(
id_cantidadpedido int primary key identity,
cantidadpedido int,
subtotal money, 
total money,
id_mediopago int,
id_entrega int,
id_factura int,
CONSTRAINT fk_mediopago FOREIGN KEY (id_mediopago) REFERENCES mediopago,
CONSTRAINT fk_entrega FOREIGN KEY (id_entrega) REFERENCES dir_entrega,
CONSTRAINT fk_factura FOREIGN KEY (id_factura) REFERENCES dir_factura
);
