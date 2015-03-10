TRUNCATE TABLE temporales;
TRUNCATE TABLE temporales2
TRUNCATE TABLE temporales3;

DECLARE @Periodo_Corte VARCHAR(26)
SELECT  @Periodo_Corte="01/2002"
INSERT INTO temporales (campo1,campo2,campo3,campo4,campo5) 
SELECT det_planilla_autoliquidacion.afi_tipo_doc,det_planilla_autoliquidacion.afi_numero_doc,autoliquidacion.num_planilla,autoliquidacion.per_cotizacion,autoliquidacion.per_presentacion
FROM    autoliquidacion,det_planilla_autoliquidacion
WHERE  (det_planilla_autoliquidacion.num_planilla = autoliquidacion.num_planilla) AND
autoliquidacion.per_presentacion = @Periodo_Corte

DECLARE @Fecha_Corte VARCHAR(26)
SELECT  @Fecha_Corte='26/'+@Periodo_Corte
INSERT INTO temporales2 (campo1,campo2,campo3,campo4,campo5)
SELECT  tip_documento_cot,num_documento_cot,tip_documento_ben,num_documento_ben,cod_parentesco
FROM     relacion_afiliados
WHERE  ((fec_exclusion_nov <> null AND 
                fec_inclusion_nov <= convert(datetime,@Fecha_Corte,103)  AND
                fec_exclusion_nov >= convert(datetime,@Fecha_Corte,103)) OR

                (fec_exclusion_nov = null AND 
                fec_inclusion_nov <= convert(datetime,@Fecha_Corte,103)))

INSERT INTO temporales3 (campo1,campo2,campo3,campo4)
SELECT  tip_documento_afi,num_documento_afi,tip_documento_emp,num_documento_emp
FROM    afiliados_empresas
WHERE   ((fec_egreso_uni <> null AND 
                fec_ingreso_uni <= convert(datetime,@Fecha_Corte,103)  AND
                fec_egreso_uni >= convert(datetime,@Fecha_Corte,103)) OR

                (fec_egreso_uni = null AND 
                fec_ingreso_uni <= convert(datetime,@Fecha_Corte,103)))  ;

SELECT DISTINCT temporales.campo5 AS Per_Presentacion, temporales3.campo3 AS Tipo_Doc_Empr, temporales3.campo4 AS Num_Doc_Empr, 
               temporales2.campo1 AS Tipo_Doc_Cot, temporales2.campo2 AS Num_Doc_Cot, 
               tip_documento AS Tipo_Doc_Ben, num_documento AS Num_Doc_Ben, 
               cod_tipo_afil AS Tipo_Afiliado,  pri_apellido, seg_apellido, pri_nombre, seg_nombre, 
               dir_afiliado_res, tel_afiliado_res, cod_departamento_res, cod_ciudad_res,  ciudades.cod_regional AS Regional_Residencia, afiliados.cod_regional AS Regional_Compensacion, fec_nacimiento,
               cod_sexo, fec_afiliacion_sis, cod_estrato, temporales2.campo5 AS Cod_Parentesco
FROM afiliados, temporales3, temporales2 ,ciudades(INDEX pk_ciudades),temporales
WHERE((afiliados.tip_documento = temporales2.campo3) AND
              (afiliados.num_documento = temporales2.campo4)) AND
              ((temporales2.campo1 = temporales3.campo1 ) AND
               (temporales2.campo2  = temporales3.campo2)) AND
              ((afiliados.cod_departamento_res = ciudades.cod_departamento) AND
              (afiliados.cod_ciudad_res = ciudades.cod_ciudad)) AND
              ((temporales.campo1 = temporales2.campo1) AND
              (temporales.campo2 = temporales2.campo2 )) AND
              ciudades.cod_regional = "301"  





