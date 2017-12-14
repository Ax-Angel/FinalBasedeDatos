--@Autor(es): Mejia Valdiviezo Ernesto Daniel
--@Fecha creación: 12/12/2017
--@Descripción: Carga inicial a las tablas

--TABLA EMPRESA_PAQUETERA
insert into empresa_paquetera (empresa_paquetera_id, nombre, fecha_registro, zona) 
	values (1, 'Layo',to_date('01/10/2016','dd/mm/yyyy'), 'A');
insert into empresa_paquetera (empresa_paquetera_id, nombre, fecha_registro, zona) 
	values (2, 'Oyoyo',to_date('01/10/2017','dd/mm/yyyy'), 'A');
insert into empresa_paquetera (empresa_paquetera_id, nombre, fecha_registro, zona) 
	values (3, 'Fadeo',to_date('17/03/2016','dd/mm/yyyy'), 'C');
insert into empresa_paquetera (empresa_paquetera_id, nombre, fecha_registro, zona) 
	values (4, 'Divape',to_date('23/07/2017','dd/mm/yyyy'), 'B');
insert into empresa_paquetera (empresa_paquetera_id, nombre, fecha_registro, zona) 
	values (5, 'Wordify',to_date('08/07/2016','dd/mm/yyyy'), 'C');
insert into empresa_paquetera (empresa_paquetera_id, nombre, fecha_registro, zona) 
	values (6, 'Ntags',to_date('14/09/2017','dd/mm/yyyy'), 'C');
insert into empresa_paquetera (empresa_paquetera_id, nombre, fecha_registro, zona) 
	values (7, 'Tekfly',to_date('28/05/2016','dd/mm/yyyy'), 'B');
insert into empresa_paquetera (empresa_paquetera_id, nombre, fecha_registro, zona) 
	values (8, 'Voonder',to_date('05/09/2017','dd/mm/yyyy'), 'C');
insert into empresa_paquetera (empresa_paquetera_id, nombre, fecha_registro, zona) 
	values (9, 'Tazz',to_date('09/01/2016','dd/mm/yyyy'), 'B');
insert into empresa_paquetera (empresa_paquetera_id, nombre, fecha_registro, zona) 
	values (10, 'Agimba',to_date('03/02/2017','dd/mm/yyyy'), 'A');
--FORMA_PAGO
insert into forma_pago (forma_pago_id, titular, banco, tipo_forma_pago) 
	values (1, 'Hunt MacDunlevy', 'Banorte', 'C');
insert into forma_pago (forma_pago_id, titular, banco, tipo_forma_pago) 
	values (2, 'Sarge Pyner', 'Banamex', 'T');
insert into forma_pago (forma_pago_id, titular, banco, tipo_forma_pago) 
	values (3, 'Maud Rabbe', 'Banorte', 'C');
insert into forma_pago (forma_pago_id, titular, banco, tipo_forma_pago) 
	values (4, 'Bordie Taffs', 'Banamex', 'T');
insert into forma_pago (forma_pago_id, titular, banco, tipo_forma_pago) 
	values (5, 'Randy Sedgwick', 'Banorte', 'C');
insert into forma_pago (forma_pago_id, titular, banco, tipo_forma_pago) 
	values (6, 'Gabby Billison', 'Banamex', 'T');
insert into forma_pago (forma_pago_id, titular, banco, tipo_forma_pago) 
	values (7, 'Elisabetta Leat', 'Banorte', 'C');
insert into forma_pago (forma_pago_id, titular, banco, tipo_forma_pago) 
	values (8, 'Archaimbaud Clayborn', 'Banamex', 'T');
insert into forma_pago (forma_pago_id, titular, banco, tipo_forma_pago) 
	values (9, 'Gabie Olczyk', 'Banorte', 'C');
insert into forma_pago (forma_pago_id, titular, banco, tipo_forma_pago) 
	values (10, 'Ardelia Coatsworth', 'Banamex', 'T');
--TARJETA_CREDITO
insert into tarjeta_credito (forma_pago_id, num_tarjeta, tipo_tarjeta, mes_vencimiento, anio_vencimiento, num_seguridad) 
	values (1, '3530292642827378', 'jcb', '03', '17', '185');
insert into tarjeta_credito (forma_pago_id, num_tarjeta, tipo_tarjeta, mes_vencimiento, anio_vencimiento, num_seguridad) 
	values (3, '3574587749228801', 'jcb', '11', '15', '103');
