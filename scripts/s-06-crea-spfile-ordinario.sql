--Autor: Giselle Espinosa
--Fecha de Creacion: 04/junio/2024
--Descripcion: Creación de un SPFILE

--autenticando como sys empleando el archivo de passwords
connect sys/hola1234* as sysdba 
create spfile from pfile;

--comprobar la existencia del SPFILE
!ls ${ORACLE_HOME}/dbs/spfile${ORACLE_SID}.ora

Prompt Listo!