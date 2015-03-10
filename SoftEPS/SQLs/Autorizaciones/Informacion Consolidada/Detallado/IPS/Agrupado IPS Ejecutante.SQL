SELECT prestadores.cod_PRESTADOR, AMENCAUT.Nr_Ident_Prest_Ips, regionales.nom_regional,count(distinct (AMENCAUT.Cd_Regional + AMENCAUT.Id_Autorizador + AMENCAUT.No_Solicitud)) AS CuentaDeAutorizaciones,Count(AMDETAUT.Cantidad) AS CuentaDeServicios,Sum(AMDETAUT.Cantidad) AS SumaDeServicios, Sum(AMDETAUT.Valor) AS SumaDeValor
FROM prestadores,AMENCAUT,AMDETAUT,regionales
WHERE (AMENCAUT.Cd_Regional = AMDETAUT.Cd_Regional AND 
      AMENCAUT.Id_Autorizador = AMDETAUT.Id_Autorizador AND 
      AMENCAUT.No_Solicitud = AMDETAUT.No_Solicitud) AND 
      AMENCAUT.Nr_Ident_Prest_Ips *= convert(varchar(18),prestadores.COD_PRESTADOR) AND
      AMENCAUT.Cd_Regional *= regionales.COD_Regional AND
	  (AMDETAUT.Tabla = 'MAP' OR AMDETAUT.Tabla = 'MED') AND
       AMENCAUT.Fec_Autorizacion >= "2001/12/01" AND
       AMENCAUT.Fec_Autorizacion <= "2001/12/31"
GROUP BY prestadores.COD_PRESTADOR, AMENCAUT.Nr_Ident_Prest_Ips,regionales.nom_regional 
ORDER BY prestadores.COD_PRESTADOR, AMENCAUT.Nr_Ident_Prest_Ips,regionales.nom_regional 