insert into tarjeta_credito (forma_pago_id, num_tarjeta, tipo_tarjeta, mes_vencimiento, anio_vencimiento, num_seguridad) 
	values (5, '3531561865438033', 'jcb', '05', '18', '719');
insert into tarjeta_credito (forma_pago_id, num_tarjeta, tipo_tarjeta, mes_vencimiento, anio_vencimiento, num_seguridad) 
	values (7, '372301023995980', 'americanexpress', '03', '19', '626');
insert into tarjeta_credito (forma_pago_id, num_tarjeta, tipo_tarjeta, mes_vencimiento, anio_vencimiento, num_seguridad) 
	values (9, '67591788670048838', 'maestro', '08', '18', '489');
--TRANSFERENCIA
insert into transferencia (forma_pago_id, CLABE) 
	values (2, '21695-310');
insert into transferencia (forma_pago_id, CLABE) 
	values (4, '24509-0058');
insert into transferencia (forma_pago_id, CLABE) 
	values (6, '61957-1069');
insert into transferencia (forma_pago_id, CLABE) 
	values (8, '51346-023');
insert into transferencia (forma_pago_id, CLABE) 
	values (10, '44183-400');
--CLIENTE
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, telefono, rfc, username, password, forma_pago_id) 
	values (cliente_seq.nextval, 'Giustina', 'Heffy', 'Davisson', 4731825087, 'GEHD123', 'gdavisson0', 'RqJyljb8fN', 1);
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, telefono, rfc, username, password, forma_pago_id) 
	values (cliente_seq.nextval, 'Truman', 'Pallent', 'Gleed', 2741956255, 'TRPG123', 'tgleed1', 'GJDbEgILSr', 2);
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, telefono, rfc, username, password, forma_pago_id) 
	values (cliente_seq.nextval, 'De witt', 'Engeham', 'Escot', 4866414998, 'DEEE123', 'descot2', '0yTxckukG', 3);
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, telefono, rfc, username, password, forma_pago_id) 
	values (cliente_seq.nextval, 'Ronna', 'Gabler', 'Ferries', 3057059883, 'ROGF123', 'rferries3', '2eMkn23s9n', 4);
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, telefono, rfc, username, password, forma_pago_id) 
	values (cliente_seq.nextval, 'Cornela', 'Stibbs', 'Keming', 3747655295, 'COSK123', 'ckeming4', '5BMDG4', 5);
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, telefono, rfc, username, password, forma_pago_id) 
	values (cliente_seq.nextval, 'Yancy', 'McGinney', 'MacSween', 7381666393, 'YAMM123', 'ymacsween5', 'WvM2HQ', 6);
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, telefono, rfc, username, password, forma_pago_id) 
	values (cliente_seq.nextval, 'Cort', 'Harness', 'Wilkisson', 3835691088, 'COHW123', 'cwilkisson6', 'ILE8HD0', 7);
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, telefono, rfc, username, password, forma_pago_id) 
	values (cliente_seq.nextval, 'Waldemar', 'Zahor', 'Featonby', 9807238607, 'WAZF123', 'wfeatonby7', 'dyBRta6D2r', 8);
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, telefono, rfc, username, password, forma_pago_id) 
	values (cliente_seq.nextval, 'Francesca', 'Halso', 'Grahamslaw', 4148467010, 'FRHG123', 'fgrahamslaw8', 'JHTImHHq9', 9);
insert into cliente (cliente_id, nombre, ap_paterno, ap_materno, telefono, rfc, username, password, forma_pago_id) 
	values (cliente_seq.nextval, 'Mayor', 'Blaydon', 'Heynen', 8104996168, 'MABH123', 'mheynen9', 'jvs9qk', 10);	
--TIPO_DIRECCION
insert into tipo_direccion (tipo_direccion_id, clave, descripcion) 
	values (1, 'E', 'Dirección de entrega');
insert into tipo_direccion (tipo_direccion_id, clave, descripcion) 
	values (2, 'F', 'Dirección de facturación');
--DIRECCION
insert into direccion (direccion_id, calle, num_ext, num_int, colonia, codigo_postal, municipio, entidad_fed, tipo_direccion_id, cliente_id) 
	values (direccion_seq.nextval, 'Miller', '409', '7238', 'Pass', '9510', 'Indonesia', 'Cyprus', 1, 1);
