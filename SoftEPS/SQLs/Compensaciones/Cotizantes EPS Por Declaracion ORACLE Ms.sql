select afiliados_compensados.num_declaracion,'EPS035' AS cod_eps,fecha_declaracion,
       decode(cot_tipo_decla,'0','IN','AA') AS Tipo_declaracion,periodo_compensado,
       afi_tipo_doc,afi_numero_doc,pri_apellido,seg_apellido,pri_nombre,seg_nombre,fec_nacimiento,
       cod_sexo,' ' AS tp_conyuge,' ' AS cod_conyuge,cod_departamento_res,cod_ciudad_res,fec_afiliacion_uni,
       decode(tip_afiliado,'D','1','E','2','I','3','M','4','P','10','S','11') AS Tip_cotizante,
       decode(autoliquidacion.emp_tipo_doc,'NIT','NI',autoliquidacion.emp_tipo_doc) as Tip_Empresa,
       autoliquidacion.emp_numero_doc,round(((cotizacion/dias)*30)/0.12),salario,dias,0 AS cot_8,fec_pago,dias,cotizacion       
from afiliados_compensados, afiliados,declaraciones, autoliquidacion
where afiliados_compensados.num_declaracion > = 8 and afiliados_compensados.num_declaracion <= 9 
         and EST_MULTIAFILIADO = 'COM'
           and tip_beneficiario = 'C'
           and afiliados_compensados.num_declaracion = declaraciones.num_declaracion
           and afi_tipo_doc = tip_documento 
           and afi_numero_doc = num_documento
           and afiliados_compensados.num_planilla = autoliquidacion.num_planilla
order by afiliados_compensados.num_declaracion





