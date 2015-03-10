SELECT afiliados.cod_departamento_res,
afiliados.cod_ciudad_res,
afiliados.pri_apellido,
afiliados.seg_apellido,
afiliados.pri_nombre,
afiliados.Seg_nombre,
afiliados.tip_documento,
afiliados.num_documento,
REEAVISO.cd_aviso,
REEAVISO.fec_aviso,
patologia.cod_amparo,
patologia.descripcion,
datediff(yy,afiliados.fec_nacimiento,getdate()) as edad,
afiliados.cod_sexo,
AMDETAUT.cd_servicio as cod_diagnostico,
convert(char(100),observacion),
count(*) as cantidad_servicio
    FROM REEAVISO,
			afiliados,
			regionales,
			patologia,
			amdetaut,
			redaviso
  WHERE ( afiliados.tip_documento = REEAVISO.TP_IDENT_AFIL ) AND  
         ( afiliados.num_documento = REEAVISO.NR_IDENT_AFIL ) AND
   			( reeaviso.cd_patologia = patologia.cod_patologia) and
			( afiliados.cod_regional = regionales.cod_regional) and 
			( redaviso.cd_aviso = reeaviso.cd_aviso ) and 
			( amdetaut.cd_regional = redaviso.cd_regional) and
			( amdetaut.tabla = 'dia') and
			( amdetaut.id_autorizador = redaviso.id_autorizador) and
			( amdetaut.no_solicitud = redaviso.no_solicitud)
 GROUP BY afiliados.cod_departamento_res,
patologia.descripcion,
afiliados.cod_ciudad_res,
afiliados.pri_apellido,
afiliados.seg_apellido,
afiliados.pri_nombre,
afiliados.Seg_nombre,
afiliados.tip_documento,
afiliados.num_documento,
REEAVISO.cd_aviso,
REEAVISO.fec_aviso,
patologia.cod_amparo,
datediff(yy,afiliados.fec_nacimiento,getdate()),
afiliados.cod_sexo,
AMDETAUT.cd_servicio,
convert(char(100),observacion)
ORDER BY reeaviso.cd_aviso

