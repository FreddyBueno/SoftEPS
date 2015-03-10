SELECT AMENCAUT.ID_AUTORIZADOR, AMENCAUT.Fec_Autorizacion,regionales.nom_regional,count(distinct (AMENCAUT.Cd_Regional + AMENCAUT.Id_Autorizador + AMENCAUT.No_Solicitud)) AS CuentaDeAutorizaciones,Count(AMDETAUT.Cantidad) AS CuentaDeServicios,Sum(AMDETAUT.Cantidad) AS SumaDeServicios, Sum(AMDETAUT.Valor) AS SumaDeValor
FROM AMENCAUT,AMDETAUT,REGIONALES
WHERE (AMENCAUT.Cd_Regional = AMDETAUT.Cd_Regional AND 
       AMENCAUT.Id_Autorizador = AMDETAUT.Id_Autorizador AND 
       AMENCAUT.No_Solicitud = AMDETAUT.No_Solicitud) AND
       AMENCAUT.Cd_Regional *= REGIONALES.COD_Regional AND
      (AMDETAUT.Tabla = 'MAP' OR AMDETAUT.Tabla = 'MED') AND
       AMENCAUT.Fec_Autorizacion >= "2001/11/01" AND
       AMENCAUT.Fec_Autorizacion <= "2001/11/30"
GROUP BY AMENCAUT.ID_AUTORIZADOR, AMENCAUT.Fec_Autorizacion,regionales.nom_regional
ORDER BY AMENCAUT.ID_AUTORIZADOR, AMENCAUT.Fec_Autorizacion DESC,regionales.nom_regional




