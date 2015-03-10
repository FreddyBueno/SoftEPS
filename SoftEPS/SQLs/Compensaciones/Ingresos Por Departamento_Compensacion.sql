select declaraciones.num_declaracion,declaraciones.periodo_compensado
       ,cod_departamento_res,nom_departamento, sum(val_upc) 
from afiliados_compensados, afiliados, declaraciones, departamentos
where id_multiafiliado is null
and afi_numero_doc = num_documento
and afiliados_compensados.num_declaracion = declaraciones.num_declaracion
and cod_departamento_res = cod_departamento
group by declaraciones.num_declaracion,declaraciones.periodo_compensado,cod_departamento_res,nom_departamento
order by cod_departamento_res,num_declaracion
