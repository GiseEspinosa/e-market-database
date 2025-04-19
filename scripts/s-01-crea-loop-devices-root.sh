#!/bin/bash
#@Autor: Giselle Espinosa
#@Fecha de Creacion: 30/mayo/2024
#@Descripcion: Realiza configuraciones necesarias para la creacion de 3 loop devices

cd /
cd /unam-bda/proyecto-final/disk-images

echo Creando archivos binarios disk1, disk2 y disk3

dd if=/dev/zero of=disk1.img bs=100M count=10
dd if=/dev/zero of=disk2.img bs=100M count=10
dd if=/dev/zero of=disk3.img bs=100M count=10

echo Comprobando la creación de los archivos

du -sh disk*.img

echo Asociando loops devices a su archivo 

losetup -fP disk1.img
losetup -fP disk2.img
losetup -fP disk3.img

echo Confirmando la creación de los 3 loop devices

losetup -a

echo Dando formato a los archivos para que puedan ser montados 
mkfs.ext4 disk1.img
mkfs.ext4 disk2.img
mkfs.ext4 disk3.img

echo Creando los directorios donde los dispositivos sean montados
mkdir /unam-bda/proyecto-final/d01
mkdir /unam-bda/proyecto-final/d02
mkdir /unam-bda/proyecto-final/d03