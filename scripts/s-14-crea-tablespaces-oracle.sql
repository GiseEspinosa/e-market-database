--Autor Giselle Espinosa
--Fecha de creacion 05/junio/2024
--Descripcion Creacion de los tablespaces

--Conectandonos como sys 
connect sys as sysdba

--COMUNES 
/*TABLESPACE ESCO_BINARIOS
  *se almacenan en /u01/app/oracle/oradata/ESCOPROY/disk09,
  *Administración de sus extensiones debe ser locally managed,
  *tamaño de las extensiones administrada automaticamente
  *El tamaño del tablespace debe ser 1G con posibilidad de autocrecimiento
  asignar un crecimiento de 100m hasta 1G
*/
promp Creando TS ESCO_BINARIOS
create bigfile tablespace ESCO_BINARIOS
  datafile '/u01/app/oracle/oradata/ESCOPROY/disk09/esco_binarios.dbf' size 500m
  autoextend on next 100m maxsize 1G
  extent management local autoallocate;

/*TABLESPACE ESCO_CATALOGOS
  *se almacenan en /u01/app/oracle/oradata/ESCOPROY/disk10,
  *nologging
  *Administración de sus extensiones debe ser locally managed,
  *tamaño de las extensiones administrada automaticamente
  *El tamaño del tablespace debe ser 100m sin posibilidad de autocrecimiento
*/
promp Creando TS ESCO_CATALOGOS
create tablespace ESCO_CATALOGOS
  datafile '/u01/app/oracle/oradata/ESCOPROY/disk10/esco_catalogos.dbf' size 100m
  nologging
  extent management local autoallocate
  segment space management auto;

/*TABLESPACE ESCO_INDEX
  *se almacenan en /u01/app/oracle/oradata/ESCOPROY/disk11,
  *nologging
  *Administración de sus extensiones debe ser locally managed,
  *tamaño de las extensiones administrada automaticamente
  *El tamaño del tablespace debe ser 300m sin posibilidad de autocrecimiento
*/
promp Creando TS ESCO_INDEX
create tablespace ESCO_INDEX
  datafile '/u01/app/oracle/oradata/ESCOPROY/disk11/esco_index.dbf' size 300m
  nologging
  extent management local autoallocate
  segment space management auto;

--USUARIOS 
/*TABLESPACE ESCO_TARJETAS
  *se almacenan en /u01/app/oracle/oradata/ESCOPROY/disk12,
  *Administración de sus extensiones debe ser locally managed,
  *tamaño de las extensiones administrada automaticamente
  *Encriptado
  *El tamaño del tablespace debe ser 120m con posibilidad de autocrecimiento
  asignar un crecimiento de 12m hasta 500m 
*/
promp Creando TS ESCO_TARJETAS
alter system set encryption key identified by "wallet_password";
alter system set encryption wallet open identified by "wallet_password";
create tablespace ESCO_TARJETAS
  datafile '/u01/app/oracle/oradata/ESCOPROY/disk12/esco_tarjetas.dbf' size 120m
  autoextend on next 12m maxsize 500m
  encryption using 'aes256' encrypt
  extent management local autoallocate
  segment space management auto;

/*TABLESPACE ESCO_USUARIO
  *se almacenan en /u01/app/oracle/oradata/ESCOPROY/disk13/usuario01.dbf
                   /u01/app/oracle/oradata/ESCOPROY/disk14/usuario02.dbf
                   /u01/app/oracle/oradata/ESCOPROY/disk15/usuario03.dbf
  *Administración de sus extensiones debe ser locally managed,
  *tamaño de las extensiones administrada automaticamente
  *El tamaño del tablespace debe ser 100m con posibilidad de autocrecimiento
  asignar un crecimiento de 20M hasta 500M
*/
promp Creando TS ESCO_USUARIO
 create tablespace ESCO_USUARIO
  datafile '/u01/app/oracle/oradata/ESCOPROY/disk13/esco_usuario01.dbf' size 100m,
    '/u01/app/oracle/oradata/ESCOPROY/disk14/esco_usuario02.dbf' size 100m,
    '/u01/app/oracle/oradata/ESCOPROY/disk15/esco_usuario03.dbf' size 100m
  autoextend on next 20m maxsize 500m
  extent management local autoallocate
  segment space management auto;

/*TABLESPACE ESCO_SUBASTA
  *se almacenan en /u01/app/oracle/oradata/ESCOPROY/disk16,
  *Administración de sus extensiones debe ser locally managed,
  *tamaño de las extensiones administrada automaticamente
  *El tamaño del tablespace debe ser 100m con posibilidad de autocrecimiento
  asignar un crecimiento de 50M hasta 300M
*/
promp Creando TS ESCO_SUBASTA
create tablespace ESCO_SUBASTA
  datafile '/u01/app/oracle/oradata/ESCOPROY/disk16/esco_subasta.dbf' size 100m
  autoextend on next 50m maxsize 300m
  extent management local autoallocate
  segment space management auto;

/*TABLESPACE ESCO_COMPRAS
  *se almacenan en /u01/app/oracle/oradata/ESCOPROY/disk17,
  *Administración de sus extensiones debe ser locally managed,
  *tamaño de las extensiones administrada automaticamente
  *El tamaño del tablespace debe ser 100m con posibilidad de autocrecimiento
  asignar un crecimiento de 100m hasta 800m
*/
promp Creando TS ESCO_COMPRAS
create tablespace ESCO_COMPRAS
  datafile '/u01/app/oracle/oradata/ESCOPROY/disk17/esco_compras.dbf' size 100m
  autoextend on next 100m maxsize 800m
  extent management local autoallocate
  segment space management auto;

/*TABLESPACE ESCO_PRODUCTO
  *se almacenan en /u01/app/oracle/oradata/ESCOPROY/disk18,disk19,
  *Administración de sus extensiones debe ser locally managed,
  *tamaño de las extensiones administrada automaticamente
  *El tamaño del tablespace debe ser 200M con posibilidad de autocrecimiento
  asignar un crecimiento de 100M hasta 500M
*/
promp Creando TS ESCO_PRODUCTO
create tablespace ESCO_PRODUCTO
  datafile '/u01/app/oracle/oradata/ESCOPROY/disk18/esco_producto01.dbf' size 200m,
    '/u01/app/oracle/oradata/ESCOPROY/disk19/esco_producto02.dbf' size 200m
  autoextend on next 100m maxsize 500m
  extent management local autoallocate
  segment space management auto;

/*TABLESPACE ESCO_OFERTAS
  *Se almacenan en /u01/app/oracle/oradata/ESCOPROY/disk20,disk21,
  *Administración de sus extensiones debe ser locally managed,
  *tamaño de las extensiones administrada automaticamente
  *El tamaño del tablespace debe ser 100M con posibilidad de autocrecimiento
  asignar un crecimiento de 50M hasta 300M
*/
promp Creando TS ESCO_OFERTAS
create tablespace ESCO_OFERTAS
  datafile '/u01/app/oracle/oradata/ESCOPROY/disk20/esco_ofertas01.dbf' size 100m,
    '/u01/app/oracle/oradata/ESCOPROY/disk21/esco_ofertas02.dbf' size 100m
  autoextend on next 50m maxsize 300m
  extent management local autoallocate
  segment space management auto;