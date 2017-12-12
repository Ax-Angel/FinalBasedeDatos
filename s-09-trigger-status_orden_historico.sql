--@Autor(es): Sanchez Max Armando, Rodriguez Mendoza Angel Rafael
--@Fecha creación: 11/12/2017
--@Descripción: Trigger para actualizar el status en el historico

create or replace trigger status_orden_historico_trigger
after insert or update of status_orden_id on orden_compra
for each row
DECLARE
v_status_orden_historico_id number(10,0);
BEGIN
select status_orden_historico_seq.nextval into v_status_orden_historico_id from dual;
insert into status_orden_historico(status_orden_historico_id,fecha_status,status_orden_id,orden_compra_id)
	values (v_status_orden_historico_id,:NEW.fecha_status,:NEW.status_orden_id,:NEW.orden_compra_id);
end;
/