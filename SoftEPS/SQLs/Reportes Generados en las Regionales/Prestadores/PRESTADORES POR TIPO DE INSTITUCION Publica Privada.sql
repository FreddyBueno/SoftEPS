select cd_regional,
ds_departamento,
ds_municipio,
ds_prestador,
cd_prestador  as Nit_o_Codigo,
atencion as Nivel_atencion,
tipo_ips as Publica_o_Privadas
from udpresta, tinmunic,tindepto
where ciudad = cd_municipio 
and  departamento = tinmunic.cd_departamento 
and  departamento = tindepto.cd_departamento
and  tinmunic.cd_departamento  = tindepto.cd_departamento