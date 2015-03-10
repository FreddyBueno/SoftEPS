SELECT *
FROM afiliados
WHERE NOT cod_sexo in ('F','M')
ORDER BY cod_regional
