SELECT afiliados.cod_regional,autoliquidacion.per_presentacion AS Perido_Presentacion,count(autoliquidacion.per_presentacion) as Total_de_Afiliados_Pagaron,sum(tot_pagado) AS Valor_Total_Pagado, sum(CASE WHEN autoliquidacion.est_planilla = 'COM' THEN 1 ELSE 0 END) AS Total_de_Afiliados_Compensaron
FROM relacion_afiliados (INDEX pk_relacion_afiliados),afiliados,autoliquidacion (INDEX autoliquid_6859615201),det_planilla_autoliquidacion 
WHERE  ((afiliados.tip_documento = relacion_afiliados.tip_documento_ben) AND
       (afiliados.num_documento = relacion_afiliados.num_documento_ben)) AND
       ((relacion_afiliados.tip_documento_cot = det_planilla_autoliquidacion.afi_tipo_doc) AND
       (relacion_afiliados.num_documento_cot = det_planilla_autoliquidacion.afi_numero_doc )) AND
       (det_planilla_autoliquidacion.num_planilla = autoliquidacion.num_planilla) AND
       per_cotizacion like "%11/2001%" 
GROUP BY afiliados.cod_regional,autoliquidacion.per_presentacion
ORDER BY afiliados.cod_regional,convert(datetime,'01/'+autoliquidacion.per_presentacion)





