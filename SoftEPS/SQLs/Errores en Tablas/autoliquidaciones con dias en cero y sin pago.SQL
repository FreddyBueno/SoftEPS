SELECT det_planilla_autoliquidacion.num_planilla,det_planilla_autoliquidacion.afi_tipo_doc,det_planilla_autoliquidacion.afi_numero_doc,det_planilla_autoliquidacion.dia_cotizados,det_planilla_autoliquidacion.cot_obligatoria,afiliados.pri_apellido,afiliados.seg_apellido,afiliados.pri_nombre,afiliados.seg_nombre,afiliados.cod_regional
FROM det_planilla_autoliquidacion, afiliados
WHERE convert(integer,det_planilla_autoliquidacion.dia_cotizados) < convert(integer,'1' )  AND det_planilla_autoliquidacion.cot_obligatoria = 0 AND det_planilla_autoliquidacion.afi_tipo_doc=afiliados.tip_documento AND afi_numero_doc =afiliados.num_documento
ORDER BY afiliados.cod_regional
 



