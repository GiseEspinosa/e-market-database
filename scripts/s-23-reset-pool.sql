--@Autor: Giselle Espinosa
--@Fecha creación: 07/junio/2024
--@Descripción: Detener y regresar al pool de conexiones 
--a su configuración original 

prompt conectando como sys
connect sys@escoproy_shared/system3 as sysdba

whenever sqlerror exit rollback

set serveroutput on;
exec dbms_connection_pool.stop_pool();
exec dbms_connection_pool.restore_defaults();