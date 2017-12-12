--@Autor(es): Sanchez Max Armando, Rodriguez Mendoza Angel Rafael
--@Fecha creación: 11/12/2017
--@Descripción: Creacion de tablas externas

CREATE OR REPLACE DIRECTORY ext_tab_data AS '/home/oracle';

create table posters_ext(
	producto_id numeric(10,0),
	nombre varchar2(40),
	artista varchar2(40),
	descripcion varchar2(50)
)
ORGANIZATION EXTERNAL (
	TYPE ORACLE_LOADER
	DEFAULT DIRECTORY ext_tab_data
	ACCESS PARAMETERS (
	    RECORDS DELIMITED BY NEWLINE
	    FIELDS TERMINATED BY ','
	    MISSING FIELD VALUES ARE NULL
	    (
	    	producto_id char(10),
			nombre char(40),
			artista char(40),
			descripcion char(50)
		)
	)
	LOCATION ('Posters.txt')
);