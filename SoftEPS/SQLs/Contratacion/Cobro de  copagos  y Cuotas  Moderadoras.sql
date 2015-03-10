select prestadores.cod_reginal,
departamentos.nom_departamento,
ciudades.nom_ciudad,
prestadores.cod_prestador  as Nit_o_Codigo,
prestadores.mon_prestador,
rec_copago,
rec_cuota
from prestadores, ciudades,departamentos,contratos_prestadores
where contratos_prestadores.municipio = ciudades.cod_ciudad 
and  contratos_prestadores.departamento = ciudades.cod_departamento 
and  contratos_prestadores.departamento = departamentos.cod_departamento
and  ciudades.cod_departamento  = departamentos.cod_departamento
and  prestadores.cod_prestador = contratos_prestadores.cod_prestador
