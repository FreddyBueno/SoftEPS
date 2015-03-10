select  REEAVISO.CD_AVISO,afiliados.PRI_APELLIDO,afiliados.SEG_APELLIDO,afiliados.PRI_NOMBRE,afiliados.SEG_NOMBRE,afiliados.cod_tipo_afil,afiliados.COD_regional,afiliados.TIP_documento,afiliados.NUM_documento,AMDETAUT.Observacion,patologia.Descripcion,regionales.nom_regional
FROM  REEAVISO,afiliados,regionales,patologia,AMDETAUT,AMENCAUT
WHERE   AMENCAUT.Cd_Regional = AMDETAUT.Cd_Regional AND 
     		AMENCAUT.Id_Autorizador = AMDETAUT.Id_Autorizador AND 
     		AMENCAUT.No_Solicitud = AMDETAUT.No_Solicitud AND
		afiliados.TIP_documento  in (select AMENCAUT.Tp_Ident_Afilia from AMENCAUT) AND
       		afiliados.NUM_documento  in (Select AMENCAUT.Nr_Ident_Afilia  from AMENCAUT) AND
		afiliados.COD_regional= regionales.COD_Regional AND
		patologia.COD_Patologia = AMENCAUT.Tipo_Patologia  AND
		patologia.COD_Patologia = REEAVISO.CD_PATOLOGIA  AND
		AMDETAUT.Tabla ="DIA" AND
		REEAVISO.TP_IDENT_AFIL = afiliados.TIP_documento AND
		REEAVISO.NR_IDENT_AFIL = afiliados.NUM_documento 
ORDER BY REEAVISO.CD_AVISO


