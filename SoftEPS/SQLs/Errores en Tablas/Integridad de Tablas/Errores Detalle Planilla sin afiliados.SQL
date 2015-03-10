SELECT*
FROM det_planilla_autoliquidacion
WHERE  (SELECT count(*) FROM afiliados WHERE afiliados.tip_documento=det_planilla_autoliquidacion.afi_tipo_doc
                                                                                     AND afiliados.num_documento=det_planilla_autoliquidacion.afi_numero_doc) = 0 
                                                                                     






