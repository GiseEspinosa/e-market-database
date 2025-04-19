--Autor: Giselle Espinosa
--Fecha de Creación: 06/junio/2024
--Descripción: Configuración del modo compartido

prompt conectando como sys
connect sys/system3 as sysdba

whenever sqlerror exit rollback

prompt Configurando la instancia para habilitar el modo compartido 
alter system set dispatchers='(dispatchers=30)(protocol=tcp)';
alter system set shared_servers=300;

Prompt mostrando parametros
show parameter dispatchers
show parameter shared_servers

prompt Actualizando listener 
alter system register;

!lsnrctl services

disconnect