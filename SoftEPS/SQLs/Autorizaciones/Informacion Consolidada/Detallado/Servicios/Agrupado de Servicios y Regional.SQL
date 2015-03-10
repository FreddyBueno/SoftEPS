SELECT procedimientos.DESCRIPCION, AMDETAUT.Cd_Servicio, regionales.nom_regional,count(distinct (AMENCAUT.Cd_Regional + AMENCAUT.Id_Autorizador + AMENCAUT.No_Solicitud)) AS CuentaDeAutorizaciones,Count(AMDETAUT.Cantidad) AS CuentaDeServicios, Sum(AMDETAUT.Cantidad) AS SumaDeServicios, Sum(AMDETAUT.Valor) AS SumaDeValor
FROM procedimientos,AMENCAUT,AMDETAUT,regionales
WHERE (AMENCAUT.Cd_Regional = AMDETAUT.Cd_Regional AND 
      AMENCAUT.Id_Autorizador = AMDETAUT.Id_Autorizador AND 
      AMENCAUT.No_Solicitud = AMDETAUT.No_Solicitud) AND 
      (AMDETAUT.Tabla  *= procedimientos.TABLA AND
	  AMDETAUT.Cd_Servicio *= procedimientos.CODIGO) AND
      (AMDETAUT.Tabla = 'MAP' OR AMDETAUT.Tabla = 'MED') AND  
      AMENCAUT.Cd_Regional *= regionales.COD_Regional AND
       AMENCAUT.Fec_Autorizacion >= "2001/11/01" AND
       AMENCAUT.Fec_Autorizacion <= "2001/11/30"
GROUP BY procedimientos.DESCRIPCION, AMDETAUT.Cd_Servicio,regionales.nom_regional 
ORDER BY procedimientos.DESCRIPCION, AMDETAUT.Cd_Servicio,regionales.nom_regional 


