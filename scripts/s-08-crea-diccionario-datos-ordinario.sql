--Autor Giselle Espinosa
--Fecha de creacion 04/junio/2024
--Descripcion Creacion del diccionario de datos

Prompt Iniciando sesión como SYS
connect sys/system3 as sysdba

@?/rdbms/admin/catalog.sql
@?/rdbms/admin/catproc.sql
@?/rdbms/admin/utlrp.sql

Prompt Iniciando sesión como system
connect system/system3 
@?/sqlplus/admin/pupbld.sql

Prompt El script se ha ejecutado por completo