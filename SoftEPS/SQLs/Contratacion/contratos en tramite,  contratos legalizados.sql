select cod_regional,
nom_departamento,
nom_ciudad,
prestadores.cod_prestador  as Nit_o_Codigo,
mon_prestador,
modalidad,
ubicacion
from prestadores, ciudades,departamentos,contratos_prestadores
where contratos_prestadores.municipio = ciudades.cod_ciudad 
and  contratos_prestadores.departamento = ciudades.cod_departamento 
and  contratos_prestadores.departamento = departamentos.cod_departamento
and  ciudades.cod_departamento  = departamentos.cod_departamento
and  prestadores.cod_prestador = contratos_prestadores.cod_prestador
