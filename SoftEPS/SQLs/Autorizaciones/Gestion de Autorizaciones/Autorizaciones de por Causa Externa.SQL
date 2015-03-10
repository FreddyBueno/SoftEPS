SELECT regionales.nom_regional,  AMDETAUT.No_Solicitud, AMENCAUT.No_Autorizacion,AMENCAUT.Fec_Autorizacion, AMENCAUT.Tp_Ident_Afilia, AMENCAUT.Nr_Ident_Afilia, afiliados.pri_apellido, afiliados.seg_apellido, afiliados.pri_nombre, afiliados.seg_nombre, afiliados.cod_tipo_afil, datediff(yy,fec_nacimiento,getdate()) as edad, afiliados.cod_sexo, afiliados.cod_estrato, AMENCAUT.Nr_Ident_Prest, AMENCAUT.Nr_Ident_Prest_Ips, AMDETAUT.Tabla, AMDETAUT.Cd_Servicio, UDSETABL.DESCRIPCION, AMDETAUT.Cantidad, AMDETAUT.Valor
FROM afiliados,AMENCAUT,AMDETAUT,UDSETABL,regionales
WHERE (AMENCAUT.No_Solicitud = AMDETAUT.No_Solicitud AND 
	  AMENCAUT.Id_Autorizador = AMDETAUT.Id_Autorizador AND 
	  AMENCAUT.Cd_Regional = AMDETAUT.Cd_Regional) AND 
	  (AMENCAUT.Nr_Ident_Afilia *= afiliados.num_documento AND 
	  AMENCAUT.Tp_Ident_Afilia *= afiliados.tip_documento) AND 
	  (AMDETAUT.Tabla *= UDSETABL.TABLA AND 
      AMDETAUT.Cd_Servicio *= UDSETABL.CODIGO) AND
      AMENCAUT.Cd_Regional *= regionales.cod_regional AND        
       AMENCAUT.Causa_Externa = "04" AND
       AMENCAUT.Fec_Autorizacion >= "2001/11/01" AND
       AMENCAUT.Fec_Autorizacion <= "2001/11/30"
ORDER BY AMDETAUT.Cd_Regional, AMDETAUT.Id_Autorizador, AMDETAUT.No_Solicitud, AMDETAUT.Tabla



