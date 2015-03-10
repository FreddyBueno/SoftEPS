SELECT det_planilla_autoliquidacion.num_planilla, autoliquidacion.emp_tipo_doc, autoliquidacion.emp_numero_doc, empresas.nom_empresa, empresas.cod_actividad_eco, empresas.tip_aportante, empresas.dir_empresa,  empresas.cod_departamento, empresas.cod_ciudad, det_planilla_autoliquidacion.afi_tipo_doc, det_planilla_autoliquidacion.afi_numero_doc,
afiliados.pri_nombre, afiliados.seg_nombre,afiliados.pri_apellido, afiliados.seg_apellido,autoliquidacion.per_cotizacion, autoliquidacion.per_presentacion,
det_planilla_autoliquidacion.ing_base_cot,det_planilla_autoliquidacion.cot_obligatoria, autoliquidacion.tot_aporte_per
FROM afiliados,empresas, autoliquidacion, det_planilla_autoliquidacion
WHERE (det_planilla_autoliquidacion.num_planilla = autoliquidacion.num_planilla ) AND 
           ((autoliquidacion.emp_tipo_doc = empresas.tip_documento) AND 
            (autoliquidacion.emp_numero_doc = empresas.num_documento) AND
            (autoliquidacion.cod_sucursal = empresas.cod_sucursal)) AND
	    ((det_planilla_autoliquidacion.afi_tipo_doc = afiliados.tip_documento) AND
            (det_planilla_autoliquidacion.afi_numero_doc = afiliados.num_documento)) AND
            (autoliquidacion.per_presentacion = "11/2001" AND
            autoliquidacion.est_planilla = "CIE")












