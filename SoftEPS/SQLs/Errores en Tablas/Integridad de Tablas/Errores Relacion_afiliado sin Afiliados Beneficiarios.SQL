SELECT*  
FROM relacion_afiliados
WHERE  (SELECT count(*) FROM afiliados WHERE afiliados.tip_documento=relacion_afiliados.tip_documento_ben
                                                                                     AND afiliados.num_documento=relacion_afiliados.num_documento_ben ) = 0 
                                                                                     





