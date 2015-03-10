select cd_regional,
ds_departamento,
ds_municipio,barrio as Representante,
ds_prestador,
cd_prestador  as Nit_o_Codigo,
acreditacion,
direcciones,
telefonos 
from udpresta, tinmunic,tindepto
where ciudad = cd_municipio 
and  departamento = tinmunic.cd_departamento 
and  departamento = tindepto.cd_departamento
and  tinmunic.cd_departamento  = tindepto.cd_departamento