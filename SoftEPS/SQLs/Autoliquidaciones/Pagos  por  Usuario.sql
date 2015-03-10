select det_planilla_autoliquidacion.num_planilla,fec_pago,det_planilla_autoliquidacion.per_cotizacion,emp_tipo_doc,emp_numero_doc,nov_ing,nov_ret,
nov_tda,nov_taa,nov_vsp,nov_vst,nov_sln,nov_ige,nov_lma,nov_vac,dia_cotizados,ing_base_cot,cot_obligatoria
from autoliquidacion(index ix_num_planilla_int_mora),det_planilla_autoliquidacion(index pkdocumento)
where autoliquidacion.num_planilla = det_planilla_autoliquidacion.num_planilla
and afi_tipo_doc = "tipo" and afi_numero_doc = "numero" order by fec_pago