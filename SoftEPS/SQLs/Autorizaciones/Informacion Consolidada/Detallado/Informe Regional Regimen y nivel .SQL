SELECT regionales.nom_regional,afiliados.cod_tipo_afil,AMDETAUT.Nivel, count(distinct (AMENCAUT.Cd_Regional + AMENCAUT.Id_Autorizador + AMENCAUT.No_Solicitud)) AS CuentaDeAutorizaciones,Count(AMDETAUT.Cantidad) AS CuentaDeServicios, Sum(AMDETAUT.Cantidad) AS SumaDeServicios, Sum(AMDETAUT.VALOR_TOTAL) AS SumaDeValor
FROM AMENCAUT,AMDETAUT,regionales,afiliados
WHERE (AMENCAUT.Cd_Regional = AMDETAUT.Cd_Regional AND 
      AMENCAUT.Id_Autorizador = AMDETAUT.Id_Autorizador AND 
      AMENCAUT.No_Solicitud = AMDETAUT.No_Solicitud) AND 
      (AMDETAUT.Tabla = 'MAP' OR AMDETAUT.Tabla = 'MAP') AND  
      AMENCAUT.Cd_Regional = regionales.COD_Regional AND
	  AMENCAUT.Tp_Ident_Afilia = afiliados.tip_documento and 
	  AMENCAUT.Nr_Ident_Afilia = afiliados.num_documento and 
      AMENCAUT.Fec_Autorizacion >= "2001/11/01" AND
      AMENCAUT.Fec_Autorizacion <= "2001/11/30" AND 
	  AMENCAUT.Cd_Regional = "101"
GROUP BY  afiliados.cod_tipo_afil,regionales.nom_regional,AMDETAUT.Nivel
ORDER BY afiliados.cod_tipo_afil


