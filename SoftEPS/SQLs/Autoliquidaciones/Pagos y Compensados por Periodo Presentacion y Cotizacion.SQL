TRUNCATE TABLE temporales;

INSERT INTO temporales (campo1,campo2,campo3,campo4) 
SELECT  relacion_afiliados.tip_documento_cot,relacion_afiliados.num_documento_cot,afiliados.cod_estado,'0'
FROM    afiliados,relacion_afiliados
WHERE   ((afiliados.tip_documento = relacion_afiliados.tip_documento_ben) AND
         (afiliados.num_documento = relacion_afiliados.num_documento_ben)) AND

        ((fec_exclusion_nov <> null AND 
           fec_inclusion_nov <= convert(datetime,"01/01/2002",103)  AND
          fec_exclusion_nov >= convert(datetime,"01/01/2002",103)) OR

          (fec_exclusion_nov = null AND 
          fec_inclusion_nov <= convert(datetime,"01/01/2002",103)));

SELECT per_presentacion AS Perido_Presentacion,per_cotizacion AS Perido_Cotizacion,count(*) as Pagaron, sum(CASE WHEN det_estado = 'COM' THEN 1 ELSE 0 END) AS Compensaron
FROM temporales,det_planilla_autoliquidacion 
WHERE  ((det_planilla_autoliquidacion.afi_tipo_doc *=campo1) AND
                (det_planilla_autoliquidacion.afi_numero_doc *=campo2 )) AND
                per_presentacion like "%12/2001%"             
GROUP BY per_presentacion,per_cotizacion
ORDER BY convert(datetime,'01/'+per_presentacion,103),convert(datetime,'01/'+per_cotizacion,103)









