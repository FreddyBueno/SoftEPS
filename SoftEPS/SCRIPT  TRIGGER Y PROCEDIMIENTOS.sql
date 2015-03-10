-- ============================================================
--   Database name:  SOFTEPS                                  
--   DBMS name:      ORACLE Version 8                          
--   Created on:     06/10/2002  10:41                         
-- ============================================================

-- Integrity package declaration
create or replace package IntegrityPackage AS
 procedure InitNestLevel;
 function GetNestLevel return number;
 procedure NextNestLevel;
 procedure PreviousNestLevel;
 end IntegrityPackage;
/

-- Integrity package definition
create or replace package body IntegrityPackage AS
 NestLevel number;

-- Procedure to initialize the trigger nest level
 procedure InitNestLevel is
 begin
 NestLevel := 0;
 end;


-- Function to return the trigger nest level
 function GetNestLevel return number is
 begin
 if NestLevel is null then
     NestLevel := 0;
 end if;
 return(NestLevel);
 end;

-- Procedure to increase the trigger nest level
 procedure NextNestLevel is
 begin
 if NestLevel is null then
     NestLevel := 0;
 end if;
 NestLevel := NestLevel + 1;
 end;

-- Procedure to decrease the trigger nest level
 procedure PreviousNestLevel is
 begin
 NestLevel := NestLevel - 1;
 end;

 end IntegrityPackage;
/

create PROCEDURE pa_seleccion_grupo
 (tip_documento char,num_documento varchar)
IS
BEGIN
DECLARE num_semanas number;
        tip_documento_ben varchar2(3);
        num_documento_ben varchar2(18);
	cursor temporal is SELECT tip_documento,
                       		  num_documento
                  	     FROM temporalito
              		 ORDER BY cod_tipo_afil desc;
        BEGIN
             BEGIN DELETE FROM temporalito; END;
 	     BEGIN
         		INSERT INTO temporalito
         		  	( tip_documento,
          			num_documento,
          			pri_apellido,
          			seg_apellido,
          			pri_nombre,
          			seg_nombre,
          			cod_sexo,
          			fec_nacimiento,
          			cod_parentesco,
          			cod_tipo_afil,
          			cod_estado)
         		Select distinct
          			ra.tip_documento_ben,
          			ra.num_documento_ben,
          			a.pri_apellido,
          			a.seg_apellido,
          			a.pri_nombre,
          			a.seg_nombre,
          			a.cod_sexo,
          			a.fec_nacimiento,
          			ra.cod_parentesco,
          			a.cod_tipo_afil,
          			a.cod_estado
        		From relacion_afiliados ra,afiliados a
        		Where
          			ra.tip_documento_cot = tip_documento AND
          			ra.num_documento_cot = num_documento AND
          			a.tip_documento = ra.tip_documento_ben AND
          			a.num_documento = ra.num_documento_ben;
---			exception when others then
---				rollback;
	     END;
            OPEN temporal;
	    loop
            FETCH temporal INTO tip_documento_ben,num_documento_ben;
		  exit when temporal%notfound;
   		  pa_semanas_cotizadas(tip_documento_ben,num_documento_ben,num_semanas);
		 begin
                 	update 	temporalito
                 	set 	num_semanas = num_semanas
                 	where 	tip_documento = tip_documento_ben and
                       		num_documento = num_documento_ben;
		 end;
            end loop;
            close temporal;
	END;
 END;
/

create procedure pa_semanas_cotizadas
(tipo_documento char, numero_documento in varchar2, num_semanas in out number)
iS
begin
declare
	nov_codigo varchar2(3);
        cod_oficina varchar2(3);
        cod_regional varchar2(3);
        fec_novedad_afil date;
        fec_evento date;
        fec_aplicativo date;
        tip_documento_emp varchar2(3);
        num_documento_emp varchar2(18);
        cod_sucursal varchar2(2);
        num_planilla varchar2(15);
        fec_ingreso date;
        fec_egreso date;
        ciclo varchar2(1);
        per_permanencia number;
        per_suspension number;
        per_inactividad number;
        mora number;
        imprimir varchar2(50);
	aux_mes	number;
	cursor nov_afil is
	SELECT novedades_afiliados.nov_codigo,
                         novedades_afiliados.cod_oficina,
                         novedades_afiliados.cod_regional,
                         novedades_afiliados.fec_novedad_afil,
                         novedades_afiliados.fec_evento,
                         novedades_afiliados.fec_aplicativo,
                         novedades_afiliados.tip_documento_emp,
                         novedades_afiliados.num_documento_emp,
                         novedades_afiliados.cod_sucursal,
                         novedades_afiliados.num_planilla
                    FROM dbo.novedades_afiliados,dbo.novedades
                   WHERE (novedades_afiliados.tip_documento = tipo_documento ) AND
                         ( novedades_afiliados.num_documento = numero_documento ) AND
                         ( novedades_afiliados.nov_codigo = novedades.nov_codigo ) AND
                         ( novedades.cla_novedad in ('10','20') ) AND
                         ( novedades_afiliados.nov_codigo not in ('06','11','74') )
                ORDER BY novedades_afiliados.fec_novedad_afil asc;
