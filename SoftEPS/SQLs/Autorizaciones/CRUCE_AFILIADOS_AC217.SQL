SELECT tip_documento,num_documento,fec_nacimiento,cod_departamento_res,cod_ciudad_res,sem_cotizacion,fec_afiliacion_sis
FROM afiliados,temporales3
WHERE afiliados.tip_documento = temporales3.campo1 AND
               afiliados.num_documento =  temporales3.campo2
