SELECT *,floor(datediff(day,fec_nacimiento,getdate()) /365.25 ) AS Edad
FROM afiliados
WHERE floor(datediff(day,fec_nacimiento,getdate()) /365.25 ) < 12 AND cod_estado_civ <> "S"