begin
     begin
	SELECT b.per_permanencia, b.per_suspension, b.per_inactividad
	into per_permanencia,per_suspension,per_inactividad
	FROM permanencias b
	where  b.fec_periodo = (select max(a.fec_periodo)
                             FROM permanencias a
                             where a.fec_periodo <= sysdate
                             and a.fec_periodo = b.fec_periodo);
        --	exception exception when others then
	---	rollback;
    end;
    ciclo:='0';
    fec_egreso := NULL;
    num_semanas := 0;
    OPEN nov_afil;
    loop
        FETCH nov_afil  INTO nov_codigo,cod_oficina,cod_regional,fec_novedad_afil,
                 fec_evento,fec_aplicativo,tip_documento_emp,
                 num_documento_emp,cod_sucursal,num_planilla;
        exit when nov_afil%notfound;
             if ((nov_codigo ='01') or (nov_codigo ='02') or (nov_codigo ='03')) and (ciclo != '1') then
		begin
		         select num_semanas + (to_char(fec_egreso,'j')-to_char(fec_ingreso,'j'))/30
	                 into aux_mes
		         from dual;
		end;
               IF (fec_egreso = null) OR (trunc(aux_mes) < per_inactividad) then
                    fec_ingreso := fec_novedad_afil;
                    ciclo := '1';
               end if;
             end if;
             if (nov_codigo != '01') AND (nov_codigo != '02') AND (nov_codigo != '03') then
                 IF (ciclo = '1') then
                     fec_egreso := fec_novedad_afil;
                     ciclo := '2';
                     ---num_semanas := num_semanas + datediff(day,fec_ingreso,fec_egreso)/7;
		     begin
		         select num_semanas + (to_char(fec_egreso,'j')-to_char(fec_ingreso,'j'))/7
	                 into num_semanas
		         from dual;
		     end;
                 end if;
             end if;
	 end loop;
 	 close nov_afil;
              SELECT trunc((count(*) * 30)/7)
	      into mora
                FROM cartera
               WHERE ( cartera.tip_documento = tipo_documento ) AND
                     ( cartera.num_documento = numero_documento );
            if (ciclo = '1') then
                 ---- @num_semanas = @num_semanas + floor(datediff(day,@fec_ingreso,getdate())/7)
		 begin
		   select num_semanas + (to_char(fec_egreso,'j')-to_char(fec_ingreso,'j'))/7
	           into num_semanas
		   from dual;
		 end;
              num_semanas := num_semanas - mora;
            else
                 num_semanas := num_semanas - mora;
            end if;
END;
end;
/

create trigger "DBO".trg_Iafiliados AFTER INSERT ON afiliados FOR EACH ROW
declare
	fecha_sistema date;
	tipo_doc varchar2(3);
       nro_doc varchar2(18);
       tipo_doc_usu varchar2(3);
       nro_doc_usu varchar2(18);
       fecha_nov date;
       Oficina varchar2(3);
       Regional varchar2(3);
       tipo_afiliado varchar2(1);
       codigo_novedad varchar2(3);
       Usuario varchar2(20);
   begin
       fecha_sistema:=SYSDATE;
       Usuario:=USER;
       tipo_doc:=:new.tip_documento;
	nro_doc:=:new.num_documento;
	fecha_nov:=:new.fec_ultima_nov;
	tipo_afiliado:=:new.cod_tipo_afil;
	BEGIN     	SELECT cod_oficina,cod_regional,tip_documento,num_documento       	  INTO Oficina,Regional,tipo_doc_usu,nro_doc_usu       	  FROM usuarios      	 WHERE cod_usuario = Usuario;
	END;
          if tipo_afiliado = 'C' then
	      codigo_novedad:='01';
	   END IF;
          if tipo_afiliado = 'B' then
	      codigo_novedad:='02';
	   END IF;
          if tipo_afiliado = 'A' then
	      codigo_novedad:='03';
	   END IF;
	   begin
                      INSERT INTO novedades_afiliados                                  ( cod_novedad_afil, 				   nov_codigo,                                    tip_documento,                                    num_documento,                                    cod_oficina,                                    cod_regional,                                    usu_tipo_doc,                                    usu_numero_doc,                                    fec_novedad_afil,                                    
nom_campo,                                    dat_campo_ant,                                    nom_tabla,                                    dat_campo_des,                                    fec_evento,                                    fec_aplicativo)                           VALUES ( nov_afiliados.nextval, 				   codigo_novedad,                                    tipo_doc,                                    nro_doc,                                    Oficina,                                    
Regional,                                    tipo_doc_usu,                                    nro_doc_usu,                                    fecha_nov,                                    '',                                    '',                                    'afiliados',                                    '',                                    fecha_nov,                                    fecha_sistema);
	    END;
     END;
/

create trigger "DBO".trg_Uafiliados BEFORE UPDATE ON afiliados FOR EACH ROW
declare
   dato_antes varchar2(255);
   dato_despues  varchar2(255);
   fecha_sistema date;
   tipo_doc varchar2(3);
   nro_doc varchar(18);
   tipo_doc_usu varchar2(3);
   nro_doc_usu varchar2(18);
   fecha_nov date;
   Oficina varchar2(3);
   Regional varchar2(3);
   Usuario varchar2(20);
   total number;
begin
   fecha_sistema:=SYSDATE;
   Usuario:=USER;
   fecha_nov:=:new.fec_ultima_nov;
	select nvl(fecha_nov,:old.fec_ultima_nov) 	INTO fecha_nov 	from dual;
   tipo_doc:=:old.tip_documento;
   nro_doc:=:old.num_documento;
   begin
   SELECT cod_oficina,cod_regional,tip_documento,num_documento       INTO Oficina,Regional,tipo_doc_usu,nro_doc_usu
     FROM usuarios
    WHERE cod_usuario = Usuario;
         
exception
when others then
	   	ROLLBACK;
   END;
     dato_antes:=:old.ace_numero_doc;
     dato_despues:=:new.ace_numero_doc;
           IF dato_antes != dato_despues then
		BEGIN                         INSERT INTO novedades_afiliados                                  ( cod_novedad_afil,nov_codigo,                                    tip_documento,                                    num_documento,                                    cod_oficina,                                    cod_regional,                                    usu_tipo_doc,                                    usu_numero_doc,                                    fec_novedad_afil,                                   
 nom_campo,                                    dat_campo_ant,                                    nom_tabla,                                    dat_campo_des,                                    fec_evento,                                    fec_aplicativo)                           VALUES ( nov_afiliados.nextval,'53',                                    tipo_doc,                                    nro_doc,                                    Oficina,                                    Regional,                
                    tipo_doc_usu,                                    nro_doc_usu,                                    fecha_nov,                                    'ace_numero_doc',                                    dato_antes,                                    'afiliados',                                    dato_despues,                                    fecha_nov,                                    fecha_sistema);
		exception when others then
	   		ROLLBACK;
		END;
              END IF;
	    dato_antes:= :old.ace_tip_doc;
           dato_despues:= :new.ace_tip_doc;
           IF dato_antes != dato_despues then
              begin
                       INSERT INTO novedades_afiliados                                  ( cod_novedad_afil,nov_codigo,                                    tip_documento,                                    num_documento,                                    cod_oficina,                                    cod_regional,                                    usu_tipo_doc,                                    usu_numero_doc,                                    fec_novedad_afil,                                    
nom_campo,                                    dat_campo_ant,                                    nom_tabla,                                    dat_campo_des,                                    fec_evento,                                    fec_aplicativo)                           VALUES ( nov_afiliados.nextval,'52',                                    tipo_doc,                                    nro_doc,                                    Oficina,                                    Regional,                 
                   tipo_doc_usu,                                    nro_doc_usu,                                    fecha_nov,                                    'ace_tip_doc',                                    dato_antes,                                    'afiliados',                                    dato_despues,                                    fecha_nov,                                    fecha_sistema);
