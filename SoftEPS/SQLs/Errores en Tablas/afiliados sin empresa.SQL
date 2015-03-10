SELECT afiliados.tip_documento,afiliados.num_documento,afiliados.pri_apellido,afiliados.seg_apellido,afiliados.pri_nombre,afiliados.seg_nombre,AFILIADOS_EMPRESAS.TIP_DOCUMENTO_EMP,AFILIADOS_EMPRESAS.NUM_DOCUMENTO_EMP,afiliados.cod_regional
FROM afiliados,afiliados_empresas
WHERE afiliados.tip_documento=afiliados_empresas.tip_documento_afi AND afiliados.num_documento =afiliados_empresas.num_documento_afi AND (afiliados_empresas.tip_documento_emp =  '  ' OR AFILIADOS_EMPRESAS.NUM_DOCUMENTO_EMP=   '  ') AND AFILIADOS. COD_TIPO_AFIL= 'C'
ORDER BY AFILIADOS.COD_REGIONAL

 




