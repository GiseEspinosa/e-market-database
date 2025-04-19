--Autor Giselle Espinosa
--Fecha de creacion 04/junio/2024
--Descripcion Agregando los miembros faltantes a los grupos de redo

--Entrando como sys
connect sys as sysdba

--miembros para el grupo 1
promp "Creando miembros del grupo 1"
alter database 
add logfile member '/unam-bda/proyecto-final/d01/app/oracle/oradata/ESCOPROY/redo01b.log' to group 1;

alter database 
add logfile member '/unam-bda/proyecto-final/d02/app/oracle/oradata/ESCOPROY/redo01c.log' to group 1;

--miembros para el grupo 2
promp "Creando miembros del grupo 2"
alter database 
add logfile member '/unam-bda/proyecto-final/d01/app/oracle/oradata/ESCOPROY/redo02b.log' to group 2;

alter database 
add logfile member '/unam-bda/proyecto-final/d02/app/oracle/oradata/ESCOPROY/redo02c.log' to group 2;

--miembros para el grupo 3
promp "Creando miembros del grupo 3"
alter database 
add logfile member '/unam-bda/proyecto-final/d01/app/oracle/oradata/ESCOPROY/redo03b.log' to group 3;

alter database 
add logfile member '/unam-bda/proyecto-final/d02/app/oracle/oradata/ESCOPROY/redo03c.log' to group 3;