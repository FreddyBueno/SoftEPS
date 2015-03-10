select cod_regional,
nom_departamento,
nom_ciudad,
prestadores.cod_prestador  as Nit_o_Codigo,
mon_prestador,
desc_tipo_auto as Servicios_capitados,
tar_porcentaje as Porcentaje
from prestadores, ciudades, departamentos, contratos_prestadores, servicios_contrato
where contratos_prestadores.municipio = ciudades.cod_ciudad 
and  contratos_prestadores.departamento = ciudades.cod_departamento 
and  contratos_prestadores.departamento = departamentos.cod_departamento
and  ciudades.cod_departamento  = departamentos.cod_departamento
and  prestadores.cod_prestador = contratos_prestadores.cod_prestador
and  contratos_prestadores.cod_prestador = servicios_contrato.cod_prestador
and  contratos_prestadores.nr_contrato = servicios_contrato.num_contrato
and servicios_contrato.modalidad = '2'
and servicios_contrato.tip_atencion = '2'
