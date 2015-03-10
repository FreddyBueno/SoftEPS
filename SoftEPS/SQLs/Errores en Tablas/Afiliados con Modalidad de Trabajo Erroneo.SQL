SELECT *
FROM afiliados
WHERE NOT cod_modalidad_tra in ('D','I','P') AND
                       cod_tipo_afil = 'C'
ORDER BY cod_regional

