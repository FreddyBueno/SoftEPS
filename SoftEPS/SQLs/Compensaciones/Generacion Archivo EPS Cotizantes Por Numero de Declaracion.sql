select afiliados_compensados.num_declaracion,'EPS007' AS cod_eps,fecha_declaracion,case when cot_tipo_decla=0 then 'IN' else 'AA'  end AS Tipo_declaracion,periodo_compensado,
          afi_tipo_doc,afi_numero_doc,pri_apellido,seg_apellido,pri_nombre,seg_nombre,fec_nacimiento,
          cod_sexo,'' AS tp_conyuge,'' AS cod_conyuge,cod_departamento_res,cod_ciudad_res,fec_afiliacion_uni,
          case when tip_afiliado='D' then 1  when tip_afiliado='E' then 2  when tip_afiliado='I' then 3  when tip_afiliado='M' then 4
           when tip_afiliado='P' then 10  when tip_afiliado='S' then 11 end AS Tip_cotizante, case when autoliquidacion.emp_tipo_doc = 'NIT' then 'NI' else autoliquidacion.emp_tipo_doc end,autoliquidacion.emp_numero_doc,salario,salario,dias,'' AS cot_8,fec_pago,dias,cotizacion
from afiliados_compensados, afiliados,declaraciones, autoliquidacion
where afiliados_compensados.num_declaracion between convert(integer,"4293") and convert(integer,"4293") 
           and tip_beneficiario = 'C'
           and afiliados_compensados.num_declaracion = declaraciones.num_declaracion
           and afi_tipo_doc = tip_documento 
           and afi_numero_doc = num_documento
           and afiliados_compensados.num_planilla = autoliquidacion.num_planilla












