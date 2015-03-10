select *
from afiliados,relacion_afiliados,afiliados_empresas, empresas 
where cod_tipo_afil='A' and afiliados.cod_estado <> 'I'
and afiliados.num_documento = num_documento_ben
and num_documento_cot = num_documento_afi
and num_documento_emp = empresas.num_documento;