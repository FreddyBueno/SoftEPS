SELECT datepart(year,fec_autorizacion) AS AÑO,datepart(month,fec_autorizacion) AS MES ,

SUM(CASE WHEN num_documento <> NULL THEN 1 ELSE 0 END) AS Total_Contributivos, 
SUM(CASE WHEN num_documento =   NULL THEN 1 ELSE 0 END) AS Total_No_Contributivo

FROM amencaut,afiliados
WHERE (amencaut.tp_ident_afilia *= afiliados.tip_documento AND
               amencaut.nr_ident_afilia  *= afiliados.num_documento)
GROUP BY datepart(year,fec_autorizacion),datepart(month,fec_autorizacion)
ORDER BY datepart(year,fec_autorizacion),datepart(month,fec_autorizacion)


