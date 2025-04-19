#!/bin/bash
#@Autor: Giselle Espinosa
#@Fecha de Creacion: 03/junio/2024
#@Descripcion: Creación de un PFILE

echo "Creando un pfile"
#un pfile es el archivo de texto
export ORACLE_SID=escoproy

pfile="${ORACLE_HOME}/dbs/init${ORACLE_SID}.ora"

if  [ -f "${pfile}" ]; then
  read -p "El archivo ${pfile} ya existe, [enter] para sobreescribir"
fi;

echo \
"
db_name='${ORACLE_SID}'
memory_target=768M
db_recovery_file_dest_size=10G
db_recovery_file_dest='/unam-bda/proyecto-final/fast-reco-area'
db_flashback_retention_target=10080
log_archive_max_processes=5
log_archive_format='arch_${ORACLE_SID}_%t_%s_%r.arc'
log_archive_dest_1='LOCATION=/unam-bda/proyecto-final/archivelogs/${ORACLE_SID^^}/disk_a MANDATORY'
log_archive_dest_2='LOCATION=USE_DB_RECOVERY_FILE_DEST'
log_archive_min_succeed_dest=1

" > ${pfile}
#Aquí se agregaron los parametros en el archivo (se sobre escribieron)
echo "Comprobando la existencia y contenido del PFILE"
echo ""
cat ${pfile}

#Una vez que la base este creada, ejecutar el comando
#alter database archivelog
#IMPORTANTE: Tema 7 parte 2 página 16 La base debe estar en modo mount