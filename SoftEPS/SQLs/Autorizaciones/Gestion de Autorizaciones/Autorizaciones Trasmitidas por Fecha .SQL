SELECT   AMENCAUT.Cd_Regional,regionales.nom_regional, AMENCAUT.Id_Autorizador,MAX(AMENCAUT.No_Solicitud),MAX(AMENCAUT.Fec_modificado), count(distinct (AMENCAUT.Cd_Regional + AMENCAUT.Id_Autorizador + AMENCAUT.No_Solicitud)) as Cantidad_Trasmitidas,sum(AMDETAUT.VALOR_TOTAL) as Valor_Total 
FROM AMENCAUT,regionales,AMDETAUT
where regionales.cod_regional=AMENCAUT.Cd_Regional and
	(AMENCAUT.Cd_Regional = AMDETAUT.Cd_Regional AND 
     AMENCAUT.Id_Autorizador = AMDETAUT.Id_Autorizador AND 
     AMENCAUT.No_Solicitud = AMDETAUT.No_Solicitud) AND
	 AMDETAUT.Tabla<>"DIA" and
	  AMENCAUT.Fec_modificado >= "2001/11/01" and
	 AMENCAUT.Fec_modificado <= "2001/11/30" 
	group by AMENCAUT.Cd_Regional,regionales.nom_regional,AMENCAUT.Id_Autorizador
order by MAX(AMENCAUT.Fec_modificado)

