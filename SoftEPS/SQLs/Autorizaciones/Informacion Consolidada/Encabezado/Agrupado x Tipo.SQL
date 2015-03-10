SELECT TINAUTME.Ds_TipoAutorizacion, Count(AMDETAUT.Cantidad) AS CuentaDeServicios,Sum(AMDETAUT.Cantidad) AS SumaDeServicios, Sum(AMDETAUT.Valor) AS SumaDeValor
FROM UDSETABL,TINAUTME,AMDETAUT, AMENCAUT
WHERE (AMENCAUT.Cd_Regional *= AMDETAUT.Cd_Regional AND 
      AMENCAUT.Id_Autorizador *= AMDETAUT.Id_Autorizador AND 
      AMENCAUT.No_Solicitud *= AMDETAUT.No_Solicitud) AND
		UDSETABL.GRUPO *= TINAUTME.Cd_TipoAutorizacion AND 
      AMDETAUT.Tabla *= UDSETABL.TABLA  AND 
      AMDETAUT.Cd_Servicio *= UDSETABL.CODIGO  AND
      (AMDETAUT.Tabla = 'MAP' OR AMDETAUT.Tabla = 'MED') AND
       AMENCAUT.Fec_Autorizacion >= "2001/10/01" AND
       AMENCAUT.Fec_Autorizacion <= "2001/10/30"
GROUP BY TINAUTME.Ds_TipoAutorizacion
ORDER BY TINAUTME.Ds_TipoAutorizacion

