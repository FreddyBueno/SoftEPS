SELECT regionales.nom_regional,  AMENCAUT.Fec_Autorizacion, count(distinct (AMENCAUT.Cd_Regional + AMENCAUT.Id_Autorizador + AMENCAUT.No_Solicitud)) AS CuentaDeAutorizaciones,Count(AMDETAUT.Cantidad) AS CuentaDeServicios,Sum(AMDETAUT.Cantidad) AS SumaDeServicios, Sum(AMDETAUT.Valor) AS SumaDeValor
FROM regionales,AMENCAUT,AMDETAUT
WHERE (AMENCAUT.Cd_Regional *= AMDETAUT.Cd_Regional AND 
      AMENCAUT.Id_Autorizador *= AMDETAUT.Id_Autorizador AND 
      AMENCAUT.No_Solicitud *= AMDETAUT.No_Solicitud) AND 
      (AMENCAUT.Cd_Regional = regionales.COD_Regional) AND 
	  (AMDETAUT.Tabla = 'MAP' OR AMDETAUT.Tabla = 'MED') AND
       AMENCAUT.Fec_Autorizacion >= "2001/09/01" AND
       AMENCAUT.Fec_Autorizacion <= "2001/09/30"       
GROUP BY regionales.nom_regional, AMENCAUT.Fec_Autorizacion
ORDER BY regionales.nom_regional, AMENCAUT.Fec_Autorizacion DESC


