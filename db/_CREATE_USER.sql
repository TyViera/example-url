alter session set "_ORACLE_SCRIPT"=true; 
-- crear un nuevo usuario
CREATE USER USR_ADM IDENTIFIED BY USR_ADM;

-- permitir al usuario conectarse a la base de datos:
grant connect to USR_ADM;

-- proporcionar la cuota en todos los espacios de tablas con tablas BPM
grant unlimited tablespace to USR_ADM;

-- otorgar privilegios para crear objetos de base de datos:
grant resource to USR_ADM;
grant create view to USR_ADM;

-- otorgar derechos de acceso para resolver problemas de bloqueo
grant execute on dbms_lock to USR_ADM;

-- otorgar derechos de acceso para resolver problemas relacionados con XA:
grant select on pending_trans$ to USR_ADM;
grant select on dba_2pc_pending to USR_ADM;
grant select on dba_pending_transactions to USR_ADM;
-- Si utiliza Oracle 10.2.0.3 o un controlador JDBC inferior, elimine el comentario de la sentencia siguiente:
-- grant execute on dbms_system to USR_ADM;
-- Si no utiliza Oracle 10.2.0.4 o un controlador JDBC posterior, comente la sentencia siguiente:
grant execute on dbms_xa to USR_ADM;