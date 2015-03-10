select * from afiliados_compensados, afiliados, ciudades, departamentos
where afi_tipo_doc = tip_documento
and afi_numero_doc = num_documento
and cod_departamento_res+cod_ciudad_res = ciudades.cod_departamento+cod_ciudad
and cod_departamento_res = departamentos.cod_departamento
and num_declaracion between convert(integer,"4225") and convert(integer,"4225")



