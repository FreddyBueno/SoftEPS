SELECT UDPRESTA.DS_PRESTADOR, AMENCAUT.Nr_Ident_Prest_Sol,TINREGIO.Descripcion,count(distinct (AMENCAUT.Cd_Regional + AMENCAUT.Id_Autorizador + AMENCAUT.No_Solicitud)) AS CuentaDeAutorizaciones,Count(AMDETAUT.Cantidad) AS CuentaDeServicios, Sum(AMDETAUT.Cantidad) AS SumaDeServicios, Sum(AMDETAUT.Valor) AS SumaDeValor
FROM UDPRESTA,AMENCAUT,AMDETAUT,TINREGIO 
WHERE (AMENCAUT.Cd_Regional = AMDETAUT.Cd_Regional AND 
      AMENCAUT.Id_Autorizador = AMDETAUT.Id_Autorizador AND 
      AMENCAUT.No_Solicitud = AMDETAUT.No_Solicitud) AND 
      AMENCAUT.Nr_Ident_Prest_Sol *= UDPRESTA.CD_PRESTADOR AND
      AMENCAUT.Cd_Regional = TINREGIO.CD_Region AND
	  (AMDETAUT.Tabla = 'MAP' OR AMDETAUT.Tabla = 'MED') AND
       AMENCAUT.Fec_Autorizacion >= "2001/11/01" AND
       AMENCAUT.Fec_Autorizacion <= "2001/11/30"	
GROUP BY UDPRESTA.DS_PRESTADOR, AMENCAUT.Nr_Ident_Prest_Sol,TINREGIO.Descripcion
ORDER BY UDPRESTA.DS_PRESTADOR, AMENCAUT.Nr_Ident_Prest_Sol,TINREGIO.Descripcion

