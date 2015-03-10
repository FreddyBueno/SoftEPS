SELECT afi_tipo_doc,afi_numero_doc,fec_afiliacion_uni,per_presentacion,per_cotizacion,det_estado
FROM   det_planilla_autoliquidacion,afiliados
WHERE  ((det_planilla_autoliquidacion.afi_tipo_doc = afiliados.tip_documento AND
       det_planilla_autoliquidacion.afi_numero_doc = afiliados.num_documento) AND
       CONVERT(datetime,"28/"+per_presentacion,103) < fec_afiliacion_uni)
       
