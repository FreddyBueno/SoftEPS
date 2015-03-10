DECLARE @Fecha_Corte VARCHAR(26)
SELECT  @Fecha_Corte="01/01/2001"
SELECT   afiliados.cod_regional,
afiliados.cod_departamento_res,
afiliados.cod_ciudad_res,
afiliados.cod_sexo,
sum(case when floor(datediff(day,fec_nacimiento,getdate()) /365.25 ) < 1 then 1 else 0 end) as '<1m',
sum(case when floor(datediff(day,fec_nacimiento,getdate()) /365.25 ) = 1 then 1 else 0 end) as '1m',
sum(case when floor(datediff(day,fec_nacimiento,getdate()) /365.25 ) = 2 then 1 else 0 end) as '2m',
sum(case when floor(datediff(day,fec_nacimiento,getdate()) /365.25 ) = 3 then 1 else 0 end) as '3m',
sum(case when floor(datediff(day,fec_nacimiento,getdate()) /365.25 ) = 4 then 1 else 0 end) as '4m',
sum(case when floor(datediff(day,fec_nacimiento,getdate()) /365.25 ) = 5 then 1 else 0 end) as '5m',
sum(case when floor(datediff(day,fec_nacimiento,getdate()) /365.25 ) = 6 then 1 else 0 end) as '6m',
sum(case when floor(datediff(day,fec_nacimiento,getdate()) /365.25 ) = 7 then 1 else 0 end) as '7m',
sum(case when floor(datediff(day,fec_nacimiento,getdate()) /365.25 ) = 8 then 1 else 0 end) as '8m',
sum(case when floor(datediff(day,fec_nacimiento,getdate()) /365.25 ) = 9 then 1 else 0 end) as '9m',
sum(case when floor(datediff(day,fec_nacimiento,getdate()) /365.25 ) = 10 then 1 else 0 end) as '10m',
sum(case when floor(datediff(day,fec_nacimiento,getdate()) /365.25 ) = 11 then 1 else 0 end) as '11m',
sum(case when floor(datediff(day,fec_nacimiento,getdate()) /365.25 ) = 12 then 1 else 0 end) as '1a o 12m',
sum(case when floor(datediff(day,fec_nacimiento,getdate()) /365.25 ) = 13 then 1 else 0 end) as '13m',
sum(case when floor(datediff(day,fec_nacimiento,getdate()) /365.25 ) = 14 then 1 else 0 end) as '14m',
sum(case when floor(datediff(day,fec_nacimiento,getdate()) /365.25 ) = 15 then 1 else 0 end) as '15m',
sum(case when floor(datediff(day,fec_nacimiento,getdate()) /365.25 ) = 16 then 1 else 0 end) as '16m',
sum(case when floor(datediff(day,fec_nacimiento,getdate()) /365.25 ) = 17 then 1 else 0 end) as '17m',
sum(case when floor(datediff(day,fec_nacimiento,getdate()) /365.25 ) = 18 then 1 else 0 end) as '18m',
sum(case when floor(datediff(day,fec_nacimiento,getdate()) /365.25 ) = 19 then 1 else 0 end) as '19m',
sum(case when floor(datediff(day,fec_nacimiento,getdate()) /365.25 ) = 20 then 1 else 0 end) as '20m',
sum(case when floor(datediff(day,fec_nacimiento,getdate()) /365.25 ) = 21 then 1 else 0 end) as '21m',
sum(case when floor(datediff(day,fec_nacimiento,getdate()) /365.25 ) = 22 then 1 else 0 end) as '22m',
sum(case when floor(datediff(day,fec_nacimiento,getdate()) /365.25 ) = 23 then 1 else 0 end) as '23m',
sum(case when floor(datediff(day,fec_nacimiento,getdate()) /365.25 ) = 24 then 1 else 0 end) as '2a o 24m',
sum(case when floor(datediff(day,fec_nacimiento,getdate()) /365.25 ) = 25 then 1 else 0 end) as '25m',
sum(case when floor(datediff(day,fec_nacimiento,getdate()) /365.25 ) = 26 then 1 else 0 end) as '26m',
sum(case when floor(datediff(day,fec_nacimiento,getdate()) /365.25 ) = 27 then 1 else 0 end) as '27m',
sum(case when floor(datediff(day,fec_nacimiento,getdate()) /365.25 ) = 28 then 1 else 0 end) as '28m',
sum(case when floor(datediff(day,fec_nacimiento,getdate()) /365.25 ) = 29 then 1 else 0 end) as '29m',
sum(case when floor(datediff(day,fec_nacimiento,getdate()) /365.25 ) = 30 then 1 else 0 end) as '30m',
sum(case when floor(datediff(day,fec_nacimiento,getdate()) /365.25 ) = 31 then 1 else 0 end) as '31m',
sum(case when floor(datediff(day,fec_nacimiento,getdate()) /365.25 ) = 32 then 1 else 0 end) as '32m',
sum(case when floor(datediff(day,fec_nacimiento,getdate()) /365.25 ) = 33 then 1 else 0 end) as '33m',
sum(case when floor(datediff(day,fec_nacimiento,getdate()) /365.25 ) = 34 then 1 else 0 end) as '34m',
sum(case when floor(datediff(day,fec_nacimiento,getdate()) /365.25 ) = 35 then 1 else 0 end) as '35m',
sum(case when floor(datediff(day,fec_nacimiento,getdate()) /365.25 ) = 36 then 1 else 0 end) as '36m o 3a',
sum(case when floor(datediff(day,fec_nacimiento,getdate()) /12 ) = 4 then 1 else 0 end) as '4a',
sum(case when floor(datediff(day,fec_nacimiento,getdate()) /12 ) = 5 then 1 else 0 end) as '5a',
sum(case when floor(datediff(day,fec_nacimiento,getdate()) /12 ) = 6 then 1 else 0 end) as '6a',
sum(case when floor(datediff(day,fec_nacimiento,getdate()) /12 ) = 7 then 1 else 0 end) as '7a',
sum(case when floor(datediff(day,fec_nacimiento,getdate()) /12 ) = 8 then 1 else 0 end) as '8a',
sum(case when floor(datediff(day,fec_nacimiento,getdate()) /12 ) = 9 then 1 else 0 end) as '9a',
sum(case when floor(datediff(day,fec_nacimiento,getdate()) /12 ) = 10 then 1 else 0 end) as '10a',
sum(case when floor(datediff(day,fec_nacimiento,getdate()) /12 ) = 11 then 1 else 0 end) as '11a',
sum(case when floor(datediff(day,fec_nacimiento,getdate()) /12 ) = 12 then 1 else 0 end) as '12a',
sum(case when floor(datediff(day,fec_nacimiento,getdate()) /12 ) = 13 then 1 else 0 end) as '13a',
sum(case when floor(datediff(day,fec_nacimiento,getdate()) /12 ) = 14 then 1 else 0 end) as '14a',
sum(case when floor(datediff(day,fec_nacimiento,getdate()) /12 ) = 15 then 1 else 0 end) as '15a',
sum(case when floor(datediff(day,fec_nacimiento,getdate()) /12 ) = 16 then 1 else 0 end) as '16a',
sum(case when floor(datediff(day,fec_nacimiento,getdate()) /12 ) = 17 then 1 else 0 end) as '17a',
sum(case when floor(datediff(day,fec_nacimiento,getdate()) /12 ) = 18 then 1 else 0 end) as '18a',
sum(case when floor(datediff(day,fec_nacimiento,getdate()) /12 ) = 19 then 1 else 0 end) as '19a',
sum(case when floor(datediff(day,fec_nacimiento,getdate()) /12 ) = 20 then 1 else 0 end) as '20a',
sum(case when floor(datediff(day,fec_nacimiento,getdate()) /12 ) = 21 then 1 else 0 end) as '21a',
sum(case when floor(datediff(day,fec_nacimiento,getdate()) /12 ) = 22 then 1 else 0 end) as '22a',
sum(case when floor(datediff(day,fec_nacimiento,getdate()) /12 ) = 23 then 1 else 0 end) as '23a',
sum(case when floor(datediff(day,fec_nacimiento,getdate()) /12 ) = 24 then 1 else 0 end) as '24a',
sum(case when floor(datediff(day,fec_nacimiento,getdate()) /12 ) = 25 then 1 else 0 end) as '25a',
sum(case when floor(datediff(day,fec_nacimiento,getdate()) /12 ) = 26 then 1 else 0 end) as '26a',
sum(case when floor(datediff(day,fec_nacimiento,getdate()) /12 ) = 27 then 1 else 0 end) as '27a',
sum(case when floor(datediff(day,fec_nacimiento,getdate()) /12 ) = 28 then 1 else 0 end) as '28a',
sum(case when floor(datediff(day,fec_nacimiento,getdate()) /12 ) = 29 then 1 else 0 end) as '29a',
sum(case when floor(datediff(day,fec_nacimiento,getdate()) /12 ) = 30 then 1 else 0 end) as '30a',
sum(case when floor(datediff(day,fec_nacimiento,getdate()) /12 ) = 31 then 1 else 0 end) as '31a',
sum(case when floor(datediff(day,fec_nacimiento,getdate()) /12 ) = 32 then 1 else 0 end) as '32a',
sum(case when floor(datediff(day,fec_nacimiento,getdate()) /12 ) = 33 then 1 else 0 end) as '33a',
sum(case when floor(datediff(day,fec_nacimiento,getdate()) /12 ) = 34 then 1 else 0 end) as '34a',
sum(case when floor(datediff(day,fec_nacimiento,getdate()) /12 ) = 35 then 1 else 0 end) as '35a',
sum(case when floor(datediff(day,fec_nacimiento,getdate()) /12 ) = 36 then 1 else 0 end) as '36a',
sum(case when floor(datediff(day,fec_nacimiento,getdate()) /12 ) = 37 then 1 else 0 end) as '37a',
sum(case when floor(datediff(day,fec_nacimiento,getdate()) /12 ) = 38 then 1 else 0 end) as '38a',
sum(case when floor(datediff(day,fec_nacimiento,getdate()) /12 ) = 39 then 1 else 0 end) as '39a',
sum(case when floor(datediff(day,fec_nacimiento,getdate()) /12 ) = 40 then 1 else 0 end) as '40a',
sum(case when floor(datediff(day,fec_nacimiento,getdate()) /12 ) = 41 then 1 else 0 end) as '41a',
sum(case when floor(datediff(day,fec_nacimiento,getdate()) /12 ) = 42 then 1 else 0 end) as '42a',
sum(case when floor(datediff(day,fec_nacimiento,getdate()) /12 ) = 43 then 1 else 0 end) as '43a',
sum(case when floor(datediff(day,fec_nacimiento,getdate()) /12 ) = 44 then 1 else 0 end) as '44a',
sum(case when floor(datediff(day,fec_nacimiento,getdate()) /12 ) = 45 then 1 else 0 end) as '45a',
sum(case when floor(datediff(day,fec_nacimiento,getdate()) /12 ) = 46 then 1 else 0 end) as '46a',
sum(case when floor(datediff(day,fec_nacimiento,getdate()) /12 ) = 47 then 1 else 0 end) as '47a',
sum(case when floor(datediff(day,fec_nacimiento,getdate()) /12 ) = 48 then 1 else 0 end) as '48a',
sum(case when floor(datediff(day,fec_nacimiento,getdate()) /12 ) = 49 then 1 else 0 end) as '49a',
sum(case when floor(datediff(day,fec_nacimiento,getdate()) /12 ) = 50 then 1 else 0 end) as '50a',
sum(case when floor(datediff(day,fec_nacimiento,getdate()) /12 ) = 51 then 1 else 0 end) as '51a',
sum(case when floor(datediff(day,fec_nacimiento,getdate()) /12 ) = 52 then 1 else 0 end) as '52a',
sum(case when floor(datediff(day,fec_nacimiento,getdate()) /12 ) = 53 then 1 else 0 end) as '53a',
sum(case when floor(datediff(day,fec_nacimiento,getdate()) /12 ) = 54 then 1 else 0 end) as '54a',
sum(case when floor(datediff(day,fec_nacimiento,getdate()) /12 ) = 55 then 1 else 0 end) as '55a',
sum(case when floor(datediff(day,fec_nacimiento,getdate()) /12 ) = 56 then 1 else 0 end) as '56a',
sum(case when floor(datediff(day,fec_nacimiento,getdate()) /12 ) = 57 then 1 else 0 end) as '57a',
sum(case when floor(datediff(day,fec_nacimiento,getdate()) /12 ) = 58 then 1 else 0 end) as '58a',
sum(case when floor(datediff(day,fec_nacimiento,getdate()) /12 ) = 59 then 1 else 0 end) as '59a',
sum(case when floor(datediff(day,fec_nacimiento,getdate()) /12 ) = 60 then 1 else 0 end) as '60a',
sum(case when floor(datediff(day,fec_nacimiento,getdate()) /12 ) = 61 then 1 else 0 end) as '61a',
sum(case when floor(datediff(day,fec_nacimiento,getdate()) /12 ) = 62 then 1 else 0 end) as '62a',
sum(case when floor(datediff(day,fec_nacimiento,getdate()) /12 ) = 63 then 1 else 0 end) as '63a',
sum(case when floor(datediff(day,fec_nacimiento,getdate()) /12 ) = 64 then 1 else 0 end) as '64a',
sum(case when floor(datediff(day,fec_nacimiento,getdate()) /12 ) = 65 then 1 else 0 end) as '65a',
sum(case when floor(datediff(day,fec_nacimiento,getdate()) /12 ) = 66 then 1 else 0 end) as '66a',
sum(case when floor(datediff(day,fec_nacimiento,getdate()) /12 ) = 67 then 1 else 0 end) as '67a',
sum(case when floor(datediff(day,fec_nacimiento,getdate()) /12 ) = 68 then 1 else 0 end) as '68a',
sum(case when floor(datediff(day,fec_nacimiento,getdate()) /12 ) = 69 then 1 else 0 end) as '69a',
sum(case when floor(datediff(day,fec_nacimiento,getdate()) /12 ) = 70 then 1 else 0 end) as '70a',
sum(case when floor(datediff(day,fec_nacimiento,getdate()) /12 ) = 71 then 1 else 0 end) as '71a',
sum(case when floor(datediff(day,fec_nacimiento,getdate()) /12 ) = 72 then 1 else 0 end) as '72a',
sum(case when floor(datediff(day,fec_nacimiento,getdate()) /12 ) = 73 then 1 else 0 end) as '73a',
sum(case when floor(datediff(day,fec_nacimiento,getdate()) /12 ) = 74 then 1 else 0 end) as '74a',
sum(case when floor(datediff(day,fec_nacimiento,getdate()) /12 ) = 75 then 1 else 0 end) as '75a',
sum(case when floor(datediff(day,fec_nacimiento,getdate()) /12 ) = 76 then 1 else 0 end) as '76a',
sum(case when floor(datediff(day,fec_nacimiento,getdate()) /12 ) = 77 then 1 else 0 end) as '77a',
sum(case when floor(datediff(day,fec_nacimiento,getdate()) /12 ) = 78 then 1 else 0 end) as '78a',
sum(case when floor(datediff(day,fec_nacimiento,getdate()) /12 ) = 79 then 1 else 0 end) as '79a',
sum(case when floor(datediff(day,fec_nacimiento,getdate()) /12 ) = 80 then 1 else 0 end) as '80a',
sum(case when floor(datediff(day,fec_nacimiento,getdate()) /12 ) = 81 then 1 else 0 end) as '81a',
sum(case when floor(datediff(day,fec_nacimiento,getdate()) /12 ) = 82 then 1 else 0 end) as '82a',
sum(case when floor(datediff(day,fec_nacimiento,getdate()) /12 ) = 83 then 1 else 0 end) as '83a',
sum(case when floor(datediff(day,fec_nacimiento,getdate()) /12 ) = 84 then 1 else 0 end) as '84a',
sum(case when floor(datediff(day,fec_nacimiento,getdate()) /12 ) = 85 then 1 else 0 end) as '85a',
sum(case when floor(datediff(day,fec_nacimiento,getdate()) /12 ) = 86 then 1 else 0 end) as '86a',
sum(case when floor(datediff(day,fec_nacimiento,getdate()) /12 ) = 87 then 1 else 0 end) as '87a',
sum(case when floor(datediff(day,fec_nacimiento,getdate()) /12 ) = 88 then 1 else 0 end) as '88a',
sum(case when floor(datediff(day,fec_nacimiento,getdate()) /12 ) = 89 then 1 else 0 end) as '89a',
sum(case when floor(datediff(day,fec_nacimiento,getdate()) /12 ) = 90 then 1 else 0 end) as '90a',
sum(case when floor(datediff(day,fec_nacimiento,getdate()) /12 ) = 91 then 1 else 0 end) as '91a',
sum(case when floor(datediff(day,fec_nacimiento,getdate()) /12 ) = 92 then 1 else 0 end) as '92a',
sum(case when floor(datediff(day,fec_nacimiento,getdate()) /12 ) = 93 then 1 else 0 end) as '93a',
sum(case when floor(datediff(day,fec_nacimiento,getdate()) /12 ) = 94 then 1 else 0 end) as '94a',
sum(case when floor(datediff(day,fec_nacimiento,getdate()) /12 ) = 95 then 1 else 0 end) as '95a',
sum(case when floor(datediff(day,fec_nacimiento,getdate()) /12 ) = 96 then 1 else 0 end) as '96a',
sum(case when floor(datediff(day,fec_nacimiento,getdate()) /12 ) = 97 then 1 else 0 end) as '97a',
sum(case when floor(datediff(day,fec_nacimiento,getdate()) /12 ) = 98 then 1 else 0 end) as '98a',
sum(case when floor(datediff(day,fec_nacimiento,getdate()) /12 ) = 99 then 1 else 0 end) as '99a',
sum(case when floor(datediff(day,fec_nacimiento,getdate()) /12 ) = 100 then 1 else 0 end) as '100a',
count(*) as 'Total poblacion',
sum(case when (floor(datediff(day,fec_nacimiento,getdate()) /12 ) >= 15) and floor(datediff(day,fec_nacimiento,getdate()) /12 ) <= 49 and cod_sexo = 'F' then 1 else 0 end) as 'm15a49a',
sum(case when (floor(datediff(day,fec_afiliacion_uni,getdate()) /365.25 ) <= 7) and cod_sexo = 'F' then 1 else 0 end) as 'm<=7m de afiliacion',				 
sum(case when (floor(datediff(day,fec_afiliacion_uni,getdate()) /365.25 ) > 7) and cod_sexo = 'F' then 1 else 0 end) as 'm>7m de afiliacion',				 			
sum(case when floor(datediff(day,fec_nacimiento,getdate()) /365.25 ) = 12 then 1 else 0 end) as '1ao12m',
sum(case when floor(datediff(day,fec_afiliacion_uni,getdate()) /365.25 ) <= 4 then 1 else 0 end) as '<4m de afiliacion',
sum(case when floor(datediff(day,fec_afiliacion_uni,getdate()) /365.25 ) >= 5 and floor(datediff(day,fec_afiliacion_uni,getdate()) /365.25 ) <= 8 then 1 else 0 end) as '5a8m de afiliacion',
sum(case when floor(datediff(day,fec_afiliacion_uni,getdate()) /365.25 ) >= 9 then 1 else 0 end) as '>9m de afiliacion',

