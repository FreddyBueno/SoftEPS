SELECT *
FROM afiliados
WHERE  (SELECT count(*) FROM Relacion_afiliados WHERE afiliados.tip_documento=Relacion_afiliados.tip_documento_cot 
                                                                                                     AND afiliados.num_documento=Relacion_afiliados.num_documento_cot) = 0 AND cod_tipo_afil = 'C'





