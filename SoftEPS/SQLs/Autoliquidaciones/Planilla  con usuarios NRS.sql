select det_planilla_autoliquidacion.* from det_planilla_autoliquidacion,autoliquidacion
where det_estado = 'NRS' and det_planilla_autoliquidacion.per_presentacion = "03/2002" and 
det_planilla_autoliquidacion.num_planilla = autoliquidacion.num_planilla
and cod_regional = "101"