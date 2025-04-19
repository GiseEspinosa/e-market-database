--@Autor Giselle Espinosa
--@Fecha de creacion 04/junio/2024
--@Descripcion Agregando las ubicaciones de los datafiles al SPFILE.

Prompt Iniciando sesión como SYS
connect sys/system3 as sysdba

alter system set control_files='/unam-bda/proyecto-final/fast-reco-area/ESCOPROY/controlfile/o1_mf_m5zcrrz4_.ctl','/unam-bda/proyecto-final/d01/app/oracle/oradata/ESCOPROY/controlfile_01.ctl','/unam-bda/proyecto-final/d02/app/oracle/oradata/ESCOPROY/controlfile_02.ctl' scope=spfile;

