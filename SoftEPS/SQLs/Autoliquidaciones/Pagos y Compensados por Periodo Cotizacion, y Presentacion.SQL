SELECT det_planilla_autoliquidacion.per_cotizacion AS Periodo_Cotizacion,det_planilla_autoliquidacion.per_presentacion AS Perido_Presentacion,count(det_planilla_autoliquidacion.per_presentacion) as Total_de_Afiliados_Pagaron, sum(CASE WHEN det_planilla_autoliquidacion.det_estado = 'COM' THEN 1 ELSE 0 END) AS Total_de_Afiliados_Compensaron
FROM det_planilla_autoliquidacion 
WHERE det_planilla_autoliquidacion.per_cotizacion like "%11/2001%"         
GROUP BY det_planilla_autoliquidacion.per_cotizacion,det_planilla_autoliquidacion.per_presentacion
