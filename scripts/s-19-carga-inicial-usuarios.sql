--@Autor:           Giselle Espinosa
--@Fecha creación:  06/06/2024
--@Descripción:     Carga de registros modulo usuario

--si ocurre un error, se hace rollback de los datos y
--se sale de SQL *Plus
whenever  sqlerror exit rollback

Prompt creando usuario admin_usuario
connect admin_usuario/usuarioA

set define off /*No lo parsee como una variable de sustitución*/

Prompt realizando la carga de datos
/*Debemos tener una carpeta que se llama @carga-inicial o la que le corresponda*/
@carga-inicial-modulo-usuarios/s-18-USUARIO.sql
@carga-inicial-modulo-usuarios/s-18-OCUPACION.sql
@carga-inicial-modulo-usuarios/s-18-COMPRADOR.sql
@carga-inicial-modulo-usuarios/s-18-EMPRESA_PAQUETERIA.sql
alter system set wallet open identified by "wallet_password"
@carga-inicial-modulo-usuarios/s-18-TARJETA_CREDITO.sql
@carga-inicial-modulo-usuarios/s-18-ORDEN_COMPRA.sql
@carga-inicial-modulo-usuarios/s-18-FACTURA.sql
@carga-inicial-modulo-usuarios/s-18-ENCUESTA_SASTIFACCION.sql
@carga-inicial-modulo-usuarios/s-18-UBICACION_PAQUETE.sql
@carga-inicial-modulo-usuarios/s-18-VENDEDOR.sql

set define on

Prompt confirmando cambios
commit;

--Si se encuentra un error, no se sale de SQL *Plus
--no se hace commit ni rollback, es decir, se
--regresa al estado original.
whenever sqlerror continue none --LO REGRESA A SU ESTADO INICIAL.

Prompt mostrando datos a nivel segmento

set linesize window
col segment_name format a30

/*CONSULTA que muestra los segmentos que se generaron del caso de estudio*/
select segment_name, extents, round(bytes/1024,1) kbs from user_segments
order by kbs desc;