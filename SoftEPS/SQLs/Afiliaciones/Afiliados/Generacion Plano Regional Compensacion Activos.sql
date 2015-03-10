TRUNCATE TABLE temporales;

INSERT INTO temporales (campo1,campo2,campo3,campo4,campo5) 
SELECT det_planilla_autoliquidacion.afi_tipo_doc,det_planilla_autoliquidacion.afi_numero_doc,autoliquidacion.num_planilla,autoliquidacion.per_cotizacion,autoliquidacion.per_presentacion
FROM    autoliquidacion,det_planilla_autoliquidacion
WHERE  (det_planilla_autoliquidacion.num_planilla = autoliquidacion.num_planilla) AND
       autoliquidacion.per_cotizacion = "12/2001";


DECLARE @Fecha_Corte VARCHAR(26)
SELECT  @Fecha_Corte="01/01/2002"
SELECT tip_documento_emp, num_documento_emp, tip_documento_cot, num_documento_cot, tip_documento, num_documento, cod_tipo_afil,
 pri_apellido, seg_apellido, pri_nombre, seg_nombre, dir_afiliado_res, tel_afiliado_res, cod_departamento_res, cod_ciudad_res, afiliados.cod_regional, fec_nacimiento,
cod_sexo, fec_afiliacion_sis, cod_estrato, cod_parentesco, relacion_afiliados.cod_estado
FROM afiliados,relacion_afiliados (INDEX pk_relacion_afiliados) ,afiliados_empresas,ciudades(INDEX pk_ciudades),temporales
WHERE((afiliados.tip_documento = relacion_afiliados.tip_documento_ben) AND
              (afiliados.num_documento = relacion_afiliados.num_documento_ben)) AND
              ((relacion_afiliados.tip_documento_cot = afiliados_empresas.tip_documento_afi ) AND
              (relacion_afiliados.num_documento_cot = afiliados_empresas.num_documento_afi )) AND
              ((afiliados.cod_departamento_res = ciudades.cod_departamento) AND
              (afiliados.cod_ciudad_res = ciudades.cod_ciudad)) AND
              ((relacion_afiliados.tip_documento_cot = temporales.campo1) AND
              (relacion_afiliados.num_documento_cot = temporales.campo2)) AND
                      ((fec_exclusion_nov <> null AND 
          fec_inclusion_nov <= convert(datetime,@Fecha_Corte,103)  AND
          fec_exclusion_nov >= convert(datetime,@Fecha_Corte,103)) OR

          (fec_exclusion_nov = null AND 
          fec_inclusion_nov <= convert(datetime,@Fecha_Corte,103))) AND
              afiliados.cod_regional = "301" 









