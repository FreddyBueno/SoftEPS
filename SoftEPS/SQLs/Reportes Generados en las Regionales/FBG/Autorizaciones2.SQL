TRUNCATE TABLE temporales;

INSERT temporales (campo1,campo2,campo3,campo4,campo5)
SELECT distinct cd_regional,id_autorizador,no_solicitud,fec_autorizacion,nr_ident_afilia
FROM amencaut,ASDSU_ENC_ATENCION
WHERE nr_ident_afilia = id_paciente AND
      fec_autorizacion<=convert(datetime,fec_ingreso,102);

SELECT datepart(year,convert(datetime,campo4,103)) AS AÑO,datepart(month,convert(datetime,campo4,103)) AS MES ,count(*) AS Total_AutVsCue
FROM temporales
GROUP BY datepart(year,convert(datetime,campo4,103)),datepart(month,convert(datetime,campo4,103))
ORDER BY datepart(year,convert(datetime,campo4,103)),datepart(month,convert(datetime,campo4,103))

