SELECT num_documento,tip_documento,fec_nacimiento,pri_apellido,seg_apellido,pri_nombre,seg_nombre,fec_afiliacion_sis,fec_afiliacion_uni,cod_departamento_res,cod_ciudad_res,cod_sexo,cod_modalidad_tra, 'C' AS regimen,afiliados.cod_regional
FROM afiliados,relacion_afiliados,det_planilla_autoliquidacion (INDEX pk_det_planilla_autoliquidacio)
WHERE  ((afiliados.tip_documento = relacion_afiliados.tip_documento_ben) AND
       (afiliados.num_documento = relacion_afiliados.num_documento_ben)) AND
       ((relacion_afiliados.tip_documento_cot = det_planilla_autoliquidacion.afi_tipo_doc) AND
       (relacion_afiliados.num_documento_cot = det_planilla_autoliquidacion.afi_numero_doc )) AND
       per_presentacion like "%12/2001%"   and tip_declaracion = 'D'   and relacion_afiliados.cod_estado='A'   AND afiliados.cod_estado ='A'  
ORDER BY cod_regional












