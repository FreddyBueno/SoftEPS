SELECT regionales.nom_regional,afiliados.cod_tipo_afil, count(distinct (AMENCAUT.Cd_Regional + AMENCAUT.Id_Autorizador + AMENCAUT.No_Solicitud)) AS CuentaDeAutorizaciones,Count(AMDETAUT.Cantidad) AS CuentaDeServicios, Sum(AMDETAUT.Cantidad) AS SumaDeServicios, Sum(AMDETAUT.VALOR_TOTAL) AS SumaDeValor
FROM AMENCAUT,AMDETAUT,regionales,afiliados
WHERE (AMENCAUT.Cd_Regional = AMDETAUT.Cd_Regional AND 
      AMENCAUT.Id_Autorizador = AMDETAUT.Id_Autorizador AND 
      AMENCAUT.No_Solicitud = AMDETAUT.No_Solicitud) AND 
      (AMDETAUT.Tabla = 'MAP' OR AMDETAUT.Tabla = 'MED') AND  
      AMENCAUT.Cd_Regional = regionales.COD_Regional AND
	  AMENCAUT.Tp_Ident_Afilia *= afiliados.tip_documento and 
	  AMENCAUT.Nr_Ident_Afilia *= afiliados.num_documento and 
      AMENCAUT.Fec_Autorizacion >= "2001/11/01" AND
       AMENCAUT.Fec_Autorizacion <= "2001/11/30"
GROUP BY regionales.nom_regional, afiliados.cod_tipo_afil 
ORDER BY regionales.nom_regional, afiliados.cod_tipo_afil


