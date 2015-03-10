SELECT *,floor(datediff(day,fec_nacimiento,getdate()) /365.25 ) AS edad
FROM afiliados
WHERE cod_discapacidad <> 'N' AND
               cod_regional = "101" AND
               floor(datediff(day,fec_nacimiento,getdate()) /365.25 ) >= convert(integer,"0") AND
               floor(datediff(day,fec_nacimiento,getdate()) /365.25 ) <= convert(integer,"6")   

