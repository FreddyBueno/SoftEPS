SELECT regionales.nom_regional,convert(money,sum(CASE WHEN Nivel='1' THEN AMDETAUT.VALOR_TOTAL ELSE 0 END)) AS Nivel_I,convert(money,sum(CASE WHEN Nivel='2' THEN AMDETAUT.VALOR_TOTAL ELSE 0 END)) AS Nivel_II,
convert(money,sum(CASE WHEN Nivel='3' THEN AMDETAUT.VALOR_TOTAL ELSE 0 END)) AS Nivel_III,convert(money,sum(CASE WHEN Nivel='4' THEN AMDETAUT.VALOR_TOTAL ELSE 0 END)) AS Nivel_IV,
convert(money,sum(CASE WHEN Nivel=null THEN AMDETAUT.VALOR_TOTAL ELSE 0 END)) AS Nivel_NULL,convert(money,sum(AMDETAUT.VALOR_TOTAL)) AS TOTAL
FROM AMENCAUT,AMDETAUT,regionales,afiliados
WHERE (AMENCAUT.Cd_Regional = AMDETAUT.Cd_Regional AND 
      AMENCAUT.Id_Autorizador = AMDETAUT.Id_Autorizador AND 
      AMENCAUT.No_Solicitud = AMDETAUT.No_Solicitud) AND 
      (AMDETAUT.Tabla = 'MAP' OR AMDETAUT.Tabla = 'MED') AND  
      AMENCAUT.Cd_Regional = regionales.COD_Regional AND
	  AMENCAUT.Tp_Ident_Afilia *= afiliados.tip_documento and 
	  AMENCAUT.Nr_Ident_Afilia *= afiliados.num_documento and 
      AMENCAUT.Fec_Autorizacion >= convert(datetime,"01/02/2002",103) AND
       AMENCAUT.Fec_Autorizacion <= convert(datetime,"28/02/2002",103)
GROUP BY regionales.nom_regional
ORDER BY regionales.nom_regional








