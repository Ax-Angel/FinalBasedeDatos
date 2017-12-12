--@Autor(es): Sanchez Max Armando, Rodriguez Mendoza Angel Rafael
--@Fecha creación: 11/12/2017
--@Descripción: Creacion de secuencias

create sequence producto_seq
	start with 1
	increment by 1
	nomaxvalue
	nominvalue
	nocycle;

create sequence precio_producto_seq
	start with 1
	increment by 1
	nomaxvalue
	nominvalue
	nocycle;

create sequence cliente_seq
	start with 1
	increment by 1
	nomaxvalue
	nominvalue
	nocycle;

create sequence direccion_seq
	start with 1
	increment by 1
	nomaxvalue
	nominvalue
	nocycle;

create sequence forma_pago_seq
	start with 1
	increment by 1
	nomaxvalue
	nominvalue
	nocycle;

create sequence orden_compra
	start with 1
	increment by 1
	nomaxvalue
	nominvalue
	nocycle;

create sequence status_orden_seq
	start with 1
	increment by 1
	nomaxvalue
	nominvalue
	nocycle;

create sequence status_orden_historico_seq
	start with 1
	increment by 1
	nomaxvalue
	nominvalue
	nocycle;