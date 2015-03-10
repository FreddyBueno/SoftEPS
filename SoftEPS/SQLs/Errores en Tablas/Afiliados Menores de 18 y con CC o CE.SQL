SELECT *,floor(datediff(day,fec_nacimiento,getdate()) /365.25 ) AS Edad
FROM afiliados
WHERE floor(datediff(day,fec_nacimiento,getdate()) /365.25 ) < 18 AND tip_documento <> "RC" AND tip_documento <> "TI"

