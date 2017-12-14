--@Autor(es): Sanchez Max Armando, Rodriguez Mendoza Angel Rafael
--@Fecha creación: 11/12/2017
--@Descripción: Crea las entidades del proyecto


create table producto (
	producto_id numeric(10,0) not null,
	nombre varchar2(40) not null,
	fecha_precio_inicio date default sysdate not null,
	precio_actual numeric(6,2) not null,
	copias_vendidas numeric(10,0) not null,
	copias_en_existencia numeric(10,0) not null,
	url_setreaming varchar2(40) not null,
	num_visualizaciones numeric(10,0) not null,
	folio varchar2(13) not null,
	tipo_producto char(1) not null,
	constraint producto_pk primary key(producto_id),
	constraint producto_folio_uk unique(folio),
	constraint producto_url_uk unique(url_setreaming),
	constraint producto_tipo_chk check(tipo_producto in('P','V','A'))
);

create table precio_producto(
	precio_producto_id numeric(10,0) not null,
	precio numeric(6,2) not null,
	fecha_inicio date default sysdate not null,
	fecha_fin date default sysdate not null,
	producto_id numeric(10,0) not null,
	constraint precio_producto_pk primary key(precio_producto_id),
	constraint producto_id_fk foreign key(producto_id) references producto(producto_id)
);

create table videojuego(
	producto_id numeric(10,0) not null,
	nombre varchar2(40) not null,
	descripcion varchar2(40) not null,
	tipo_consola varchar2(40) not null,
	constraint videojuego_pk primary key(producto_id),
	constraint prod_videojuego_id_fk foreign key(producto_id) references producto(producto_id)
);
create table album_musical(
	producto_id numeric(10,0) not null,
	nombre_artista varchar2(40) not null,
	nombre_album varchar2(40) not null,
	disquera varchar2(40) not null,
	anio_creacion numeric(4) not null,
	constraint album_pk primary key(producto_id),
	constraint prod_album_id_fk foreign key(producto_id) references producto(producto_id)
);
create table pelicula(
	producto_id numeric(10,0) not null,
	nombre varchar2(40) not null,
	genero varchar2(20) not null,
	duracion numeric(4,1) not null,
	clasificacion varchar2(4) not null,
	formato varchar2(20) not null,
	constraint pelicula_pk primary key(producto_id),
	constraint prod_pelicula_id_fk foreign key(producto_id) references producto(producto_id)
);
create table forma_pago(
	forma_pago_id numeric(10,0) not null,
	titular varchar2(40) not null,
	banco varchar2(40) not null,
	tipo_forma_pago char(1) not null,
	constraint forma_pago_pk primary key(forma_pago_id),
	constraint forma_pago_tipo_chk check(tipo_forma_pago in('C','T')) --C=TARJETA_CREDITO T=TRANSFERENCIA
);
create table tarjeta_credito(
	forma_pago_id numeric(10,0) not null,
	num_tarjeta varchar2(20) not null,
	tipo_tarjeta varchar2(15) not null,
	mes_vencimiento varchar2(2) not null,
	anio_vencimiento varchar2(2) not null,
	num_seguridad varchar2(3) not null,
	constraint tarjeta_pk primary key(forma_pago_id),
	constraint form_pago_tarjeta_id_fk foreign key(forma_pago_id) references forma_pago(forma_pago_id),
	constraint tarjeta_num_tarjeta_uk unique(num_tarjeta)
);
create table transferencia(
	forma_pago_id numeric(10,0) not null,
	CLABE varchar2(20) not null,
	constraint transf_pk primary key(forma_pago_id),
	constraint form_pago_transf_id_fk foreign key(forma_pago_id) references forma_pago(forma_pago_id),
	constraint transf_CLABE_uk unique(CLABE)
);
create table cliente(
	cliente_id numeric(10,0) not null,
	nombre varchar2(40) not null,
	ap_paterno varchar2(40) not null,
	ap_materno varchar2(40) not null,
	telefono numeric(10,0) not null,
	rfc varchar2(10) null,
	username varchar2(20) not null,
	password varchar2(10) not null,
	forma_pago_id numeric(10,0) not null,
	puntos numeric(2,0) default 0 not null,
	constraint cliente_pk primary key(cliente_id),
	constraint fpago_cliente_fk foreign key(forma_pago_id) references forma_pago(forma_pago_id),
	constraint cliente_usrname_ul unique(username)
	);
