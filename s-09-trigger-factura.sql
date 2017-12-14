	create or replace trigger factura_trigger
		after insert on factura
		for each row
	begin
		creaFactura(TO_CHAR(:NEW.folio_factura));
	end;