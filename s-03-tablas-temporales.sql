--@Autor(es): Sanchez Max Armando, Rodriguez Mendoza Angel Rafael
--@Fecha creación: 11/12/2017
--@Descripción: Creacion de tablas temporales

CREATE GLOBAL TEMPORARY TABLE temp_table_pagos(
	forma_pago_id numeric(10,0) not null,
	titular varchar2(40) not null,
	banco varchar2(40) not null,
	tipo_forma_pago char(1) not null,
	num_tarjeta varchar2(20),
	tipo_tarjeta varchar2(15),
	mes_vencimiento varchar2(2),
	anio_vencimiento varchar2(2),
	num_seguridad varchar2(3),
	CLABE varchar2(20)
)
ON COMMIT PRESERVE ROWS;

insert into temp_table_pagos(forma_pago_id, titular, banco, tipo_forma_pago, num_tarjeta, tipo_tarjeta, mes_vencimiento, 
			anio_vencimiento, num_seguridad, CLABE)
select fp.forma_pago_id, fp.titular, fp.banco, fp.tipo_forma_pago, tc.num_tarjeta, tc.tipo_tarjeta, tc.mes_vencimiento,
		tc.anio_vencimiento, tc.num_seguridad, tr.CLABE
from forma_pago fp
left join tarjeta_credito tc
on fp.forma_pago_id = tc.forma_pago_id
left join transferencia tr
on fp.forma_pago_id = tr.forma_pago_id;	