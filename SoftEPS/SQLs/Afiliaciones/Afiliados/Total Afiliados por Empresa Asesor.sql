select ace_numero_doc, acesores.pri_apellido, acesores.pri_nombre,num_documento_emp,nom_empresa,fec_afiliacion,count(*) 
from afiliados_empresas,empresas,afiliados, acesores
where num_documento_emp = empresas.num_documento
and num_documento_afi = afiliados.num_documento
and ace_numero_doc = acesores.num_documento
group by ace_numero_doc, acesores.pri_apellido, acesores.pri_nombre,num_documento_emp,nom_empresa, fec_afiliacion
order by nom_empresa
