--@Autor(es): Sanchez Max Armando, Rodriguez Mendoza Angel Rafael
--@Fecha creación: 11/12/2017
--@Descripción: Trigger para actualizar los puntos de un cliente

create or replace trigger cliente_puntos_trigger
	after insert on orden_compra
	for each row
DECLARE
v_puntos numeric(2,0);
v_monto_total numeric(6,2);
BEGIN
select puntos 
into v_puntos
from cliente 
where cliente_id = :NEW.cliente_id;

select monto_total
into v_monto_total
from factura
where orden_compra_id = :NEW.orden_compra_id;

if v_puntos >= 10 then
	update factura
	set monto_total = (v_monto_total * 0.90)
	where orden_compra_id = :NEW.orden_compra_id;

	update cliente
	set puntos = 0
	where cliente_id = :NEW.cliente_id;

else
	update cliente
	set puntos = (v_puntos + 1)
	where cliente_id = :NEW.cliente_id;
end if;
end;
/