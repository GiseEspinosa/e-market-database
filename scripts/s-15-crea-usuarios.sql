--Autor Giselle Espinosa
--Fecha de creacion 05/junio/2024
--Descripcion Creacion de usuarios

prompt conectando como sys
connect sys/system3 as sysdba

whenever sqlerror exit rollback

declare
    v_count number;
    v_username varchar2(20) := 'ADMIN_USUARIO';
begin
    select count(*) into v_count from all_users where username=v_username;
    if v_count = 0 then
        execute immediate 'create user '||v_username||' identified by usuarioA default tablespace ESCO_USUARIO
        quota unlimited on ESCO_BINARIOS
        quota unlimited on ESCO_CATALOGOS 
        quota unlimited on ESCO_INDEX
        quota unlimited on ESCO_TARJETAS
        quota unlimited on ESCO_USUARIO
        quota unlimited on ESCO_COMPRAS';
        execute immediate 'grant create table, create any index, create session, create procedure, 
        create sequence, create view to '||v_username;
    end if;
end;
/


declare
    v_count number;
    v_username varchar2(20) := 'ADMIN_PRODUCT';
begin
    select count(*) into v_count from all_users where username=v_username;
    if v_count = 0 then
        execute immediate 'create user '||v_username||' identified by producto default tablespace ESCO_PRODUCTO
        quota unlimited on ESCO_BINARIOS
        quota unlimited on ESCO_CATALOGOS 
        quota unlimited on ESCO_INDEX 
        quota unlimited on ESCO_PRODUCTO
        quota unlimited on ESCO_SUBASTA
        quota unlimited on ESCO_OFERTAS';
        execute immediate 'grant create table, create any index, create session, create procedure, 
        create sequence, create view to '||v_username;
    end if;
end;
/