--@Autor(es): Sanchez Max Armando, Rodriguez Mendoza Angel Rafael
--@Fecha creación: 11/12/2017
--@Descripción: Creacion de vistas


create or replace view v_orden_compra_factura(
	folio, fecha_status, con_envio, con_streaming, folio_factura, monto_total, iva
) as select oc.folio, oc.fecha_status, oc.con_envio, oc.con_streaming,
			f.folio_factura, f.monto_total, f.iva
from orden_compra oc, factura f
where oc.orden_compra_id = f.orden_compra_id;

create or replace view v_tarjeta_cliente(
	tipo_tarjeta, mes_vencimiento, anio_vencimiento, nombre, ap_paterno, ap_materno
) as select tc.tipo_tarjeta, tc.mes_vencimiento, tc.anio_vencimiento, c.nombre, c.ap_paterno, c.ap_materno
from tarjeta_credito tc, cliente c
where c.forma_pago_id = tc.forma_pago_id;

GRANT SELECT ON v_tarjeta_cliente TO sr_proy_invitado;	