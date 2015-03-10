SELECT REDAVISO.CD_AVISO, regionales.nom_regional,  AMDETAUT.No_Solicitud, AMENCAUT.No_Autorizacion,AMENCAUT.Fec_Autorizacion, AMENCAUT.Tp_Ident_Afilia, AMENCAUT.Nr_Ident_Afilia, afiliados.PRI_APELLIDO, afiliados.SEG_APELLIDO, afiliados.PRI_NOMBRE, afiliados.SEG_NOMBRE, afiliados.cod_tipo_afil,  datediff(yy,fec_nacimiento,getdate()) as edad, afiliados.cod_SEXO, afiliados.cod_ESTRATO, AMENCAUT.Nr_Ident_Prest, AMENCAUT.Nr_Ident_Prest_Ips, AMDETAUT.Tabla, AMDETAUT.Cd_Servicio, UDSETABL.DESCRIPCION, AMDETAUT.Cantidad, AMDETAUT.Valor
FROM REDAVISO,afiliados,AMENCAUT,AMDETAUT,UDSETABL,regionales
WHERE (REDAVISO.NO_SOLICITUD = AMENCAUT.No_Solicitud AND 
	  REDAVISO.ID_AUTORIZADOR = AMENCAUT.Id_Autorizador AND 
	  REDAVISO.CD_REGIONAL = AMENCAUT.Cd_Regional) AND 
	  (REDAVISO.NO_SOLICITUD = AMDETAUT.No_Solicitud AND 
	  REDAVISO.ID_AUTORIZADOR = AMDETAUT.Id_Autorizador AND 
	  REDAVISO.CD_REGIONAL = AMDETAUT.Cd_Regional) AND 
	  (AMENCAUT.Nr_Ident_Afilia *= afiliados.num_documento AND 
	  AMENCAUT.Tp_Ident_Afilia *= afiliados.TIP_documento) AND 
	  (AMDETAUT.Tabla *= UDSETABL.TABLA AND 
      AMDETAUT.Cd_Servicio *= UDSETABL.CODIGO) AND
      AMENCAUT.Cd_Regional *= regionales.COD_Regional AND
      AMENCAUT.Fec_Autorizacion >= "2001/11/01" AND
       AMENCAUT.Fec_Autorizacion <= "2001/11/30"
ORDER BY REDAVISO.CD_AVISO, REDAVISO.CD_REGIONAL , REDAVISO.ID_AUTORIZADOR , REDAVISO.NO_SOLICITUD 