create table tipo_direccion(
	tipo_direccion_id numeric(10,0) not null,
	clave char(1) not null,
	descripcion varchar2(40) not null,
	constraint tipo_direccion_pk primary key(tipo_direccion_id),
	constraint tipo_direccion_clave_chk check(clave in ('E','F')) --E=ENTREGA F=FACTURACION
);
create table direccion(
	direccion_id numeric(10,0) not null,
	calle varchar2(40) not null,
	num_ext varchar2(20) not null,
	num_int varchar2(20) not null,
	colonia varchar2(40) not null,
	codigo_postal varchar2(40) not null,
	municipio varchar2(40) not null,
	entidad_fed varchar2(40) not null,
	tipo_direccion_id numeric(10,0) not null,
	cliente_id numeric(10,0) not null,
	constraint direccion_pk primary key(direccion_id),
	constraint tdir_dir_id_fk foreign key(tipo_direccion_id) references tipo_direccion(tipo_direccion_id),
	constraint cliente_dir_id_fk foreign key(cliente_id) references cliente(cliente_id)
);
create table status_orden(--R=REGISTRADA, P=PAGADA,V=EN ENVIO, S=STREAMING HABILITADO, E=ENTREGADA, D=DEVUELTA
	status_orden_id numeric(10,0) not null,
	clave char(1) not null,
	descripcion varchar2(40) not null,
	constraint status_orden_pk primary key(status_orden_id),
	constraint status_orden_clave_chk check(clave in('R','P','V','S','E','D'))
);
create table orden_compra(
	orden_compra_id numeric(10,0) not null,
	folio varchar2(10) not null,
	fecha_status date default sysdate not null,
	con_envio numeric(1,0) not null,
	con_streaming numeric(1,0) not null,
	cliente_id numeric(10,0) not null,
	status_orden_id numeric(10,0) not null,
	constraint orden_compra_pk primary key(orden_compra_id),
	constraint cliente_oc_id_fk foreign key(cliente_id) references cliente(cliente_id),
	constraint stator_ordenc_id_fk foreign key(status_orden_id) references status_orden(status_orden_id),
	constraint orden_compra_envio_chk check(con_envio in(1,0)),
	constraint orden_compra_stream_chk check(con_streaming in(1,0))
);
create table status_orden_historico(
	status_orden_historico_id numeric(10,0) not null,
	fecha_status date default sysdate not null,
	status_orden_id numeric(10,0) not null,
	orden_compra_id numeric(10,0) not null,
	constraint so_historico_pk primary key(status_orden_historico_id),
	constraint so_sohist_id_fk foreign key(status_orden_id) references status_orden(status_orden_id),
	constraint orc_sohist_id_fk foreign key(orden_compra_id) references orden_compra(orden_compra_id)
);
create table orden_compra_producto(
	producto_id numeric(10,0) not null,
	orden_compra_id numeric(10,0) not null,
	cantidad numeric(3,0) not null,
	precio_unitario numeric(6,2) not null,
	constraint orc_prod_pk primary key(producto_id,orden_compra_id),
	constraint prod_ocp_id_fk foreign key(producto_id) references producto(producto_id),
	constraint orc_ocp_id_fk foreign key(orden_compra_id) references orden_compra(orden_compra_id)
);
create table factura(
	factura_id numeric(10,0) not null,
	folio_factura varchar2(10) not null,
	monto_total numeric(6,2) not null,
	fecha_factura date default sysdate not null,
	iva as (monto_total*0.16) not null,
	forma_pago_id numeric(10,0) not null,
	orden_compra_id numeric(10,0) not null,
	constraint factura_pk primary key(factura_id),
	constraint fp_fac_id_fk foreign key(forma_pago_id) references forma_pago(forma_pago_id),
	constraint orc_fac_id_fk foreign key(orden_compra_id) references orden_compra(orden_compra_id),
	constraint fact_folio_uk unique(folio_factura)
);
create table empresa_paquetera(
	empresa_paquetera_id numeric(10,0) not null,
	nombre varchar2(40) not null,
	fecha_registro date default sysdate not null,
	zona char(1) not null,
	constraint empresa_pk primary key(empresa_paquetera_id),
	constraint empresa_zona_chk check(zona in('A','B','C'))
);
create table paquete(
	paquete_id numeric(10,0) not null,
	num_seguimiento varchar2(24) not null,
	fecha_envio date default sysdate not null,
	factura_id numeric(10,0) not null,
	empresa_paquetera_id numeric(10,0) not null,
	constraint paquete_pk primary key(paquete_id),
	constraint fact_paq_id_fk foreign key(factura_id) references factura(factura_id),
	constraint empresa_paq_id_fk foreign key(empresa_paquetera_id) references empresa_paquetera(empresa_paquetera_id),
	constraint paquete_num_seg_uk unique(num_seguimiento)
);
create table seguimiento_paquete(
	seguimiento_paquete_id numeric(10,0) not null,
	paquete_id numeric(10,0) not null,
	num_escala numeric(10,0) not null,
	fecha_arrivo date not null,
	lugar varchar2(40) not null,
	constraint seg_paquete_pk primary key(seguimiento_paquete_id,paquete_id),
	constraint paq_segp_id_fk foreign key(paquete_id) references paquete(paquete_id),
	constraint segpaq_num_esc_uk unique(num_escala)
);