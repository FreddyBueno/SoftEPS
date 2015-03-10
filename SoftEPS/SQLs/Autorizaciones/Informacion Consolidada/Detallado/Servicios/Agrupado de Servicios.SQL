SELECT UDSETABL.DESCRIPCION,count(distinct (AMENCAUT.Cd_Regional + AMENCAUT.Id_Autorizador + AMENCAUT.No_Solicitud)) AS CuentaDeAutorizaciones,Count(AMDETAUT.Cantidad) AS CuentaDeServicios, Sum(AMDETAUT.Cantidad) AS SumaDeServicios, Sum(AMDETAUT.Valor) AS SumaDeValor
FROM UDSETABL,AMENCAUT,AMDETAUT
WHERE (AMENCAUT.Cd_Regional = AMDETAUT.Cd_Regional AND 
      AMENCAUT.Id_Autorizador = AMDETAUT.Id_Autorizador AND 
      AMENCAUT.No_Solicitud = AMDETAUT.No_Solicitud) AND 
      (AMDETAUT.Tabla *= UDSETABL.TABLA AND
	  AMDETAUT.Cd_Servicio *= UDSETABL.CODIGO) AND
      (AMDETAUT.Tabla = 'MAP' OR AMDETAUT.Tabla = 'MED') AND
       AMENCAUT.Fec_Autorizacion >= "2001/09/01" AND
       AMENCAUT.Fec_Autorizacion <= "2001/09/30"
GROUP BY UDSETABL.DESCRIPCION 
ORDER BY UDSETABL.DESCRIPCION