exception when others then
ROLLBACK;
                          END;
              END IF;
	    dato_antes:= :old.cel_afiliado;
           dato_despues:= :new.cel_afiliado;
           IF dato_antes != dato_despues then
              begin
                       INSERT INTO novedades_afiliados                                  ( cod_novedad_afil,nov_codigo,                                    tip_documento,                                    num_documento,                                    cod_oficina,                                    cod_regional,                                    usu_tipo_doc,                                    usu_numero_doc,                                    fec_novedad_afil,                                    
nom_campo,                                    dat_campo_ant,                                    nom_tabla,                                    dat_campo_des,                                    fec_evento,                                    fec_aplicativo)                           VALUES ( nov_afiliados.nextval,'61',                                    tipo_doc,                                    nro_doc,                                    Oficina,                                    Regional,                 
                   tipo_doc_usu,                                    nro_doc_usu,                                    fecha_nov,                                    'cel_afiliado',                                    dato_antes,                                    'afiliados',                                    dato_despues,                                    fecha_nov,                                    fecha_sistema);
exception when others then
ROLLBACK;
                          END;
              END IF;
	    dato_antes:= :old.cod_barrio_res;
           dato_despues:= :new.cod_barrio_res;
           IF dato_antes != dato_despues then
              begin
                       INSERT INTO novedades_afiliados                                  ( cod_novedad_afil,nov_codigo,                                    tip_documento,                                    num_documento,                                    cod_oficina,                                    cod_regional,                                    usu_tipo_doc,                                    usu_numero_doc,                                    fec_novedad_afil,                                    
nom_campo,                                    dat_campo_ant,                                    nom_tabla,                                    dat_campo_des,                                    fec_evento,                                    fec_aplicativo)                           VALUES ( nov_afiliados.nextval,'48',                                    tipo_doc,                                    nro_doc,                                    Oficina,                                    Regional,                 
                   tipo_doc_usu,                                    nro_doc_usu,                                    fecha_nov,                                    'cod_barrio_res',                                    dato_antes,                                    'afiliados',                                    dato_despues,                                    fecha_nov,                                    fecha_sistema);
exception when others then
ROLLBACK;
                          END;
              END IF;
	    dato_antes:= :old.cod_ciudad_res;
           dato_despues:= :new.cod_ciudad_res;
           IF dato_antes != dato_despues then
              begin
                       INSERT INTO novedades_afiliados                                  ( cod_novedad_afil,nov_codigo,                                    tip_documento,                                    num_documento,                                    cod_oficina,                                    cod_regional,                                    usu_tipo_doc,                                    usu_numero_doc,                                    fec_novedad_afil,                                    
nom_campo,                                    dat_campo_ant,                                    nom_tabla,                                    dat_campo_des,                                    fec_evento,                                    fec_aplicativo)                           VALUES ( nov_afiliados.nextval,'47',                                    tipo_doc,                                    nro_doc,                                    Oficina,                                    Regional,                 
                   tipo_doc_usu,                                    nro_doc_usu,                                    fecha_nov,                                    'cod_ciudad_res',                                    dato_antes,                                    'afiliados',                                    dato_despues,                                    fecha_nov,                                    fecha_sistema);
exception when others then
ROLLBACK;
                          END;
              END IF;
	    dato_antes:= :old.cod_departamento_res;
           dato_despues:= :new.cod_departamento_res;
           IF dato_antes != dato_despues then
              begin
                       INSERT INTO novedades_afiliados                                  ( cod_novedad_afil,nov_codigo,                                    tip_documento,                                    num_documento,                                    cod_oficina,                                    cod_regional,                                    usu_tipo_doc,                                    usu_numero_doc,                                    fec_novedad_afil,                                    
nom_campo,                                    dat_campo_ant,                                    nom_tabla,                                    dat_campo_des,                                    fec_evento,                                    fec_aplicativo)                           VALUES ( nov_afiliados.nextval,'46',                                    tipo_doc,                                    nro_doc,                                    Oficina,                                    Regional,                 
                   tipo_doc_usu,                                    nro_doc_usu,                                    fecha_nov,                                    'cod_departamento_res',                                    dato_antes,                                    'afiliados',                                    dato_despues,                                    fecha_nov,                                    fecha_sistema);
exception when others then
ROLLBACK;
                          END;
              END IF;
	    dato_antes:= :old.cod_discapacidad;
           dato_despues:= :new.cod_discapacidad;
           IF dato_antes != dato_despues then
              begin
                       INSERT INTO novedades_afiliados                                  ( cod_novedad_afil,nov_codigo,                                    tip_documento,                                    num_documento,                                    cod_oficina,                                    cod_regional,                                    usu_tipo_doc,                                    usu_numero_doc,                                    fec_novedad_afil,                                    
nom_campo,                                    dat_campo_ant,                                    nom_tabla,                                    dat_campo_des,                                    fec_evento,                                    fec_aplicativo)                           VALUES ( nov_afiliados.nextval,'54',                                    tipo_doc,                                    nro_doc,                                    Oficina,                                    Regional,                 
                   tipo_doc_usu,                                    nro_doc_usu,                                    fecha_nov,                                    'cod_discapacidad',                                    dato_antes,                                    'afiliados',                                    dato_despues,                                    fecha_nov,                                    fecha_sistema);
