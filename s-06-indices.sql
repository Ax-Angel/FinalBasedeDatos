--@Autor(es): Sanchez Max Armando, Rodriguez Mendoza Angel Rafael
--@Fecha creación: 11/12/2017
--@Descripción: Creacion de indices

create index tarjeta_credito_num_tarjeta_ix on tarjeta_credito(num_tarjeta);
create unique index cliente_username_ix on cliente(username);
create unique index orden_compra_folio_ix on orden_compra(folio);
create unique index factura_folio_factura_ix on factura(folio_factura);
create unique index paquete_num_seguimiento_ix on paquete(num_seguimiento);