insert into direccion (direccion_id, calle, num_ext, num_int, colonia, codigo_postal, municipio, entidad_fed, tipo_direccion_id, cliente_id) 
	values (direccion_seq.nextval, 'Sauthoff', '4', '056', 'Junction', '87521', 'Finland', 'China', 2, 2);
insert into direccion (direccion_id, calle, num_ext, num_int, colonia, codigo_postal, municipio, entidad_fed, tipo_direccion_id, cliente_id) 
	values (direccion_seq.nextval, 'Marcy', '97957', '12085', 'Lane', '143', 'Philippines', 'Vietnam', 1, 3);
insert into direccion (direccion_id, calle, num_ext, num_int, colonia, codigo_postal, municipio, entidad_fed, tipo_direccion_id, cliente_id) 
	values (direccion_seq.nextval, 'Elgar', '88457', '8969', 'Plaza', '29', 'France', 'Canada', 2, 4);
insert into direccion (direccion_id, calle, num_ext, num_int, colonia, codigo_postal, municipio, entidad_fed, tipo_direccion_id, cliente_id) 
	values (direccion_seq.nextval, 'Mayer', '09228', '67836', 'Place', '85', 'Indonesia', 'Sweden', 1, 5);
insert into direccion (direccion_id, calle, num_ext, num_int, colonia, codigo_postal, municipio, entidad_fed, tipo_direccion_id, cliente_id) 
	values (direccion_seq.nextval, 'Longview', '4', '54221', 'Drive', '4129', 'Malta', 'Sweden', 2, 6);
insert into direccion (direccion_id, calle, num_ext, num_int, colonia, codigo_postal, municipio, entidad_fed, tipo_direccion_id, cliente_id) 
	values (direccion_seq.nextval, 'American', '3531', '95510', 'Street', '6', 'Mexico', 'Philippines', 1, 7);
insert into direccion (direccion_id, calle, num_ext, num_int, colonia, codigo_postal, municipio, entidad_fed, tipo_direccion_id, cliente_id) 
	values (direccion_seq.nextval, 'Memorial', '23925', '5706', 'Park', '0678', 'Poland', 'China', 2, 8);
insert into direccion (direccion_id, calle, num_ext, num_int, colonia, codigo_postal, municipio, entidad_fed, tipo_direccion_id, cliente_id) 
	values (direccion_seq.nextval, 'Forest Run', '43977', '9951', 'Center', '6905', 'Ukraine', 'Lithuania', 1, 9);
insert into direccion (direccion_id, calle, num_ext, num_int, colonia, codigo_postal, municipio, entidad_fed, tipo_direccion_id, cliente_id) 
	values (direccion_seq.nextval, 'Northport', '800', '6522', 'Center', '65271', 'China', 'China', 2, 10);
--PRODUCTO
insert into producto (producto_id, nombre, fecha_precio_inicio, precio_actual, copias_vendidas, copias_en_existencia, url_setreaming, num_visualizaciones, folio, tipo_producto) 
	values (1, 'Videojuego', to_date('14/11/2017','dd/mm/yyyy'), 171.66, 35, 94, 'https://stanford.edu', 20, '0409-0807', 'V');
insert into producto (producto_id, nombre, fecha_precio_inicio, precio_actual, copias_vendidas, copias_en_existencia, url_setreaming, num_visualizaciones, folio, tipo_producto) 
	values (2, 'Album Musical', to_date('08/06/2017','dd/mm/yyyy'), 329.21, 50, 95, 'http://yelp.com', 44, '62721-0118', 'A');
insert into producto (producto_id, nombre, fecha_precio_inicio, precio_actual, copias_vendidas, copias_en_existencia, url_setreaming, num_visualizaciones, folio, tipo_producto) 
	values (3, 'Pelicula', to_date('08/10/2017','dd/mm/yyyy'), 369.98, 57, 64, 'https://discovery.com', 93, '52686-227', 'P');
insert into producto (producto_id, nombre, fecha_precio_inicio, precio_actual, copias_vendidas, copias_en_existencia, url_setreaming, num_visualizaciones, folio, tipo_producto) 
	values (4, 'Videojuego', to_date('11/10/2017','dd/mm/yyyy'), 255.28, 8, 67, 'http://kickstarter.com', 63, '16729-117', 'V');
insert into producto (producto_id, nombre, fecha_precio_inicio, precio_actual, copias_vendidas, copias_en_existencia, url_setreaming, num_visualizaciones, folio, tipo_producto) 
	values (5, 'Album Musical', to_date('17/11/2017','dd/mm/yyyy'), 462.6, 97, 80, 'http://ibm.com', 58, '46122-030', 'A');