exception when others then
ROLLBACK;
                          END;
              END IF;
	    dato_antes:= :old.cod_escolaridad;
           dato_despues:= :new.cod_escolaridad;
           IF dato_antes != dato_despues then
              begin
                       INSERT INTO novedades_afiliados                                  ( cod_novedad_afil,nov_codigo,                                    tip_documento,                                    num_documento,                                    cod_oficina,                                    cod_regional,                                    usu_tipo_doc,                                    usu_numero_doc,                                    fec_novedad_afil,                                    
nom_campo,                                    dat_campo_ant,                                    nom_tabla,                                    dat_campo_des,                                    fec_evento,                                    fec_aplicativo)                           VALUES ( nov_afiliados.nextval,'31',                                    tipo_doc,                                    nro_doc,                                    Oficina,                                    Regional,                 
                   tipo_doc_usu,                                    nro_doc_usu,                                    fecha_nov,                                    'cod_escolaridad',                                    dato_antes,                                    'afiliados',                                    dato_despues,                                    fecha_nov,                                    fecha_sistema);
exception when others then
ROLLBACK;
                          END;
              END IF;
	    dato_antes:= :old.cod_estado;
           dato_despues:= :new.cod_estado;
           IF dato_antes != dato_despues then
              begin
                       INSERT INTO novedades_afiliados                                  ( cod_novedad_afil,nov_codigo,                                    tip_documento,                                    num_documento,                                    cod_oficina,                                    cod_regional,                                    usu_tipo_doc,                                    usu_numero_doc,                                    fec_novedad_afil,                                    
nom_campo,                                    dat_campo_ant,                                    nom_tabla,                                    dat_campo_des,                                    fec_evento,                                    fec_aplicativo)                           VALUES ( nov_afiliados.nextval,'33',                                    tipo_doc,                                    nro_doc,                                    Oficina,                                    Regional,                 
                   tipo_doc_usu,                                    nro_doc_usu,                                    fecha_nov,                                    'cod_estado',                                    dato_antes,                                    'afiliados',                                    dato_despues,                                    fecha_nov,                                    fecha_sistema);
exception when others then
ROLLBACK;
                          END;
              END IF;
	    dato_antes:= :old.cod_estado_civ;
           dato_despues:= :new.cod_estado_civ;
           IF dato_antes != dato_despues then
              begin
                       INSERT INTO novedades_afiliados                                  ( cod_novedad_afil,nov_codigo,                                    tip_documento,                                    num_documento,                                    cod_oficina,                                    cod_regional,                                    usu_tipo_doc,                                    usu_numero_doc,                                    fec_novedad_afil,                                    
nom_campo,                                    dat_campo_ant,                                    nom_tabla,                                    dat_campo_des,                                    fec_evento,                                    fec_aplicativo)                           VALUES ( nov_afiliados.nextval,'29',                                    tipo_doc,                                    nro_doc,                                    Oficina,                                    Regional,                 
                   tipo_doc_usu,                                    nro_doc_usu,                                    fecha_nov,                                    'cod_estado_civ',                                    dato_antes,                                    'afiliados',                                    dato_despues,                                    fecha_nov,                                    fecha_sistema);
exception when others then
ROLLBACK;
                          END;
              END IF;
	    dato_antes:= :old.cod_estrato;
           dato_despues:= :new.cod_estrato;
           IF dato_antes != dato_despues then
              begin
                       INSERT INTO novedades_afiliados                                  ( cod_novedad_afil,nov_codigo,                                    tip_documento,                                    num_documento,                                    cod_oficina,                                    cod_regional,                                    usu_tipo_doc,                                    usu_numero_doc,                                    fec_novedad_afil,                                    
nom_campo,                                    dat_campo_ant,                                    nom_tabla,                                    dat_campo_des,                                    fec_evento,                                    fec_aplicativo)                           VALUES ( nov_afiliados.nextval,'30',                                    tipo_doc,                                    nro_doc,                                    Oficina,                                    Regional,                 
                   tipo_doc_usu,                                    nro_doc_usu,                                    fecha_nov,                                    'cod_estrato',                                    dato_antes,                                    'afiliados',                                    dato_despues,                                    fecha_nov,                                    fecha_sistema);
exception when others then
ROLLBACK;
                          END;
              END IF;
	    dato_antes:= :old.cod_modalidad_tra;
           dato_despues:= :new.cod_modalidad_tra;
           IF dato_antes != dato_despues then
              begin
                       INSERT INTO novedades_afiliados                                  ( cod_novedad_afil,nov_codigo,                                    tip_documento,                                    num_documento,                                    cod_oficina,                                    cod_regional,                                    usu_tipo_doc,                                    usu_numero_doc,                                    fec_novedad_afil,                                    
nom_campo,                                    dat_campo_ant,                                    nom_tabla,                                    dat_campo_des,                                    fec_evento,                                    fec_aplicativo)                           VALUES ( nov_afiliados.nextval,'28',                                    tipo_doc,                                    nro_doc,                                    Oficina,                                    Regional,                 
                   tipo_doc_usu,                                    nro_doc_usu,                                    fecha_nov,                                    'cod_modalidad_tra',                                    dato_antes,                                    'afiliados',                                    dato_despues,                                    fecha_nov,                                    fecha_sistema);
exception when others then
ROLLBACK;
                          END;
              END IF;
	    dato_antes:= :old.cod_oficina;
           dato_despues:= :new.cod_oficina;
           IF dato_antes != dato_despues then
              begin
                       INSERT INTO novedades_afiliados                                  ( cod_novedad_afil,nov_codigo,                                    tip_documento,                                    num_documento,                                    cod_oficina,                                    cod_regional,                                    usu_tipo_doc,                                    usu_numero_doc,                                    fec_novedad_afil,                                    
nom_campo,                                    dat_campo_ant,                                    nom_tabla,                                    dat_campo_des,                                    fec_evento,                                    fec_aplicativo)                           VALUES ( nov_afiliados.nextval,'34',                                    tipo_doc,                                    nro_doc,                                    Oficina,                                    Regional,                 
                   tipo_doc_usu,                                    nro_doc_usu,                                    fecha_nov,                                    'cod_oficina',                                    dato_antes,                                    'afiliados',                                    dato_despues,                                    fecha_nov,                                    fecha_sistema);
