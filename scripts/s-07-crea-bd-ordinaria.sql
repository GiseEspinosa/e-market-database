--Autor: Giselle Espinosa
--Fecha de Creacion: 04/junio/2024
--Descripcion: Crear la base de datos.

prompt Conectando como sys
connect sys/hola1234* as sysdba

prompt iniciando una instancia en modo nomount
startup nomount
pause  Esperar a que termine de habilitarse el modo nomount, [enter] para continuar

prompt Ejecutando create database
whenever sqlerror exit rollback

create database escoproy
  user sys identified by system3
  user system identified by system3
  logfile group 1 size 50m blocksize 512,
  group 2 size 50m blocksize 512,
  group 3 size 50m blocksize 512
   maxloghistory 1
   maxlogfiles 16
   maxlogmembers 3
   maxdatafiles 1024 
   character set AL32UTF8
   national character set AL16UTF16
   extent management local
   datafile '/u01/app/oracle/oradata/ESCOPROY/disk04/system01.dbf'
     size 700m reuse autoextend on next 10240k maxsize unlimited
   sysaux datafile '/u01/app/oracle/oradata/ESCOPROY/disk05/sysaux01.dbf'
     size 550m reuse autoextend on next 10240k maxsize unlimited
   default tablespace users
      datafile '/u01/app/oracle/oradata/ESCOPROY/disk06/users01.dbf'
      size 500m reuse autoextend on maxsize unlimited
   default temporary tablespace tempts1
      tempfile '/u01/app/oracle/oradata/ESCOPROY/disk07/temp01.dbf'
      size 20m reuse autoextend on next 640k maxsize unlimited
   undo tablespace undotbs1
      datafile '/u01/app/oracle/oradata/ESCOPROY/disk08/undotbs01.dbf'
      size 512m reuse autoextend on next 5120k maxsize unlimited;

Prompt ¡La base de datos ha sido creada con EXITO! 

Prompt Actulizando passwords
alter user sys identified by system3;
alter user system identified by system3;