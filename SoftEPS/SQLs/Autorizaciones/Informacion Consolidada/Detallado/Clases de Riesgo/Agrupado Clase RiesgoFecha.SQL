SELECT TINCAUSE.DS_CausaE, AMENCAUT.Fec_Autorizacion,regionales.nom_regional,count(distinct (AMENCAUT.Cd_Regional + AMENCAUT.Id_Autorizador + AMENCAUT.No_Solicitud)) AS CuentaDeAutorizaciones,Count(AMDETAUT.Cantidad) AS CuentaDeServicios, Sum(AMDETAUT.Cantidad) AS SumaDeServicios, Sum(AMDETAUT.Valor) AS SumaDeValor
FROM TINCAUSE,AMENCAUT,AMDETAUT,regionales 
WHERE (AMENCAUT.Cd_Regional = AMDETAUT.Cd_Regional AND 
      AMENCAUT.Id_Autorizador = AMDETAUT.Id_Autorizador AND 
      AMENCAUT.No_Solicitud = AMDETAUT.No_Solicitud) AND 
      AMENCAUT.Causa_Externa *= TINCAUSE.CD_CausaE  AND
      AMENCAUT.Cd_Regional = regionales.COD_regional AND
	  (AMDETAUT.Tabla = 'MAP' OR AMDETAUT.Tabla = 'MED') AND
       AMENCAUT.Fec_Autorizacion >= "2001/10/01" AND
       AMENCAUT.Fec_Autorizacion <= "2001/10/31"
GROUP BY TINCAUSE.DS_CausaE, AMENCAUT.Fec_Autorizacion,regionales.nom_regional 
ORDER BY TINCAUSE.DS_CausaE, AMENCAUT.Fec_Autorizacion DESC,regionales.nom_regional



