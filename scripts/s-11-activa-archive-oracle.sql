--Autor: Giselle Espinosa
--Fecha de creacion: 04/junio/2024
--Descripcion: Activación de Modo archive

connect sys/system3 as sysdba

shutdown immediate 

pause Esperarando a que la base se desmonte, [enter] para continuar

startup mount 

pause  Esperar a que termine de habilitarse el modo mount, [enter] para continuar

alter database archivelog;

alter database open;

archive log list