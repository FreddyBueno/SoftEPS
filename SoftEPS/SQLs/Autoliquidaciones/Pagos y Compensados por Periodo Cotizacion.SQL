SELECT per_cotizacion AS Periodo_Cotizacion,count(*) as Total_de_Afiliados_Pagaron, sum(CASE WHEN det_estado = 'COM' THEN 1 ELSE 0 END) AS Total_de_Afiliados_Compensaron
FROM relacion_afiliados (INDEX pk_relacion_afiliados),afiliados,det_planilla_autoliquidacion 
WHERE  ((afiliados.tip_documento = relacion_afiliados.tip_documento_ben) AND
       (afiliados.num_documento = relacion_afiliados.num_documento_ben)) AND
       ((relacion_afiliados.tip_documento_cot = det_planilla_autoliquidacion.afi_tipo_doc) AND
       (relacion_afiliados.num_documento_cot = det_planilla_autoliquidacion.afi_numero_doc )) AND
       per_cotizacion like "%2001%"   AND afiliados.cod_estado='A' AND relacion_afiliados.cod_estado='A'          
GROUP BY per_cotizacion