insert into producto (producto_id, nombre, fecha_precio_inicio, precio_actual, copias_vendidas, copias_en_existencia, url_setreaming, num_visualizaciones, folio, tipo_producto) 
	values (6, 'Pelicula', to_date('13/01/2017','dd/mm/yyyy'), 195.52, 41, 9, 'https://ucsd.edu', 69, '52125-074', 'P');
insert into producto (producto_id, nombre, fecha_precio_inicio, precio_actual, copias_vendidas, copias_en_existencia, url_setreaming, num_visualizaciones, folio, tipo_producto) 
	values (7, 'Videojuego', to_date('31/03/2017','dd/mm/yyyy'), 256.05, 21, 93, 'https://mapquest.com', 93, '58177-311', 'V');
insert into producto (producto_id, nombre, fecha_precio_inicio, precio_actual, copias_vendidas, copias_en_existencia, url_setreaming, num_visualizaciones, folio, tipo_producto) 
	values (8, 'Album Musical', to_date('01/07/2017','dd/mm/yyyy'), 111.75, 75, 43, 'https://topsy.com', 30, '37000-246', 'A');
insert into producto (producto_id, nombre, fecha_precio_inicio, precio_actual, copias_vendidas, copias_en_existencia, url_setreaming, num_visualizaciones, folio, tipo_producto) 
	values (9, 'Pelicula', to_date('27/02/2017','dd/mm/yyyy'), 288.62, 3, 24, 'https://digg.com', 8, '62654-143', 'P');
insert into producto (producto_id, nombre, fecha_precio_inicio, precio_actual, copias_vendidas, copias_en_existencia, url_setreaming, num_visualizaciones, folio, tipo_producto) 
	values (10, 'Videojuego', to_date('25/11/2017','dd/mm/yyyy'), 265.92, 34, 54, 'http://lulu.com', 1, '57237-051', 'V');
insert into producto (producto_id, nombre, fecha_precio_inicio, precio_actual, copias_vendidas, copias_en_existencia, url_setreaming, num_visualizaciones, folio, tipo_producto) 
	values (11, 'Album Musical', to_date('29/07/2017','dd/mm/yyyy'), 228.71, 98, 82, 'http://samsung.com', 69, '63629-5256', 'A');
insert into producto (producto_id, nombre, fecha_precio_inicio, precio_actual, copias_vendidas, copias_en_existencia, url_setreaming, num_visualizaciones, folio, tipo_producto) 
	values (12, 'Pelicula', to_date('03/06/2017','dd/mm/yyyy'), 230.53, 62, 16, 'http://networksolutions.com', 45, '0363-0438', 'P');
--VIDEOJUEGO
insert into videojuego (producto_id, nombre, descripcion, tipo_consola) 
	values (1, 'Speedrunners', 'Arcade', 'Xbox One');
insert into videojuego (producto_id, nombre, descripcion, tipo_consola) 
	values (4, 'RocketLeague', 'Futbol con vehiculos', 'Play Station 4');
insert into videojuego (producto_id, nombre, descripcion, tipo_consola) 
	values (7, 'GTA V', 'Accion-aventura', 'Play Station 4');
insert into videojuego (producto_id, nombre, descripcion, tipo_consola) 
	values (10, 'Fortnite', 'Battle Royal', 'Xbox One');
--ALBUM_MUSICAL
insert into album_musical (producto_id, nombre_artista, nombre_album, disquera, anio_creacion) 
	values (2, 'Kendrick Lamar', 'GKMC', 'TDE', '2012');
insert into album_musical (producto_id, nombre_artista, nombre_album, disquera, anio_creacion) 
	values (5, 'Pimp Flaco', '23', 'Dora Black', '2007');
insert into album_musical (producto_id, nombre_artista, nombre_album, disquera, anio_creacion) 
	values (8, 'Jay-Z', '4:44', 'Roc Nation', '2017');
insert into album_musical (producto_id, nombre_artista, nombre_album, disquera, anio_creacion) 
	values (11, 'Bad Bunny', 'Soy Peor', 'Hear this Music', '2017');
--PELICULA
insert into pelicula (producto_id, nombre, genero, duracion, clasificacion, formato) 
	values (1, 'Pulse', 'Action|Drama', 145, 'G', 'DVD');
insert into pelicula (producto_id, nombre, genero, duracion, clasificacion, formato) 
	values (2, 'R100', 'Comedy|Drama', 144, '18A', 'Blue-Ray');
