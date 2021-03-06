SELECT UDSETABL.DESCRIPCION, Count(AMDETAUT.Cantidad) AS Cantidad
FROM UDSETABL,AMENCAUT,AMDETAUT
WHERE AMENCAUT.Cd_Regional = AMDETAUT.Cd_Regional AND 
      AMENCAUT.Id_Autorizador = AMDETAUT.Id_Autorizador AND 
      AMENCAUT.No_Solicitud = AMDETAUT.No_Solicitud AND 
      (AMDETAUT.Tabla  *= UDSETABL.TABLA  AND
	  AMDETAUT.Cd_Servicio *= UDSETABL.CODIGO ) AND
      AMDETAUT.Tabla = 'DIA' AND
       AMENCAUT.Fec_Autorizacion >= "2001/10/01" AND
       AMENCAUT.Fec_Autorizacion <= "2001/10/31"  
GROUP BY UDSETABL.DESCRIPCION 
ORDER BY Cantidad DESC

