SELECT det_planilla_autoliquidacion.num_planilla,det_planilla_autoliquidacion.afi_tipo_doc,det_planilla_autoliquidacion.afi_numero_doc ,det_planilla_autoliquidacion.per_presentacion AS Perido_Presentacion,det_planilla_autoliquidacion.per_cotizacion AS Periodo_Cotizacion,autoliquidacion.est_planilla
FROM autoliquidacion (INDEX autoliquid_6859615201),det_planilla_autoliquidacion 
WHERE  det_planilla_autoliquidacion.num_planilla = autoliquidacion.num_planilla  AND
       det_planilla_autoliquidacion.per_presentacion like "%2001%"  AND autoliquidacion.est_planilla <> 'COM'       








