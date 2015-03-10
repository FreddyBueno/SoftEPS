DECLARE @Fecha_Corte VARCHAR(26)
SELECT  @Fecha_Corte="01/01/2001"
SELECT cod_departamento_res, nom_departamento, cod_tipo_afil,count(*) AS Afiliados_Activos 
FROM afiliados, departamentos,relacion_afiliados 
WHERE afiliados.cod_departamento_res = departamentos.cod_departamento AND 
               ((afiliados.tip_documento = relacion_afiliados.tip_documento_ben) AND
         (afiliados.num_documento = relacion_afiliados.num_documento_ben)) AND

        ((fec_exclusion_nov <> null AND 
          fec_inclusion_nov <= convert(datetime,@Fecha_Corte,103)  AND
          fec_exclusion_nov >= convert(datetime,@Fecha_Corte,103)) OR

          (fec_exclusion_nov = null AND 
          fec_inclusion_nov <= convert(datetime,@Fecha_Corte,103)))
GROUP BY cod_departamento_res, nom_departamento,cod_tipo_afil
ORDER BY  cod_departamento_res, nom_departamento,cod_tipo_afil






