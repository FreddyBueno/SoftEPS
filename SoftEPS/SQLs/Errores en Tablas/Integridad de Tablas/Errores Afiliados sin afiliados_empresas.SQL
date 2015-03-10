SELECT *
FROM afiliados
WHERE  (SELECT count(*) FROM afiliados_empresas WHERE afiliados.tip_documento=afiliados_empresas.tip_documento_afi 
                                                                                                     AND afiliados.num_documento=afiliados_empresas.num_documento_afi) = 0 AND cod_tipo_afil = 'C'





