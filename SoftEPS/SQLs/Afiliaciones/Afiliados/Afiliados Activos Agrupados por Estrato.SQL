DECLARE @Fecha_Corte VARCHAR(26)
SELECT  @Fecha_Corte="01/06/2001"
SELECT cod_estrato,count(*) As Total_de_Afiliados
FROM afiliados,relacion_afiliados 
WHERE   ((afiliados.tip_documento = relacion_afiliados.tip_documento_ben) AND
         (afiliados.num_documento = relacion_afiliados.num_documento_ben)) AND

        ((fec_exclusion_nov <> null AND 
          fec_inclusion_nov <= convert(datetime,@Fecha_Corte,103)  AND
          fec_exclusion_nov >= convert(datetime,@Fecha_Corte,103)) OR

          (fec_exclusion_nov = null AND 
          fec_inclusion_nov <= convert(datetime,@Fecha_Corte,103)))
GROUP BY cod_estrato


