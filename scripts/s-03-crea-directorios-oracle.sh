#!/bin/bash
#@Autor: Giselle Espinosa
#@Fecha de Creacion: 04/junio/2024
#@Descripcion: Creacion de directorios

echo "creando directorios"
export ORACLE_SID=escoproy

if ! [ "${USER}" = "oracle" ]; then
  echo "El script debe ser ejecutado con el usuario oracle"
  exit 1;
fi;

#Creando los discos donde se almacenaran los archived redo logs:
echo "creando los discos donde se almacenaran los archived redo logs"
cd /unam-bda/proyecto-final

mkdir -p archivelogs/${ORACLE_SID^^}/disk_a

chmod -R 750 archivelogs/${ORACLE_SID^^}/disk_a

echo "comprobando existencia de directorios"
ls -l /unam-bda/proyecto-final/archivelogs/${ORACLE_SID^^}

#Creando el disco de almacenamiento de la FRA
echo "creando la carpeta donde se almacenara la FRA"
cd /unam-bda/proyecto-final
mkdir -p fast-reco-area
chmod -R 750 fast-reco-area

ls -l /unam-bda/proyecto-final

#Directorios para Datafiles
#Creando directorio RAIZ
cd /u01/app/oracle/oradata
mkdir ${ORACLE_SID^^}
chmod 750 ${ORACLE_SID^^}

#Creando directorio para DataFile SYSTEM
cd /u01/app/oracle/oradata/${ORACLE_SID^^}
mkdir disk04


#Creando directorio para DataFile SYSAUX
mkdir disk05

#Creando directorio para DataFile USERS
mkdir disk06

#Creando directorio para DataFile TEMP01
mkdir disk07

#Creando directorio para DataFile UNDOTBS01
mkdir disk08

#Creando directorio para DataFile BINARIOS
mkdir disk09

#Creando directorio para DataFile INDEX_EMARKET
mkdir disk10

#Creando directorio para DataFile CATALOGOS_EMARKET
mkdir disk11

#Creando directorio para DataFile TARJETAS
mkdir disk12

#Creando directorio para DataFile USUARIO
mkdir disk13
mkdir disk14
mkdir disk15

#Creando directorio para DataFile SUBASTA
mkdir disk16

#Creando directorio para DataFile COMPRAS
mkdir disk17

#Creando directorio para DataFile PRODUCTO
mkdir disk18
mkdir disk19

#Creando directorio para DataFile OFERTAS
mkdir disk20
mkdir disk21

chmod 750 /u01/app/oracle/oradata/${ORACLE_SID^^}/disk*
ls -l /u01/app/oracle/oradata