insert into pelicula (producto_id, nombre, genero, duracion, clasificacion, formato) 
	values (3, 'To the Devil a Daughter', 'Horror|Mystery', 111, 'R', 'DVD|Blue-Ray');
insert into pelicula (producto_id, nombre, genero, duracion, clasificacion, formato) 
	values (4, 'I Love You Too', 'Comedy', 114, 'C', 'VHS');
--PRECIO_PRODUCTO*s
insert into precio_producto (precio_producto_id, precio, fecha_inicio, fecha_fin, producto_id) 
	values (precio_producto_seq.nextval, 260.16, to_date('09/03/2017','dd/mm/yyyy'), to_date('12/05/2017','dd/mm/yyyy'), 1);
insert into precio_producto (precio_producto_id, precio, fecha_inicio, fecha_fin, producto_id) 
	values (precio_producto_seq.nextval, 231.74, to_date('27/03/2017','dd/mm/yyyy'), to_date('06/07/2017','dd/mm/yyyy'), 2);
insert into precio_producto (precio_producto_id, precio, fecha_inicio, fecha_fin, producto_id) 
	values (precio_producto_seq.nextval, 184.43, to_date('13/10/2017','dd/mm/yyyy'), to_date('23/02/2017','dd/mm/yyyy'), 3);
insert into precio_producto (precio_producto_id, precio, fecha_inicio, fecha_fin, producto_id) 
	values (precio_producto_seq.nextval, 121.02, to_date('17/02/2016','dd/mm/yyyy'), to_date('30/08/2016','dd/mm/yyyy'), 4);
insert into precio_producto (precio_producto_id, precio, fecha_inicio, fecha_fin, producto_id) 
	values (precio_producto_seq.nextval, 218.39, to_date('28/09/2016','dd/mm/yyyy'), to_date('21/05/2017','dd/mm/yyyy'), 5);
insert into precio_producto (precio_producto_id, precio, fecha_inicio, fecha_fin, producto_id) 
	values (precio_producto_seq.nextval, 145.58, to_date('26/07/2016','dd/mm/yyyy'), to_date('25/06/2017','dd/mm/yyyy'), 6);
insert into precio_producto (precio_producto_id, precio, fecha_inicio, fecha_fin, producto_id) 
	values (precio_producto_seq.nextval, 195.32, to_date('29/10/2016','dd/mm/yyyy'), to_date('10/07/2016','dd/mm/yyyy'), 7);
insert into precio_producto (precio_producto_id, precio, fecha_inicio, fecha_fin, producto_id) 
	values (precio_producto_seq.nextval, 188.51, to_date('10/02/2017','dd/mm/yyyy'), to_date('06/03/2017','dd/mm/yyyy'), 8);
insert into precio_producto (precio_producto_id, precio, fecha_inicio, fecha_fin, producto_id) 
	values (precio_producto_seq.nextval, 163.36, to_date('11/10/2017','dd/mm/yyyy'), to_date('09/06/2016','dd/mm/yyyy'), 9);
insert into precio_producto (precio_producto_id, precio, fecha_inicio, fecha_fin, producto_id) 
	values (precio_producto_seq.nextval, 115.18, to_date('13/11/2017','dd/mm/yyyy'), to_date('09/12/2017','dd/mm/yyyy'), 10);
insert into precio_producto (precio_producto_id, precio, fecha_inicio, fecha_fin, producto_id) 
	values (precio_producto_seq.nextval, 231.39, to_date('30/11/2017','dd/mm/yyyy'), to_date('18/07/2017','dd/mm/yyyy'), 11);
insert into precio_producto (precio_producto_id, precio, fecha_inicio, fecha_fin, producto_id) 
	values (precio_producto_seq.nextval, 189.21, to_date('22/06/2017','dd/mm/yyyy'), to_date('14/04/2017','dd/mm/yyyy'), 12);
--STATUS_ORDEN*s
insert into status_orden (status_orden_id, clave, descripcion) 
	values (status_orden_seq.nextval, 'R', 'REGISTRADA');
insert into status_orden (status_orden_id, clave, descripcion) 
	values (status_orden_seq.nextval, 'R', 'REGISTRADA');
insert into status_orden (status_orden_id, clave, descripcion) 
	values (status_orden_seq.nextval, 'R', 'REGISTRADA');
insert into status_orden (status_orden_id, clave, descripcion) 
	values (status_orden_seq.nextval, 'R', 'REGISTRADA');
