SELECT AMDETAUT.Cd_Regional, AMDETAUT.Id_Autorizador, AMDETAUT.No_Solicitud, AMENCAUT.Fec_Autorizacion, 
AMENCAUT.Tp_Ident_Afilia, AMENCAUT.Nr_Ident_Afilia, afiliados.pri_apellido,afiliados.seg_apellido,afiliados.pri_nombre,
 afiliados.seg_nombre,afiliados.cod_tipo_afil,afiliados.fec_nacimiento,datediff(yy,fec_nacimiento,getdate()) as edad,afiliados.cod_sexo,afiliados.cod_estrato, AMENCAUT.Nr_Ident_Prest, AMENCAUT.Nr_Ident_Prest_Ips, AMDETAUT.Tabla, AMDETAUT.Cd_Servicio, AMDETAUT.Cantidad, AMDETAUT.Valor
FROM AMENCAUT,AMDETAUT,afiliados
WHERE (AMENCAUT.No_Solicitud = AMDETAUT.No_Solicitud AND 
	  AMENCAUT.Id_Autorizador = AMDETAUT.Id_Autorizador AND 
	  AMENCAUT.Cd_Regional = AMDETAUT.Cd_Regional) AND 
	  (AMENCAUT.Nr_Ident_Afilia =afiliados.num_documento AND 
	  AMENCAUT.Tp_Ident_Afilia = afiliados.tip_documento) AND
                  AMENCAUT.No_Autorizacion = "1" 
ORDER BY AMENCAUT.Fec_Autorizacion,AMDETAUT.Cd_Regional, AMDETAUT.Id_Autorizador, AMDETAUT.No_Solicitud
