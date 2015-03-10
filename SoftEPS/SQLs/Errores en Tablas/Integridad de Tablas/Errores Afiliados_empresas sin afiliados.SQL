SELECT *
FROM afiliados_empresas
WHERE  (SELECT count(*) FROM afiliados WHERE afiliados.tip_documento=afiliados_empresas.tip_documento_afi 
                                                                                     AND afiliados.num_documento=afiliados_empresas.num_documento_afi AND cod_tipo_afil = 'C') = 0 
                                                                                     