insert into status_orden (status_orden_id, clave, descripcion) 
	values (status_orden_seq.nextval, 'R', 'REGISTRADA');
insert into status_orden (status_orden_id, clave, descripcion) 
	values (status_orden_seq.nextval, 'R', 'REGISTRADA');
insert into status_orden (status_orden_id, clave, descripcion) 
	values (status_orden_seq.nextval, 'R', 'REGISTRADA');
insert into status_orden (status_orden_id, clave, descripcion) 
	values (status_orden_seq.nextval, 'R', 'REGISTRADA');
insert into status_orden (status_orden_id, clave, descripcion) 
	values (status_orden_seq.nextval, 'R', 'REGISTRADA');
insert into status_orden (status_orden_id, clave, descripcion) 
	values (status_orden_seq.nextval, 'R', 'REGISTRADA');
--ORDEN_COMPRA*s
insert into orden_compra (orden_compra_id, folio, fecha_status, con_envio, con_streaming, cliente_id, status_orden_id) 
	values (4, '49371-021', to_date('13/12/2017','dd/mm/yyyy'), 1, 0, 1, 1);
insert into orden_compra (orden_compra_id, folio, fecha_status, con_envio, con_streaming, cliente_id, status_orden_id) 
	values (2, '62584-974', to_date('21/06/2016','dd/mm/yyyy'), 0, 1, 2, 2);
insert into orden_compra (orden_compra_id, folio, fecha_status, con_envio, con_streaming, cliente_id, status_orden_id) 
	values (3, '51531-5749', to_date('10/03/2016','dd/mm/yyyy'), 1, 0, 3, 3);
insert into orden_compra (orden_compra_id, folio, fecha_status, con_envio, con_streaming, cliente_id, status_orden_id) 
	values (5, '63824-414', to_date('24/12/2017','dd/mm/yyyy'), 0, 1, 4, 4);
insert into orden_compra (orden_compra_id, folio, fecha_status, con_envio, con_streaming, cliente_id, status_orden_id) 
	values (6, '10348-008', to_date('01/07/2016','dd/mm/yyyy'), 1, 1, 5, 5);
insert into orden_compra (orden_compra_id, folio, fecha_status, con_envio, con_streaming, cliente_id, status_orden_id) 
	values (7, '68788-9744', to_date('26/02/2017','dd/mm/yyyy'), 0, 1, 6, 6);
insert into orden_compra (orden_compra_id, folio, fecha_status, con_envio, con_streaming, cliente_id, status_orden_id) 
	values (8, '0093-7270', to_date('26/10/2017','dd/mm/yyyy'), 1, 0, 7, 7);
insert into orden_compra (orden_compra_id, folio, fecha_status, con_envio, con_streaming, cliente_id, status_orden_id) 
	values (9, '58232-0722', to_date('05/02/2016','dd/mm/yyyy'), 0, 1, 8, 8);
insert into orden_compra (orden_compra_id, folio, fecha_status, con_envio, con_streaming, cliente_id, status_orden_id) 
	values (10, '0904-5154', to_date('13/03/2017','dd/mm/yyyy'), 1, 1, 9, 9);
insert into orden_compra (orden_compra_id, folio, fecha_status, con_envio, con_streaming, cliente_id, status_orden_id) 
	values (11, '36987-3429', to_date('30/11/2016','dd/mm/yyyy'), 0, 1, 10, 10);
--ORDEN_COMPRA_PRODUCTO
insert into orden_compra_producto (producto_id, orden_compra_id, cantidad, precio_unitario) 
	values (1, 10, 66, 165.52);
insert into orden_compra_producto (producto_id, orden_compra_id, cantidad, precio_unitario) 
	values (2, 9, 35, 111.82);
insert into orden_compra_producto (producto_id, orden_compra_id, cantidad, precio_unitario) 
	values (3, 8, 31, 297.83);
insert into orden_compra_producto (producto_id, orden_compra_id, cantidad, precio_unitario) 
	values (4, 7, 49, 150.54);
insert into orden_compra_producto (producto_id, orden_compra_id, cantidad, precio_unitario) 
	values (5, 6, 64, 266.09);
insert into orden_compra_producto (producto_id, orden_compra_id, cantidad, precio_unitario) 
	values (6, 5, 81, 208.18);
insert into orden_compra_producto (producto_id, orden_compra_id, cantidad, precio_unitario) 
	values (7, 4, 54, 203.56);
