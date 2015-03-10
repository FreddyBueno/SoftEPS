SELECT regionales.nom_regional, TINAUTME.Ds_TipoAutorizacion, AMDETAUT.Nivel, Count(AMDETAUT.Cantidad) AS CuentaDeServicios,Sum(AMDETAUT.Cantidad) AS SumaDeServicios, Sum(AMDETAUT.Valor) AS SumaDeValor
FROM UDSETABL,TINAUTME,AMDETAUT,regionales,AMENCAUT
WHERE (AMENCAUT.Cd_Regional = AMDETAUT.Cd_Regional AND 
      AMENCAUT.Id_Autorizador = AMDETAUT.Id_Autorizador AND 
      AMENCAUT.No_Solicitud = AMDETAUT.No_Solicitud) AND 
	  UDSETABL.GRUPO *= TINAUTME.Cd_TipoAutorizacion AND 
	  AMDETAUT.Tabla *=UDSETABL.TABLA AND
      AMDETAUT.Cd_Servicio *= UDSETABL.CODIGO  AND
      AMDETAUT.Cd_Regional *= regionales.cod_regional AND
	  (AMDETAUT.Tabla = 'MAP' OR AMDETAUT.Tabla = 'MED') AND
       AMENCAUT.Fec_Autorizacion >= "2001/11/01" AND
       AMENCAUT.Fec_Autorizacion <= "2001/11/30"
GROUP BY regionales.nom_regional,TINAUTME.Ds_TipoAutorizacion, AMDETAUT.Nivel
ORDER BY regionales.nom_regional,TINAUTME.Ds_TipoAutorizacion, AMDETAUT.Nivel

