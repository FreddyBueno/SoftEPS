DECLARE @Fecha_Corte VARCHAR(26)
SELECT  @Fecha_Corte="01/01/2001"
SELECT distinct cod_departamento_res,nom_departamento,cod_ciudad_res,nom_ciudad,cod_sexo,count(*) AS Total_Afiliados
FROM afiliados,ciudades,departamentos,relacion_afiliados
WHERE ciudades.cod_departamento=afiliados.cod_departamento_res and
               ciudades.cod_ciudad=afiliados.cod_ciudad_res and
	departamentos.cod_departamento=afiliados.cod_departamento_res AND
         ((afiliados.tip_documento = relacion_afiliados.tip_documento_ben) AND
         (afiliados.num_documento = relacion_afiliados.num_documento_ben)) AND

        ((fec_exclusion_nov <> null AND 
          fec_inclusion_nov <= convert(datetime,@Fecha_Corte,103)  AND
          fec_exclusion_nov >= convert(datetime,@Fecha_Corte,103)) OR

          (fec_exclusion_nov = null AND 
          fec_inclusion_nov <= convert(datetime,@Fecha_Corte,103)))
GROUP BY cod_departamento_res,nom_departamento,cod_ciudad_res,nom_ciudad,cod_sexo



