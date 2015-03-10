SELECT*
FROM relacion_afiliados
WHERE  (SELECT count(*) FROM afiliados WHERE afiliados.tip_documento=relacion_afiliados.tip_documento_cot 
                                                                                     AND afiliados.num_documento=relacion_afiliados.num_documento_cot AND cod_tipo_afil = 'C') = 0 
                                                                                     





