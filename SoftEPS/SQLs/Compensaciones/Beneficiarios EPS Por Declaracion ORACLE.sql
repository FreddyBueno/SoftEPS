select afiliados_compensados.num_declaracion,'EPS035' AS cod_eps,periodo_compensado,tip_documento_cot,num_documento_cot,
       afi_tipo_doc,afi_numero_doc,pri_apellido,seg_apellido,pri_nombre,seg_nombre,
       decode(tip_beneficiario,'B','1','2') AS Tipo_afiliado,
       decode(afiliados_compensados.cod_parentesco,'C','1','H','2','P','3','4') AS rel_cotizante,
       cod_departamento_res,cod_ciudad_res,fec_nacimiento,cod_sexo,fec_afiliacion_uni,dias
from afiliados_compensados, afiliados,declaraciones, autoliquidacion
where afiliados_compensados.num_declaracion >= 8 and afiliados_compensados.num_declaracion <= 9
           and tip_beneficiario <> 'C'
           and afiliados_compensados.num_declaracion = declaraciones.num_declaracion
           and afi_tipo_doc = tip_documento (+)
           and afi_numero_doc = num_documento (+)
           and afiliados_compensados.num_planilla = autoliquidacion.num_planilla (+)





















