--@Autor:           Giselle Espinosa
--@Fecha creación:  06/06/2024
--@Descripción:     Carga de registros modulo producto

--si ocurre un error, se hace rollback de los datos y
--se sale de SQL *Plus
whenever  sqlerror exit rollback

Prompt creando usuario admin_product
connect admin_product/producto

set define off /*No lo parsee como una variable de sustitución*/

Prompt realizando la carga de datos
/*Debemos tener una carpeta que se llama @carga-inicial o la que le corresponda*/
prompt Cargando datos CATEGORIA
@carga-inicial-modulo-producto/s-18-CATEGORIA.sql
prompt Cargando datos FOTO_PRODUCTO
@carga-inicial-modulo-producto/s-18-FOTO_PRODUCTO.sql
prompt Cargando datos STATUS_PRODUCTO
@carga-inicial-modulo-producto/s-18-HISTORICO_STATUS_PRODUCTO.sql
prompt Cargando datos OFERTA
@carga-inicial-modulo-producto/s-18-OFERTA.sql
prompt Cargando datos PRODUCTO
@carga-inicial-modulo-producto/s-18-PRODUCTO.sql
prompt Cargando datos STATUS_PRODUCTO
@carga-inicial-modulo-producto/s-18-STATUS_PRODUCTO.sql
prompt Cargando datos SUBASTA
@carga-inicial-modulo-producto/s-18-SUBASTA.sql
prompt Cargando datos SUBASTA_PRODUCTO
@carga-inicial-modulo-producto/s-18-SUBASTA_PRODUCTO.sql


set define on

prompt confirmando cambios
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