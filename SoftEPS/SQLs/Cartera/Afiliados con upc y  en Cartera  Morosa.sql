select tip_documento_ben, 
	num_documento_ben,
	cod_sexo,
	tip_documento_cot,
	num_documento_cot,
	fec_nacimiento,
	datediff(yy,fec_nacimiento,getdate()) as edad,
      tip_documento_emp,
     num_documento_emp
from  afiliados,relacion_afiliados,cartera
	where afiliados.cod_tipo_afil='A' and
	tip_documento_ben =  afiliados.tip_documento and
	num_documento_ben = afiliados.num_documento  and
 	cartera.tip_documento  = afiliados.tip_documento and
 	cartera.num_documento = afiliados.num_documento