select * from autoliquidacion, det_planilla_autoliquidacion 
where det_planilla_autoliquidacion.Per_presentacion="12/2000"
  and autoliquidacion.num_planilla = det_planilla_autoliquidacion.num_planilla
order by fec_pago







