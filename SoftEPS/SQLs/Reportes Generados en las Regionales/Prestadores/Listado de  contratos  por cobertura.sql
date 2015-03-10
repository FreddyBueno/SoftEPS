select tinmunic.cd_regional,ds_municipio,udpresta.cd_prestador,ds_prestador,udcontrato.nr_contrato,inicio_contrato,termi_contrato 
from udpresta,udcontrato,tinmunic,cobcontrato
where udcontrato.cd_prestador = udpresta.cd_prestador
and  cobcontrato.departamento = tinmunic.cd_departamento
and cobcontrato.municipio = tinmunic.cd_municipio
and udcontrato.nr_contrato = cobcontrato.nr_contrato
and udcontrato.cd_prestador = cobcontrato.cd_prestador
order by tinmunic.cd_regional