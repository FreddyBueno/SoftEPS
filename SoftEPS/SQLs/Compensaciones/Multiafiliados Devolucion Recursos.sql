select 'EPS035' AS cod_eps,AFI_TIPO_DOC, AFI_NUMERO_DOC, decode(tip_beneficiario,'C','0','1') AS Tipo_afiliado,
pri_apellido, seg_apellido, pri_nombre, seg_nombre, '01123629' AS NUM_DEC, 'AA' AS Adicion,periodo_compensado,
'0004' AS No_Certificacion, '24/12/2002', round(cotizacion/0.12) AS IBC, dias,cotizacion,round(dias*35.25) as PYP,val_upc,
round((((cotizacion/0.12))*0.25)/100) as Incapacidades
from afiliados_compensados, afiliados, declaraciones
where afiliados_compensados.num_declaracion = 25 and id_multiafiliado is not null
and afi_tipo_doc = tip_documento
and afi_numero_doc = num_documento
and afiliados_compensados.num_declaracion = declaraciones.num_declaracion;