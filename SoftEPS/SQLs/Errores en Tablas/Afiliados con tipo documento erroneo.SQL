SELECT *
FROM afiliados
WHERE NOT tip_documento in ('CC','TI','RC','CE')
ORDER BY cod_regional
