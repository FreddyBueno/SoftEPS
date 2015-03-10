SELECT 
 det_planilla_autoliquidacion.per_cotizacion,
 det_planilla_autoliquidacion.cot_obligatoria, 
 det_planilla_autoliquidacion.dia_cotizados,
 det_planilla_autoliquidacion.ing_base_cot,
 det_planilla_autoliquidacion.nov_sln,
 det_planilla_autoliquidacion.num_planilla,
 det_planilla_autoliquidacion.nov_lma,
 det_planilla_autoliquidacion.val_licencia_mat,
 det_planilla_autoliquidacion.nov_ige,
 det_planilla_autoliquidacion.val_incapacidad_egr,
 det_planilla_autoliquidacion.val_upc_adi,
 det_planilla_autoliquidacion.afi_tipo_doc,
 det_planilla_autoliquidacion.afi_numero_doc,
 autoliquidacion.tip_declaracion,
 autoliquidacion.fec_digitacion,
 autoliquidacion.emp_tipo_doc,
 autoliquidacion.emp_numero_doc,
 relacion_afiliados.tip_documento_ben,
 relacion_afiliados.num_documento_ben,
 relacion_afiliados.fec_inclusion_nov,
 relacion_afiliados.cod_parentesco,
 afiliados.fec_nacimiento,
 afiliados.cod_sexo,
 afiliados.cod_tipo_afil,
 afiliados.cod_modalidad_tra,
 ciudades.por_alto_rie
FROM DET_PLANILLA_AUTOLIQUIDACION ,AUTOLIQUIDACION, RELACION_AFILIADOS, AFILIADOS,CIUDADES 
WHERE (DET_PLANILLA_AUTOLIQUIDACION.PER_PRESENTACION ='01/2003') 
   AND (DET_ESTADO = 'CIE') 
   AND (FEC_DIGITACION >='01/01/2002') 
   AND (FEC_DIGITACION <= '16/01/2003') 
   AND (DET_PLANILLA_AUTOLIQUIDACION.NUM_PLANILLA = AUTOLIQUIDACION.NUM_PLANILLA) 
   AND (AFI_NUMERO_DOC = NUM_DOCUMENTO_COT)
   AND (FEC_INCLUSION_NOV > TO_DATE('01/'||DET_PLANILLA_AUTOLIQUIDACION.PER_COTIZACION,'DD/MM/YYYY') OR FEC_EXCLUSION_NOV IS NULL) 
   AND (NUM_DOCUMENTO_BEN||DET_PLANILLA_AUTOLIQUIDACION.NUM_PLANILLA NOT IN (SELECT AFI_NUMERO_DOC||NUM_PLANILLA FROM AFILIADOS_COMPENSADOS))
   AND (NUM_DOCUMENTO_BEN = AFILIADOS.NUM_DOCUMENTO)
   AND (COD_DEPARTAMENTO_RES = COD_DEPARTAMENTO)
   AND (COD_CIUDAD_RES = COD_CIUDAD)
ORDER BY TO_DATE(DET_PLANILLA_AUTOLIQUIDACION.PER_COTIZACION,'MM/YYYY') ASC;
