SELECT REEAVISO.CD_AVISO,
		REDAVISO.NO_SOLICITUD,
		REDAVISO.CD_REGIONAL,
		REDAVISO.ID_AUTORIZADOR, 
		REEAVISO.CD_PATOLOGIA ,
		REEAVISO.TP_IDENT_AFIL ,
		REEAVISO.NR_IDENT_AFIL 
FROM 	REEAVISO, afiliados, REDAVISO
WHERE REEAVISO.CD_AVISO= REDAVISO.CD_AVISO and
		REEAVISO.TP_IDENT_AFIL = afiliados.TIP_documento AND
		REEAVISO.NR_IDENT_AFIL = afiliados.NUM_documento and
		REEAVISO.CD_AVISO =convert(integer, "2198")  

      
	