exception when others then
ROLLBACK;
                          END;
              END IF;
	    dato_antes:= :old.cod_profesion;
           dato_despues:= :new.cod_profesion;
           IF dato_antes != dato_despues then
              begin
                       INSERT INTO novedades_afiliados                                  ( cod_novedad_afil,nov_codigo,                                    tip_documento,                                    num_documento,                                    cod_oficina,                                    cod_regional,                                    usu_tipo_doc,                                    usu_numero_doc,                                    fec_novedad_afil,                                    
nom_campo,                                    dat_campo_ant,                                    nom_tabla,                                    dat_campo_des,                                    fec_evento,                                    fec_aplicativo)                           VALUES ( nov_afiliados.nextval,'32',                                    tipo_doc,                                    nro_doc,                                    Oficina,                                    Regional,                 
                   tipo_doc_usu,                                    nro_doc_usu,                                    fecha_nov,                                    'cod_profesion',                                    dato_antes,                                    'afiliados',                                    dato_despues,                                    fecha_nov,                                    fecha_sistema);
exception when others then
ROLLBACK;
                          END;
              END IF;
	    dato_antes:= :old.cod_regional;
           dato_despues:= :new.cod_regional;
           IF dato_antes != dato_despues then
              begin
                       INSERT INTO novedades_afiliados                                  ( cod_novedad_afil,nov_codigo,                                    tip_documento,                                    num_documento,                                    cod_oficina,                                    cod_regional,                                    usu_tipo_doc,                                    usu_numero_doc,                                    fec_novedad_afil,                                    
nom_campo,                                    dat_campo_ant,                                    nom_tabla,                                    dat_campo_des,                                    fec_evento,                                    fec_aplicativo)                           VALUES ( nov_afiliados.nextval,'35',                                    tipo_doc,                                    nro_doc,                                    Oficina,                                    Regional,                 
                   tipo_doc_usu,                                    nro_doc_usu,                                    fecha_nov,                                    'cod_regional',                                    dato_antes,                                    'afiliados',                                    dato_despues,                                    fecha_nov,                                    fecha_sistema);
exception when others then
ROLLBACK;
                          END;
              END IF;
	    dato_antes:= :old.cod_sexo;
           dato_despues:= :new.cod_sexo;
           IF dato_antes != dato_despues then
              begin
                       INSERT INTO novedades_afiliados                                  ( cod_novedad_afil,nov_codigo,                                    tip_documento,                                    num_documento,                                    cod_oficina,                                    cod_regional,                                    usu_tipo_doc,                                    usu_numero_doc,                                    fec_novedad_afil,                                    
nom_campo,                                    dat_campo_ant,                                    nom_tabla,                                    dat_campo_des,                                    fec_evento,                                    fec_aplicativo)                           VALUES ( nov_afiliados.nextval,'26',                                    tipo_doc,                                    nro_doc,                                    Oficina,                                    Regional,                 
                   tipo_doc_usu,                                    nro_doc_usu,                                    fecha_nov,                                    'cod_sexo',                                    dato_antes,                                    'afiliados',                                    dato_despues,                                    fecha_nov,                                    fecha_sistema);
exception when others then
ROLLBACK;
                          END;
              END IF;
	    dato_antes:=:old.cod_tipo_afil;
           dato_despues:=:new.cod_tipo_afil;
           IF dato_antes != dato_despues then
                       if (dato_antes ='C') and (dato_despues != 'C') then
                                   begin
				    SELECT COUNT(*) 				      into total
                                     FROM relacion_afiliados
                                    WHERE tip_documento_cot = tipo_doc and                                            num_documento_cot = nro_doc and                                            tip_documento_ben+num_documento_ben not in (select tip_documento_cot+num_documento_cot
                                                                                        FROM relacion_afiliados
                                                                                        WHERE tip_documento_cot = tipo_doc and                                                                                                num_documento_cot = nro_doc) and                                            cod_estado = 'A';
				    END;
                                   if total != 0 then
                                       begin
                                           ROLLBACK;
                                       END;
				    END IF;
                       END IF;
                       if (dato_antes !='C') and (dato_despues = 'C') then
                                   begin
				    UPDATE relacion_afiliados                                        SET cod_estado = 'I'
                                    WHERE tip_documento_ben = tipo_doc and                                            num_documento_ben = nro_doc and                                            cod_estado = 'A';
				    END;
                                   if total != 0 then
                                       begin
                                           ROLLBACK;
                                       END;
				    END IF;
                        END IF;
			BEGIN                         INSERT INTO novedades_afiliados                                  ( cod_novedad_afil,nov_codigo,                                    tip_documento,                                    num_documento,                                    cod_oficina,                                    cod_regional,                                    usu_tipo_doc,                                    usu_numero_doc,                                    fec_novedad_afil,                                  
  nom_campo,                                    dat_campo_ant,                                    nom_tabla,                                    dat_campo_des,                                    fec_evento,                                    fec_aplicativo)                           VALUES ( nov_afiliados.nextval,'27',                                    tipo_doc,                                    nro_doc,                                    Oficina,                                    Regional,               
                     tipo_doc_usu,                                    nro_doc_usu,                                    fecha_nov,                                    'cod_tipo_afil',                                    dato_antes,                                    'afiliados',                                    dato_despues,                                    fecha_nov,                                    fecha_sistema);
