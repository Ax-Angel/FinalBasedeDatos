--@Autor(es): Sanchez Max Armando, Rodriguez Mendoza Angel Rafael
--@Fecha creación: 11/12/2017
--@Descripción: Creacion de sinonimos

CREATE PUBLIC SYNONYM producto_sinonimo
FOR producto;

CREATE PUBLIC SYNONYM cliente_sinonimo
FOR cliente;

CREATE PUBLIC SYNONYM factura_sinonimo
FOR factura;

GRANT SELECT ON forma_pago TO sr_proy_invitado;
GRANT SELECT ON orden_compra TO sr_proy_invitado;
GRANT SELECT ON paquete TO sr_proy_invitado;

connect sr_proy_invitado / password

CREATE SYNONYM sr_proy_admin.forma_pago_sinonimo
FOR forma_pago;

CREATE SYNONYM sr_proy_admin.orden_compra_sinonimo
FOR orden_compra;

CREATE SYNONYM sr_proy_admin.paquete_sinonimo
FOR paquete;