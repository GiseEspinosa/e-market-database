#!/bin/bash
#@Autor: Giselle Espinosa
#@Fecha de Creacion: 03/junio/2024
#@Descripcion: Crear las copias del controlfile fuera de la FRA.

#UBICACION CONTROL-FILE /unam-bda/proyecto-final/fast-reco-area/ESCOPROY/controlfile/o1_mf_m5zcrrz4_.ctl

echo "Posicionandonos en el directorio de la FRA"
cd /unam-bda/proyecto-final/fast-reco-area/ESCOPROY/controlfile

echo "Realizando las copias de los data files"
cp o1_mf_m5zcrrz4_.ctl /unam-bda/proyecto-final/d01/app/oracle/oradata/ESCOPROY
cp o1_mf_m5zcrrz4_.ctl /unam-bda/proyecto-final/d02/app/oracle/oradata/ESCOPROY

echo "Renombrando data file 01 y cambiando permisos"
cd /unam-bda/proyecto-final/d01/app/oracle/oradata/ESCOPROY
mv o1_mf_m5zcrrz4_.ctl controlfile_01.ctl
echo "Colocando permisos correspondientes"
chown oracle:oinstall controlfile_01.ctl #d01
chmod 660 controlfile_01.ctl

echo "Renombrando data file 02 y cambiando permisos"
cd /unam-bda/proyecto-final/d02/app/oracle/oradata/ESCOPROY
mv o1_mf_m5zcrrz4_.ctl controlfile_02.ctl
echo "Colocando permisos correspondientes"
chown oracle:oinstall controlfile_02.ctl #d02
chmod 660 controlfile_02.ctl