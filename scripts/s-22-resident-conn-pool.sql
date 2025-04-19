--Autor: Giselle Espinosa
--Fecha de Creación: 07/junio/2024
--Descripción: Configurar e iniciar un Database resident connection pool

whenever sqlerror exit rollback;

 prompt Conectando con SYS
 connect sys as sysdba


exec dbms_connection_pool.start_pool();

exec dbms_connection_pool.alter_param('','MAXSIZE','50');
exec dbms_connection_pool.alter_param('','MINSIZE','40');

exec dbms_connection_pool.alter_param ('','INACTIVITY_TIMEOUT','1800');

exec dbms_connection_pool.alter_param ('','MAX_THINK_TIME','1800');