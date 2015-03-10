select afiliados_compensados.num_declaracion,'EPS007' AS cod_eps,periodo_compensado,tip_documento_cot,num_documento_cot,
          afi_tipo_doc,afi_numero_doc,pri_apellido,seg_apellido,pri_nombre,seg_nombre,case when tip_beneficiario = 'B' then 1 else 2 end AS                  Tipo_afiliado,case when afiliados_compensados.cod_parentesco = 'C' then 1 when afiliados_compensados.cod_parentesco = 'H' then 2             when afiliados_compensados.cod_parentesco = 'P' then 3 else 4 end AS rel_cotizante,
          cod_departamento_res,cod_ciudad_res,fec_nacimiento,cod_sexo,fec_afiliacion_uni,dias
from afiliados_compensados, afiliados,declaraciones, autoliquidacion
where afiliados_compensados.num_declaracion between convert(integer,"4118") and convert(integer,"4174") 
           and tip_beneficiario <> 'C'
           and afiliados_compensados.num_declaracion *= declaraciones.num_declaracion
           and afi_tipo_doc *= tip_documento 
           and afi_numero_doc *= num_documento
           and afiliados_compensados.num_planilla *= autoliquidacion.num_planilla










