#!/bin/bash
#@Autor: Giselle Espinosa
#@Fecha de Creacion: 02/junio/2024
#@Descripcion: Crea el archivo de passwords



echo "Creando Archivo de passwords"
#RUTA -> $ORACLE_HOME/dbs/orapw${ORACLE_HOME}
export ORACLE_SID='escoproy'

#Comprobando existencia, si existe y se desea sobreescribir
if [ -f "${ORACLE_HOME}/bds/orapw${ORACLE_SID}" ]; then
   read -p "El archivo existe, [enter] para sobreescribir, Ctlr-C para cancelar"
fi;

echo 'Creando nuevo archivo de password'

orapwd FILE='${ORACLE_HOME}/dbs/orapw${ORACLE_SID}' \
FORMAT=12.2 \
FORCE='y' \
SYS=password \
SYSBACKUP=password 


echo 'Comprobando la correcta creación del archivo de password'
ls -l ${ORACLE_HOME}/dbs

echo LISTO ARCHIVO DE PASSWORDS CREADO!




