select
AMDETAUT.cd_servicio,
datediff(yy,afiliados.fec_nacimiento,getdate()) as edad,
convert (char,AMDETAUT.Observacion) as Servicio,
 count(*), SUM(VALOR_TOTAL) as Valor_total
  FROM 	AMDETAUT,  AMENCAUT,departamentos,afiliados
WHERE ( AMDETAUT.Cd_Regional = AMENCAUT.Cd_Regional ) and  
                ( AMDETAUT.Id_Autorizador = AMENCAUT.Id_Autorizador ) and  
                ( AMDETAUT.No_Solicitud = AMENCAUT.No_Solicitud ) and
                ( AMDETAUT.Tabla = 'map' ) AND  
               	(afiliados.tip_documento = AMENCAUT.TP_IDENT_AFILIA) AND
		(afiliados.num_documento = AMENCAUT.NR_IDENT_AFILIA) AND
		(afiliados.cod_departamento_res = departamentos.cod_departamento) and
		(AMENCAUT.Fec_Autorizacion >= "2001/01/01") AND 
		(AMENCAUT.Fec_Autorizacion <= "2001/12/30") and
	       ( (AMDETAUT.cd_servicio = "17640")) AND 
               (AMDETAUT.Cd_Regional  = "101")
 group by  AMDETAUT.cd_servicio,convert (char,AMDETAUT.Observacion),datediff(yy,afiliados.fec_nacimiento,getdate())



 