exception when others then
ROLLBACK;
                          END;
              END IF;
	    dato_antes:= :old.cod_zona;
           dato_despues:= :new.cod_zona;
           IF dato_antes != dato_despues then
              begin
                       INSERT INTO novedades_afiliados                                  ( cod_novedad_afil,nov_codigo,                                    tip_documento,                                    num_documento,                                    cod_oficina,                                    cod_regional,                                    usu_tipo_doc,                                    usu_numero_doc,                                    fec_novedad_afil,                                    
nom_campo,                                    dat_campo_ant,                                    nom_tabla,
/

create trigger "DBO".trg_Iafiliados_empresas BEFORE INSERT ON afiliados_empresas FOR EACH ROW
declare
	fecha_sistema date;
       tipo_doc varchar2(3);
       nro_doc varchar2(18);
       tipo_doc_emp varchar2(3);
       nro_doc_emp varchar2(18);
       cod_sucursal varchar2(2);
       tipo_doc_usu varchar2(3);
       nro_doc_usu varchar2(18);
       Oficina varchar(3);
       Regional varchar(3);
       Usuario varchar2(20);
begin
       fecha_sistema:=SYSDATE;
       Usuario:=USER;
       tipo_doc:=:new.tip_documento_afi;
	nro_doc:=:new.num_documento_afi;
	tipo_doc_emp:= :new.tip_documento_emp;
       nro_doc_emp:= :new.num_documento_emp;
       cod_sucursal:= :new.cod_sucursal;
	BEGIN     	SELECT cod_oficina,cod_regional,tip_documento,num_documento       	  INTO Oficina,Regional,tipo_doc_usu,nro_doc_usu       	  FROM usuarios      	 WHERE cod_usuario = Usuario;
	END;
	BEGIN                        INSERT INTO novedades_afiliados                                  ( cod_novedad_afil, 				   nov_codigo,                                    tip_documento,                                    num_documento,                                    cod_oficina,                                    cod_regional,                                    usu_tipo_doc,                                    usu_numero_doc,                                    fec_novedad_afil,                             
       nom_campo,                                    dat_campo_ant,                                    nom_tabla,                                    dat_campo_des,                                    fec_evento,                                    fec_aplicativo,                                    tip_documento_emp,                                    num_documento_emp,                                    cod_sucursal)                           VALUES ( nov_afiliados.nextval, 				   '74',                       
             tipo_doc,                                    nro_doc,                                    Oficina,                                    Regional,                                    tipo_doc_usu,                                    nro_doc_usu,                                    fecha_sistema,                                    '',                                    '',                                    'afiliados_empresas',                                    '',                                    
fecha_sistema,                                    fecha_sistema,                                    tipo_doc_emp,                                    nro_doc_emp, 	                           cod_sucursal);
			exception when others then
	   			ROLLBACK;
	END;
     END;
/

create trigger "DBO".trg_Uafiliados_empresas BEFORE UPDATE ON dbo.afiliados_empresas FOR EACH ROW
declare
   dato_antes varchar2(255);
   dato_despues  varchar2(255);
   fecha_sistema date;
   tipo_doc varchar2(3);
   nro_doc varchar2(18);
   tipo_doc_emp varchar2(3);
   nro_doc_emp varchar2(18);
   cod_sucursal varchar2(2);
   tipo_doc_usu varchar2(3);
   nro_doc_usu varchar2(18);
   Oficina varchar2(3);
   Regional varchar2(3);
   Usuario varchar2(20);
begin
   fecha_sistema:=SYSDATE;
   Usuario:=USER;
   tipo_doc:=:old.tip_documento_afi;
   nro_doc:=:old.num_documento_afi;
   tipo_doc_emp:=:old.tip_documento_emp;
   nro_doc_emp:=:old.num_documento_emp;
   cod_sucursal:=:old.cod_sucursal;
    begin
   SELECT cod_oficina,cod_regional,tip_documento,num_documento       INTO Oficina,Regional,tipo_doc_usu,nro_doc_usu
     FROM usuarios
    WHERE cod_usuario = Usuario;
         
exception
when others then
	   	ROLLBACK;
    END;
		dato_antes:=:old.cod_ciudad_lab;
               dato_despues:=:new.cod_ciudad_lab;
           IF dato_antes != dato_despues then
              begin
                       INSERT INTO novedades_afiliados                                  ( cod_novedad_afil,nov_codigo,                                    tip_documento,                                    num_documento,                                    cod_oficina,                                    cod_regional,                                    usu_tipo_doc,                                    usu_numero_doc,                                    fec_novedad_afil,                                    
nom_campo,                                    dat_campo_ant,                                    nom_tabla,                                    dat_campo_des,                                    fec_evento,                                    fec_aplicativo,                                    tip_documento_emp,                                    num_documento_emp,                                    cod_sucursal )                           VALUES ( nov_afiliados.nextval,'51',                                    
tipo_doc,                                    nro_doc,                                    Oficina,                                    Regional,                                    tipo_doc_usu,                                    nro_doc_usu,                                    fecha_sistema,                                    'cod_ciudad_lab',                                    dato_antes,                                    'afiliados_empresas',                                    dato_despues,                 
                   fecha_sistema,                                    fecha_sistema,                                    tipo_doc_emp,                                    nro_doc_emp,                                    cod_sucursal);
				exception when others then
	   			ROLLBACK;
              END;
	END IF;
	    dato_antes:=:old.cod_departamento_lab;
           dato_despues:=:new.cod_departamento_lab;
           IF dato_antes != dato_despues then
              begin
                       INSERT INTO novedades_afiliados                                  ( cod_novedad_afil,nov_codigo,                                    tip_documento,                                    num_documento,                                    cod_oficina,                                    cod_regional,                                    usu_tipo_doc,                                    usu_numero_doc,                                    fec_novedad_afil,                                    
nom_campo,                                    dat_campo_ant,                                    nom_tabla,                                    dat_campo_des,                                    fec_evento,                                    fec_aplicativo,                                    tip_documento_emp,                                    num_documento_emp,                                    cod_sucursal )                           VALUES ( nov_afiliados.nextval,'50',                                    
tipo_doc,                                    nro_doc,                                    Oficina,                                    Regional,                                    tipo_doc_usu,                                    nro_doc_usu,                                    fecha_sistema,                                    'cod_departamento_lab',                                    dato_antes,                                    'afiliados_empresas',                                    dato_despues,           
                         fecha_sistema,                                    fecha_sistema,                                    tipo_doc_emp,                                    nro_doc_emp,                                    cod_sucursal);
           			exception when others then
	   			   ROLLBACK;
                 END;
	END IF;
	    dato_antes:=:old.dir_afiliado_lab;
           dato_despues:=:new.dir_afiliado_lab;
           IF dato_antes != dato_despues then
              begin
                       INSERT INTO novedades_afiliados                                  ( cod_novedad_afil,nov_codigo,                                    tip_documento,                                    num_documento,                                    cod_oficina,                                    cod_regional,                                    usu_tipo_doc,                                    usu_numero_doc,                                    fec_novedad_afil,                                    
nom_campo,                                    dat_campo_ant,                                    nom_tabla,                                    dat_campo_des,                                    fec_evento,                                    fec_aplicativo,                                    tip_documento_emp,                                    num_documento_emp,                                    cod_sucursal )                           VALUES ( nov_afiliados.nextval,'63',                                    
tipo_doc,                                    nro_doc,                                    Oficina,                                    Regional,                                    tipo_doc_usu,                                    nro_doc_usu,                                    fecha_sistema,                                    'dir_afiliado_lab',                                    dato_antes,                                    'afiliados_empresas',                                    dato_despues,               
                     fecha_sistema,                                    fecha_sistema,                                    tipo_doc_emp,                                    nro_doc_emp,                                    cod_sucursal);
				exception when others then
	   			   ROLLBACK;
                          END ;
              END IF;
	    dato_antes:=:old.tel_afiliado_lab;
           dato_despues:=:new.tel_afiliado_lab;
           IF dato_antes != dato_despues then
              begin
                       INSERT INTO novedades_afiliados                                  ( cod_novedad_afil,nov_codigo,                                    tip_documento,                                    num_documento,                                    cod_oficina,                                    cod_regional,                                    usu_tipo_doc,                                    usu_numero_doc,                                    fec_novedad_afil,                                    
nom_campo,                                    dat_campo_ant,                                    nom_tabla,                                    dat_campo_des,                                    fec_evento,                                    fec_aplicativo,                                    tip_documento_emp,                                    num_documento_emp,                                    cod_sucursal )                           VALUES ( nov_afiliados.nextval,'64',                                    
tipo_doc,                                    nro_doc,                                    Oficina,                                    Regional,                                    tipo_doc_usu,                                    nro_doc_usu,                                    fecha_sistema,                                    'tel_afiliado_lab',                                    dato_antes,                                    'afiliados_empresas',                                    dato_despues,               
                     fecha_sistema,                                    fecha_sistema,                                    tipo_doc_emp,                                    nro_doc_emp, 	                           cod_sucursal);
       			 exception when others then
	   			   ROLLBACK;
                      END;
              END IF;
	    dato_antes:=:old.tel_afiliado_lab2;
           dato_despues:=:new.tel_afiliado_lab2;
           IF dato_antes != dato_despues then
              begin
                       INSERT INTO novedades_afiliados                                  ( cod_novedad_afil,nov_codigo,                                    tip_documento,                                    num_documento,                                    cod_oficina,                                    cod_regional,                                    usu_tipo_doc,                                    usu_numero_doc,                                    fec_novedad_afil,                                    
nom_campo,                                    dat_campo_ant,                                    nom_tabla,                                    dat_campo_des,                                    fec_evento,                                    fec_aplicativo,                                    tip_documento_emp,                                    num_documento_emp,                                    cod_sucursal)                           VALUES ( nov_afiliados.nextval,'65',                                    
tipo_doc,                                    nro_doc,                                    Oficina,                                    Regional,                                    tipo_doc_usu,                                    nro_doc_usu,                                    fecha_sistema,                                    'tel_afiliado_lab2',                                    dato_antes,                                    'afiliados_empresas',                                    dato_despues,              
                      fecha_sistema,                                    fecha_sistema,                                    tipo_doc_emp,                                    nro_doc_emp,                                    cod_sucursal);
				exception when others then
	   			   ROLLBACK;
                          END;
              END IF;
	    dato_antes:=:old.cod_estado;
           dato_despues:=:new.cod_estado;
           IF dato_antes != dato_despues then
              begin
                           INSERT INTO novedades_afiliados                                          ( cod_novedad_afil,nov_codigo,                                            tip_documento,                                            num_documento,                                            cod_oficina,                                            cod_regional,                                            usu_tipo_doc,                                            usu_numero_doc,                                     
       fec_novedad_afil,                                            nom_campo,                                            dat_campo_ant,                                            nom_tabla,                                            dat_campo_des,                                            fec_evento,                                            fec_aplicativo,                                            tip_documento_emp,                                            num_documento_emp,                          
                  cod_sucursal)                                   VALUES ( nov_afiliados.nextval,'75',                                            tipo_doc,                                            nro_doc,                                            Oficina,                                            Regional,                                            tipo_doc_usu,                                            nro_doc_usu,                                            fecha_sistema,                             
               'cod_estado',                                            dato_antes,                                            'afiliados_empresas',                                            dato_despues,                                            fecha_sistema,                                            fecha_sistema,                                            tipo_doc_emp,                                            nro_doc_emp, 		                          cod_sucursal);
	               			exception when others then
	   			   		ROLLBACK;
                                  END;
              END IF;
	    dato_antes:=:old.cod_ocupacion;
           dato_despues:=:new.cod_ocupacion;
           IF dato_antes != dato_despues then
              begin
                           INSERT INTO novedades_afiliados                                          ( cod_novedad_afil,nov_codigo,                                            tip_documento,                                            num_documento,                                            cod_oficina,                                            cod_regional,                                            usu_tipo_doc,                                            usu_numero_doc,                                     
       fec_novedad_afil,                                            nom_campo,                                            dat_campo_ant,                                            nom_tabla,                                            dat_campo_des,                                            fec_evento,                                            fec_aplicativo,                                            tip_documento_emp,                                            num_documento_emp,                          
                  cod_sucursal)                                   VALUES ( nov_afiliados.nextval,'76',                                            tipo_doc,                                            nro_doc,                                            Oficina,                                            Regional,                                            tipo_doc_usu,                                            nro_doc_usu,                                            fecha_sistema,                             
               'cod_ocupacion',                                            dato_antes,                                            'afiliados_empresas',                                            dato_despues,                                            fecha_sistema,                                            fecha_sistema,                                            tipo_doc_emp,                                            nro_doc_emp,                                            cod_sucursal);
	               			exception when others then
	   			   		ROLLBACK;
                                  END;
              END IF;
	    dato_antes:=:old.val_sueldo_afil;
           dato_despues:=:new.val_sueldo_afil;
           IF dato_antes != dato_despues then
              begin
                           INSERT INTO novedades_afiliados                                          ( cod_novedad_afil,nov_codigo,                                            tip_documento,                                            num_documento,                                            cod_oficina,                                            cod_regional,                                            usu_tipo_doc,                                            usu_numero_doc,                                     
       fec_novedad_afil,                                            nom_campo,                                            dat_campo_ant,                                            nom_tabla,                                            dat_campo_des,                                            fec_evento,                                            fec_aplicativo,                                            tip_documento_emp,                                            num_documento_emp,                          
                  cod_sucursal)                                   VALUES ( nov_afiliados.nextval,'04',                                            tipo_doc,                                            nro_doc,                                            Oficina,                                            Regional,                                            tipo_doc_usu,                                            nro_doc_usu,                                            fecha_sistema,                             
               'val_sueldo_afil',                                            dato_antes,                                            'afiliados_empresas',                                            dato_despues,                                            fecha_sistema,                                            fecha_sistema,                                            tipo_doc_emp,                                            nro_doc_emp,                                            cod_sucursal);
	               			exception when others then
	   			   		ROLLBACK;
                                  END;
              END IF;
	    dato_antes:=:old.fec_ingreso_uni;
           dato_despues:=:old.fec_ingreso_uni;
           IF dato_antes != dato_despues then
              begin
                           INSERT INTO novedades_afiliados                                          ( cod_novedad_afil,nov_codigo,                                            tip_documento,                                            num_documento,                                            cod_oficina,                                            cod_regional,                                            usu_tipo_doc,                                            usu_numero_doc,                                     
       fec_novedad_afil,                                            nom_campo,                                            dat_campo_ant,                                            nom_tabla,                                            dat_campo_des,                                            fec_evento,                                            fec_aplicativo,                                            tip_documento_emp,                                            num_documento_emp,                          
                  cod_sucursal)                                   VALUES ( nov_afiliados.nextval,'77',                                            tipo_doc,                                            nro_doc,                                            Oficina,                                            Regional,                                            tipo_doc_usu,                                            nro_doc_usu,                                            fecha_sistema,                             
               'fec_ingreso_uni',                                            dato_antes,                                            'afiliados_empresas',                                            dato_despues,                                            fecha_sistema,                                            fecha_sistema,                                            tipo_doc_emp,                                            nro_doc_emp,                                            cod_sucursal);
	               			exception when others then
	   			   		ROLLBACK;
                END;
              END IF;
	    dato_antes:=:old.fec_egreso_uni;
           dato_despues:=:new.fec_egreso_uni;
           IF dato_antes != dato_despues then
              begin
                           INSERT INTO novedades_afiliados                                          ( cod_novedad_afil,nov_codigo,                                            tip_documento,                                            num_documento,                                            cod_oficina,                                            cod_regional,                                            usu_tipo_doc,                                            usu_numero_doc,                                     
       fec_novedad_afil,                                            nom_campo,                                            dat_campo_ant,                                            nom_tabla,                                            dat_campo_des,                                            fec_evento,                                            fec_aplicativo,                                            tip_documento_emp,                                            num_documento_emp,                          
                  cod_sucursal)                                   VALUES ( nov_afiliados.nextval,'78',                                            tipo_doc,                                            nro_doc,                                            Oficina,                                            Regional,                                            tipo_doc_usu,                                            nro_doc_usu,                                            fecha_sistema,                             
               'fec_egreso_uni',                                            dato_antes,                                            'afiliados_empresas',                                            dato_despues,                                            fecha_sistema,                                            fecha_sistema,                                            tipo_doc_emp,                                            nro_doc_emp,                                            cod_sucursal);
	               			exception when others then
	   			   		ROLLBACK;
                                  END;
              END IF;
	    dato_antes:=:old.cod_tipo_sal;
           dato_despues:=:new.cod_tipo_sal;
           IF dato_antes != dato_despues then
              begin
                           INSERT INTO novedades_afiliados                                          ( cod_novedad_afil,nov_codigo,                                            tip_documento,                                            num_documento,                                            cod_oficina,                                            cod_regional,                                            usu_tipo_doc,                                            usu_numero_doc,                                     
       fec_novedad_afil,                                            nom_campo,                                            dat_campo_ant,                                            nom_tabla,                                            dat_campo_des,                                            fec_evento,                                            fec_aplicativo,                                            tip_documento_emp,                                            num_documento_emp,                          
                  cod_sucursal)                                   VALUES ( nov_afiliados.nextval,'79',                                            tipo_doc,                                            nro_doc,                                            Oficina,                                            Regional,                                            tipo_doc_usu,                                            nro_doc_usu,                                            fecha_sistema,                             
               'cod_tipo_sal',                                            dato_antes,                                            'afiliados_empresas',                                            dato_despues,                                            fecha_sistema,                                            fecha_sistema,                                            tipo_doc_emp,                                            nro_doc_emp,                                            cod_sucursal);
	               			exception when others then
	   			   		ROLLBACK;
                                  END  ;
              END IF;
	    dato_antes:=:old.cod_zona;
           dato_despues:=:new.cod_zona;
           IF dato_antes != dato_despues then
              begin
                           INSERT INTO novedades_afiliados                                          ( cod_novedad_afil,nov_codigo,                                            tip_documento,                                            num_documento,                                            cod_oficina,                                            cod_regional,                                            usu_tipo_doc,                                            usu_numero_doc,                                     
       fec_novedad_afil,                                            nom_campo,                                            dat_campo_ant,                                            nom_tabla,                                            dat_campo_des,                                            fec_evento,                                            fec_aplicativo,                                            tip_documento_emp,                                            num_documento_emp,                          
                  cod_sucursal)                                   VALUES ( nov_afiliados.nextval,'80',                                            tipo_doc,                                            nro_doc,                                            Oficina,                                            Regional,                                            tipo_doc_usu,                                            nro_doc_usu,                                            fecha_sistema,                             
               'cod_zona',                                            dato_antes,                                            'afiliados_empresas',                                            dato_despues,                                            fecha_sistema,                                            fecha_sistema,                                            tipo_doc_emp,                                            nro_doc_emp,                                            cod_sucursal);
	               			exception when others then
	   			   		ROLLBACK;
                                  END;
              END  IF;
END;
/

