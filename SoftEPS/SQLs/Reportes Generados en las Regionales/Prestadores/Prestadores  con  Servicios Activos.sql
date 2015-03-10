select cd_regional,
ds_departamento,
ds_municipio,
cd_prestador  as Nit_o_Codigo,
ds_prestador,
fecha_u_auto
from udpresta, tinmunic,tindepto
where ciudad = cd_municipio 
and  departamento = tinmunic.cd_departamento 
and  departamento = tindepto.cd_departamento
and  tinmunic.cd_departamento  = tindepto.cd_departamento
and estado >0