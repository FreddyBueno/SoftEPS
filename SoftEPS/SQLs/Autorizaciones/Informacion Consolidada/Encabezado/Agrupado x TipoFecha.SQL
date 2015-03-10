SELECT TINAUTME.Ds_TipoAutorizacion, AMENCAUT.Fec_Autorizacion,Regionales.nom_regional,count(distinct (AMENCAUT.Cd_Regional + AMENCAUT.Id_Autorizador + AMENCAUT.No_Solicitud)) AS CuentaDeAutorizaciones,Count(AMDETAUT.Cantidad) AS CuentaDeServicios, Sum(AMDETAUT.Cantidad) AS SumaDeServicios, Sum(AMDETAUT.Valor) AS SumaDeValor
FROM UDSETABL,TINAUTME,AMENCAUT,AMDETAUT,regionales
WHERE (AMENCAUT.Cd_Regional = AMDETAUT.Cd_Regional AND 
      AMENCAUT.Id_Autorizador = AMDETAUT.Id_Autorizador AND 
      AMENCAUT.No_Solicitud = AMDETAUT.No_Solicitud) AND 
      (AMDETAUT.Tabla *= UDSETABL.TABLA AND 
      AMDETAUT.Cd_Servicio *= UDSETABL.CODIGO) AND
	  UDSETABL.GRUPO *= TINAUTME.Cd_TipoAutorizacion AND 
      AMENCAUT.Cd_Regional *= regionales.cod_regional AND
      (AMDETAUT.Tabla = 'MAP' OR AMDETAUT.Tabla = 'MED') AND
       AMENCAUT.Fec_Autorizacion >= "2001/11/01" AND
       AMENCAUT.Fec_Autorizacion <= "2001/11/30"

GROUP BY TINAUTME.Ds_TipoAutorizacion, AMENCAUT.Fec_Autorizacion,TINREGIO.Descripcion
ORDER BY TINAUTME.Ds_TipoAutorizacion, AMENCAUT.Fec_Autorizacion DESC,TINREGIO.Descripcion

