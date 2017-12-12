--@Autor(es): Sanchez Max Armando, Rodriguez Mendoza Angel Rafael
--@Fecha creación: 11/12/2017
--@Descripción: Crea los usuarios del proyecto y roles del proyecto, asigna los permisos a los roles y asigna los roles a los usuarios

CREATE USER SR_proy_admin IDENTIFIED BY password;
GRANT UNLIMITED TABLESPACE TO SR_proy_admin;

CREATE USER SR_proy_invitado IDENTIFIED BY password;

CREATE ROLE rol_admin;
GRANT CREATE SESSION TO rol_admin;
GRANT CREATE ANY INDEX TO rol_admin;
GRANT CREATE ANY PROCEDURE TO rol_admin;
GRANT CREATE ANY SEQUENCE TO rol_admin;
GRANT CREATE ANY VIEW TO rol_admin;
GRANT CREATE ANY TABLE TO rol_admin;
GRANT CREATE PUBLIC SYNONYM TO rol_admin;
GRANT CREATE SYNONYM TO rol_admin;
GRANT CREATE ANY DIRECTORY TO rol_admin;
GRANT CREATE TRIGGER TO rol_admin;

GRANT rol_admin TO SR_proy_admin;

CREATE ROLE rol_invitado;
GRANT CREATE SESSION to rol_invitado;
GRANT CREATE SYNONYM to rol_invitado;

GRANT rol_invitado TO SR_proy_invitado;