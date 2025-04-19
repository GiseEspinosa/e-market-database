#!/bin/bash
#@Autor: Giselle Espinosa
#@Fecha de Creacion: 04/junio/2024
#@Descripcion: Creacion de directorios-redo logs y data files

export ORACLE_SID=escoproy

#Directorios para Redo Logs y data files 
cd /unam-bda/proyecto-final/d01
mkdir -p app/oracle/oradata/${ORACLE_SID^^}
chown -R oracle:oinstall app 
chmod 750 app 


cd /unam-bda/proyecto-final/d02
mkdir -p app/oracle/oradata/${ORACLE_SID^^}
chown -R oracle:oinstall app 
chmod 750 app 

cd /unam-bda/proyecto-final/d03
mkdir -p app/oracle/oradata/${ORACLE_SID^^}
chown -R oracle:oinstall app 
chmod 750 app 

ls -l /unam-bda/proyecto-final/d0*/app/oracle/oradata