insert into orden_compra_producto (producto_id, orden_compra_id, cantidad, precio_unitario) 
	values (8, 3, 2, 120.1);
insert into orden_compra_producto (producto_id, orden_compra_id, cantidad, precio_unitario) 
	values (9, 2, 6, 215.08);
insert into orden_compra_producto (producto_id, orden_compra_id, cantidad, precio_unitario) 
	values (10, 1, 39, 110.71);
--status_orden_historico*s
insert into status_orden_historico (status_orden_historico_id, fecha_status, status_orden_id, orden_compra_id) 
	values (status_orden_historico_seq.nextval, to_date('12/11/2017','dd/mm/yyyy'), 1, 1);
insert into status_orden_historico (status_orden_historico_id, fecha_status, status_orden_id, orden_compra_id) 
	values (status_orden_historico_seq.nextval, to_date('31/08/2016','dd/mm/yyyy'), 2, 2);
insert into status_orden_historico (status_orden_historico_id, fecha_status, status_orden_id, orden_compra_id) 
	values (status_orden_historico_seq.nextval, to_date('29/11/2017','dd/mm/yyyy'), 3, 3);
insert into status_orden_historico (status_orden_historico_id, fecha_status, status_orden_id, orden_compra_id) 
	values (status_orden_historico_seq.nextval, to_date('07/12/2017','dd/mm/yyyy'), 4, 4);
insert into status_orden_historico (status_orden_historico_id, fecha_status, status_orden_id, orden_compra_id) 
	values (status_orden_historico_seq.nextval, to_date('01/04/2016','dd/mm/yyyy'), 5, 5);
insert into status_orden_historico (status_orden_historico_id, fecha_status, status_orden_id, orden_compra_id) 
	values (status_orden_historico_seq.nextval, to_date('17/07/2016','dd/mm/yyyy'), 6, 6);
insert into status_orden_historico (status_orden_historico_id, fecha_status, status_orden_id, orden_compra_id) 
	values (status_orden_historico_seq.nextval, to_date('22/08/2017','dd/mm/yyyy'), 7, 7);
insert into status_orden_historico (status_orden_historico_id, fecha_status, status_orden_id, orden_compra_id) 
	values (status_orden_historico_seq.nextval, to_date('12/07/2016','dd/mm/yyyy'), 8, 8);
insert into status_orden_historico (status_orden_historico_id, fecha_status, status_orden_id, orden_compra_id) 
	values (status_orden_historico_seq.nextval, to_date('14/10/2016','dd/mm/yyyy'), 9, 9);
insert into status_orden_historico (status_orden_historico_id, fecha_status, status_orden_id, orden_compra_id) 
	values (status_orden_historico_seq.nextval, to_date('14/04/2017','dd/mm/yyyy'), 10, 10);
--Factura
insert into factura (factura_id, folio_factura, monto_total, forma_pago_id, orden_compra_id) 
	values (1, 11110, 612.66, 1, 1);
insert into factura (factura_id, folio_factura, monto_total, forma_pago_id, orden_compra_id) 
	values (2, 18723, 837.21, 2, 2);
insert into factura (factura_id, folio_factura, monto_total, forma_pago_id, orden_compra_id) 
	values (3, 10492, 834.25, 3, 3);
insert into factura (factura_id, folio_factura, monto_total, forma_pago_id, orden_compra_id) 
	values (4, 41005, 851.51, 4, 4);
insert into factura (factura_id, folio_factura, monto_total, forma_pago_id, orden_compra_id) 
	values (5, 43656, 841.2, 5, 5);
insert into factura (factura_id, folio_factura, monto_total, forma_pago_id, orden_compra_id) 
	values (6, 14706, 807.17, 6, 6);
insert into factura (factura_id, folio_factura, monto_total, forma_pago_id, orden_compra_id) 
	values (7, 49339, 769.89, 7, 7);
insert into factura (factura_id, folio_factura, monto_total, forma_pago_id, orden_compra_id) 
	values (8, 46473, 772.5, 8, 8);
insert into factura (factura_id, folio_factura, monto_total, forma_pago_id, orden_compra_id) 
	values (9, 37364, 575.4, 9, 9);
insert into factura (factura_id, folio_factura, monto_total, forma_pago_id, orden_compra_id) 
	values (10, 41267, 677.41, 10, 10);
--TABLA PAQUETE
insert into paquete (paquete_id, num_seguimiento, fecha_envio, factura_id, empresa_paquetera_id) 
	values (1, '857416413-5',to_date('05/03/2016','dd/mm/yyyy'), 1, 1);