sum(case when (floor(datediff(day,fec_nacimiento,getdate()) /12 ) > 10) and floor(datediff(day,fec_nacimiento,getdate()) /12 ) <= 49 and cod_sexo = 'F' then 1 else 0 end) as 'm10a49a',
sum(case when (floor(datediff(day,fec_afiliacion_uni,getdate()) /365.25 ) <= 7) then 1 else 0 end) as '<=7m de afiliacion',
sum(case when (floor(datediff(day,fec_afiliacion_uni,getdate()) /365.25 ) > 7) then 1 else 0 end) as '>7m de afiliacion',
sum(case when (floor(datediff(day,fec_nacimiento,getdate()) /12 ) > 2) and floor(datediff(day,fec_nacimiento,getdate()) /12 ) <= 19 then 1 else 0 end) as '2a19a',
sum(case when (floor(datediff(day,fec_afiliacion_uni,getdate()) /365.25 ) <= 6) then 1 else 0 end) as '<=6m de afiliacion', 
sum(case when (floor(datediff(day,fec_afiliacion_uni,getdate()) /365.25 ) > 6) then 1 else 0 end) as '>6m de afiliacion',
sum(case when (floor(datediff(day,fec_nacimiento,getdate()) /12 ) > 5) and floor(datediff(day,fec_nacimiento,getdate()) /12 ) <= 19 then 1 else 0 end) as '5a19a',
sum(case when (floor(datediff(day,fec_afiliacion_uni,getdate()) /365.25 ) <= 6) then 1 else 0 end) as '<=6m deafiliacion', 
sum(case when (floor(datediff(day,fec_afiliacion_uni,getdate()) /365.25 ) > 6) then 1 else 0 end) as '>6m deafiliacion',
sum(case when (floor(datediff(day,fec_nacimiento,getdate()) /12 ) = 1) then 1 else 0 end) as '1a',
sum(case when (floor(datediff(day,fec_afiliacion_uni,getdate()) /365.25 ) <= 4) then 1 else 0 end) as '<=4m de afiliacion', 
sum(case when (floor(datediff(day,fec_afiliacion_uni,getdate()) /365.25 ) >= 5) and (floor(datediff(day,fec_afiliacion_uni,getdate()) /365.25 ) <= 8) then 1 else 0 end) as '5a8m deafiliacion',	
sum(case when (floor(datediff(day,fec_afiliacion_uni,getdate()) /365.25 ) >= 9) then 1 else 0 end) as '>=9m de afiliacion',
sum(case when (floor(datediff(day,fec_nacimiento,getdate()) /12 ) = 2) then 1 else 0 end) as '2a',
sum(case when (floor(datediff(day,fec_afiliacion_uni,getdate()) /365.25 ) <= 6) then 1 else 0 end) as '<=6mde afiliacion', 
sum(case when (floor(datediff(day,fec_afiliacion_uni,getdate()) /365.25 ) > 6) then 1 else 0 end) as '>6mde afiliacion',
sum(case when (floor(datediff(day,fec_nacimiento,getdate()) /12 ) > 15) and floor(datediff(day,fec_nacimiento,getdate()) /12 ) <= 49 and cod_sexo = 'F' then 1 else 0 end) as 'm 15a49a',
sum(case when (floor(datediff(day,fec_afiliacion_uni,getdate()) /365.25 ) <= 3) then 1 else 0 end) as '<=3m de afiliacion', 
sum(case when (floor(datediff(day,fec_afiliacion_uni,getdate()) /365.25 ) >= 4) and (floor(datediff(day,fec_afiliacion_uni,getdate()) /365.25 ) <= 6) then 1 else 0 end) as '4a6m de afiliacion'
FROM afiliados,relacion_afiliados,det_planilla_autoliquidacion (INDEX pk_det_planilla_autoliquidacio)
WHERE  ((afiliados.tip_documento = relacion_afiliados.tip_documento_ben) AND
       (afiliados.num_documento = relacion_afiliados.num_documento_ben)) AND
       ((relacion_afiliados.tip_documento_cot = det_planilla_autoliquidacion.afi_tipo_doc) AND
       (relacion_afiliados.num_documento_cot = det_planilla_autoliquidacion.afi_numero_doc )) AND
       per_presentacion like '%'+"11/2001"+'%'    AND
                      ((fec_exclusion_nov <> null AND 
          fec_inclusion_nov <= convert(datetime,@Fecha_Corte,103)  AND
          fec_exclusion_nov >= convert(datetime,@Fecha_Corte,103)) OR

          (fec_exclusion_nov = null AND 
          fec_inclusion_nov <= convert(datetime,@Fecha_Corte,103)))
GROUP BY afiliados.cod_regional,
afiliados.cod_departamento_res,
afiliados.cod_ciudad_res,
afiliados.cod_sexo

