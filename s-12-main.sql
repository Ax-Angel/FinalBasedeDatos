@@s-01-usuarios.sql
connect sr_proy_admin / password
@@s-02-entidades.sql
@@s-04-tablas-externas.sql
@@s-05-secuencias.sql
@@s-06-indices.sql
@@s-08-vistas.sql

CREATE OR REPLACE DIRECTORY FACTURAS AS '/home/oracle/facturas';
/
GRANT READ ON DIRECTORY FACTURAS TO PUBLIC;
/
--@@s-09-trigger-factura.sql
@@s-09-trigger-status_orden_historico.sql
@@s-10-procedimiento-creaFactura.sql
@@s-11-carga-inicial.sql
@@s-03-tablas-temporales.sql