insert into paquete (paquete_id, num_seguimiento, fecha_envio, factura_id, empresa_paquetera_id) 
	values (2, '751204282-5',to_date('06/01/2017','dd/mm/yyyy'), 2, 2);
insert into paquete (paquete_id, num_seguimiento, fecha_envio, factura_id, empresa_paquetera_id) 
	values (3, '789947302-0',to_date('10/03/2017','dd/mm/yyyy'), 3, 3);
insert into paquete (paquete_id, num_seguimiento, fecha_envio, factura_id, empresa_paquetera_id) 
	values (4, '371151977-6',to_date('01/03/2017','dd/mm/yyyy'), 4, 4);
insert into paquete (paquete_id, num_seguimiento, fecha_envio, factura_id, empresa_paquetera_id) 
	values (5, '114817118-5',to_date('06/01/2017','dd/mm/yyyy'), 5, 5);
insert into paquete (paquete_id, num_seguimiento, fecha_envio, factura_id, empresa_paquetera_id) 
	values (6, '493789491-9',to_date('04/03/2017','dd/mm/yyyy'), 6, 6);
insert into paquete (paquete_id, num_seguimiento, fecha_envio, factura_id, empresa_paquetera_id) 
	values (7, '274335180-2',to_date('05/12/2017','dd/mm/yyyy'), 7, 7);
insert into paquete (paquete_id, num_seguimiento, fecha_envio, factura_id, empresa_paquetera_id) 
	values (8, '001900765-5',to_date('11/07/2016','dd/mm/yyyy'), 8, 8);
insert into paquete (paquete_id, num_seguimiento, fecha_envio, factura_id, empresa_paquetera_id) 
	values (9, '073364145-8',to_date('03/03/2017','dd/mm/yyyy'), 9, 9);
insert into paquete (paquete_id, num_seguimiento, fecha_envio, factura_id, empresa_paquetera_id) 
	values (10, '285307026-3',to_date('01/11/2016','dd/mm/yyyy'), 10, 10);
--SEGUIMIENTO_PAQUETE
insert into seguimiento_paquete (seguimiento_paquete_id, paquete_id, num_escala, fecha_arrivo, lugar) 
	values (1, 1, 1, to_date('09/03/2016','dd/mm/yyyy'), 'Portugal');
insert into seguimiento_paquete (seguimiento_paquete_id, paquete_id, num_escala, fecha_arrivo, lugar) 
	values (2, 2, 2, to_date('04/11/2017','dd/mm/yyyy'), 'Nigeria');
insert into seguimiento_paquete (seguimiento_paquete_id, paquete_id, num_escala, fecha_arrivo, lugar) 
	values (3, 3, 3, to_date('05/12/2017','dd/mm/yyyy'), 'Morocco');
insert into seguimiento_paquete (seguimiento_paquete_id, paquete_id, num_escala, fecha_arrivo, lugar) 
	values (4, 4, 4, to_date('09/01/2016','dd/mm/yyyy'), 'Russia');
insert into seguimiento_paquete (seguimiento_paquete_id, paquete_id, num_escala, fecha_arrivo, lugar) 
	values (5, 5, 5, to_date('07/11/2017','dd/mm/yyyy'), 'China');
insert into seguimiento_paquete (seguimiento_paquete_id, paquete_id, num_escala, fecha_arrivo, lugar) 
	values (6, 6, 6, to_date('03/02/2017','dd/mm/yyyy'), 'Mexico');
insert into seguimiento_paquete (seguimiento_paquete_id, paquete_id, num_escala, fecha_arrivo, lugar) 
	values (7, 7, 7, to_date('08/12/2017','dd/mm/yyyy'), 'Poland');
insert into seguimiento_paquete (seguimiento_paquete_id, paquete_id, num_escala, fecha_arrivo, lugar) 
	values (8, 8, 8, to_date('04/07/2017','dd/mm/yyyy'), 'China');
insert into seguimiento_paquete (seguimiento_paquete_id, paquete_id, num_escala, fecha_arrivo, lugar) 
	values (9, 9, 9, to_date('07/08/2016','dd/mm/yyyy'), 'Thailand');
insert into seguimiento_paquete (seguimiento_paquete_id, paquete_id, num_escala, fecha_arrivo, lugar) 
	values (10, 10, 10, to_date('10/09/2016','dd/mm/yyyy'), 'Brazil');