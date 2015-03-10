SELECT regionales.nom_regional,  AMDETAUT.No_Solicitud, AMENCAUT.Fec_Autorizacion, AMENCAUT.Tp_Ident_Afilia, AMENCAUT.Nr_Ident_Afilia, afiliados.PRI_APELLIDO, afiliados.SEG_APELLIDO, afiliados.PRI_NOMBRE, afiliados.SEG_NOMBRE, afiliados.cod_tipo_afil, datediff(yy,fec_nacimiento,getdate()) as edad, afiliados.cod_SEXO, afiliados.cod_ESTRATO, AMENCAUT.Nr_Ident_Prest, AMENCAUT.Nr_Ident_Prest_Ips, AMDETAUT.Tabla, AMDETAUT.Cd_Servicio, UDSETABL.DESCRIPCION, AMDETAUT.Cantidad, AMDETAUT.Valor
FROM afiliados,AMENCAUT,AMDETAUT,UDSETABL,regionales
WHERE (AMENCAUT.No_Solicitud = AMDETAUT.No_Solicitud AND 
	  AMENCAUT.Id_Autorizador = AMDETAUT.Id_Autorizador AND 
	  AMENCAUT.Cd_Regional = AMDETAUT.Cd_Regional) AND 
	  (AMENCAUT.Nr_Ident_Afilia *= afiliados.num_documento AND 
	  AMENCAUT.Tp_Ident_Afilia *= afiliados.tip_documento) AND 
	  (AMDETAUT.Tabla *= UDSETABL.TABLA AND 
      AMDETAUT.Cd_Servicio *= UDSETABL.CODIGO) AND
      AMENCAUT.Cd_Regional *= regionales.COD_regional AND	         
       (AMDETAUT.Tabla = 'MAP' OR AMDETAUT.Tabla = 'MED') AND
       AMENCAUT.Fec_Autorizacion >= "2001/09/01" AND
       AMENCAUT.Fec_Autorizacion <= "2001/09/30"
ORDER BY AMDETAUT.Cd_Regional, AMDETAUT.Id_Autorizador, AMDETAUT.No_Solicitud



