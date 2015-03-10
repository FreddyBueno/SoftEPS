SELECT afiliados_empresas.tip_documento_emp, afiliados_empresas.num_documento_emp, afiliados_empresas.cod_sucursal, empresas.nom_empresa, afiliados_empresas.tip_documento_afi, afiliados_empresas.num_documento_afi, afiliados.pri_nombre, afiliados.seg_nombre, afiliados.pri_apellido, afiliados.seg_apellido, afiliados.cod_sexo, afiliados.cod_tipo_afil, afiliados.cod_estado_civ
FROM afiliados_empresas,empresas,afiliados
WHERE ((afiliados_empresas.tip_documento_afi = afiliados.tip_documento) AND
                (afiliados_empresas.num_documento_afi = afiliados.num_documento)) AND
               ((afiliados_empresas.tip_documento_emp = empresas.tip_documento) AND
                (afiliados_empresas.num_documento_emp = empresas.num_documento) AND
                (afiliados_empresas.cod_sucursal = empresas.cod_sucursal))  AND
              afiliados.cod_estado ='A'  AND afiliados_empresas.cod_estado = 'A'
ORDER BY afiliados_empresas.tip_documento_emp, afiliados_empresas.num_documento_afi

