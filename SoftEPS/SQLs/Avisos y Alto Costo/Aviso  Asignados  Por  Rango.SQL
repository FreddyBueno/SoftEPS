SELECT departamentos.nom_Departamento as Origen_Usuario,
afiliados.TIP_documento as regimen,
REEAVISO.CD_AVISO,
REEAVISO.TP_IDENT_AFIL,
REEAVISO.NR_IDENT_AFIL,
REDAVISO.NO_SOLICITUD,
UDSETABL.DESCRIPCION,
patologia.Descripcion, 
SUM(R.VALOR_TOTAL)
FROM REEAVISO,REDAVISO,patologia,AMDETAUT X,UDSETABL,afiliados,departamentos, AMDETAUT R
WHERE 	REDAVISO.CD_AVISO = REEAVISO.CD_AVISO AND
		REEAVISO.CD_PATOLOGIA = patologia.COD_Patologia AND
		REDAVISO.NO_SOLICITUD = X.No_Solicitud AND
		REDAVISO.CD_REGIONAL = X.Cd_Regional AND
		REDAVISO.ID_AUTORIZADOR  =  X.Id_Autorizador AND
		R.No_Solicitud  =  X.No_Solicitud AND
		R.Cd_Regional  =  X.Cd_Regional AND
		R.Id_Autorizador  =  X.Id_Autorizador AND
		X.Tabla = UDSETABL.TABLA AND
		X.Cd_Servicio = UDSETABL.CODIGO AND
		afiliados.cod_departamento_res = departamentos.COD_Departamento AND
		REEAVISO.TP_IDENT_AFIL = afiliados.TIP_documento AND
		REEAVISO.NR_IDENT_AFIL = afiliados.num_documento AND
		UDSETABL.TABLA  =  'DIA' AND
		X.Tabla = 'DIA' AND
		R.Tabla <> 'DIA'  AND
		REEAVISO.CD_AVISO >= convert(integer, "2550"	) and
		REEAVISO.CD_AVISO <= convert(integer, "2560")
GROUP BY departamentos.nom_Departamento,
afiliados.TIP_documento,
REEAVISO.CD_AVISO,
REEAVISO.TP_IDENT_AFIL,
REEAVISO.NR_IDENT_AFIL,
REDAVISO.NO_SOLICITUD,
UDSETABL.DESCRIPCION,
patologia.Descripcion
ORDER BY REEAVISO.CD_AVISO



