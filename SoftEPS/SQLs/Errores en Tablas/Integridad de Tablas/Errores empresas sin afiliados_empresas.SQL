SELECT count(*)
FROM empresas
WHERE  (SELECT count(*) FROM afiliados_empresas WHERE empresas.tip_documento=afiliados_empresas.tip_documento_emp 
                                                                                                     AND empresas.num_documento=afiliados_empresas.num_documento_emp) = 0 






