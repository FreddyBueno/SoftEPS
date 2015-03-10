SELECT TINCAUSE.DS_CausaE,regionales.nom_regional,AMDETAUT.Nivel,afiliados.cod_tipo_afil,count(distinct (AMENCAUT.Cd_Regional + AMENCAUT.Id_Autorizador + AMENCAUT.No_Solicitud)) AS CuentaDeAutorizaciones,Count(AMDETAUT.Cantidad) AS CuentaDeServicios, Sum(AMDETAUT.Cantidad) AS SumaDeServicios, Sum(AMDETAUT.Valor) AS SumaDeValor
FROM AMENCAUT,AMDETAUT,TINCAUSE,regionales,afiliados
WHERE (AMENCAUT.Cd_Regional = AMDETAUT.Cd_Regional AND 
      AMENCAUT.Id_Autorizador = AMDETAUT.Id_Autorizador AND 
      AMENCAUT.No_Solicitud = AMDETAUT.No_Solicitud) AND 
      AMENCAUT.Causa_Externa  *= TINCAUSE.CD_CausaE AND
      AMENCAUT.Cd_Regional *= regionales.cod_regional AND
	  (AMENCAUT.Nr_Ident_Afilia *= afiliados.num_documento AND 
	  AMENCAUT.Tp_Ident_Afilia *= afiliados.tip_documento) AND 
	  (AMDETAUT.Tabla = 'MAP' OR AMDETAUT.Tabla = 'MED') AND
       AMENCAUT.Fec_Autorizacion >= "2001/10/01" AND
       AMENCAUT.Fec_Autorizacion <= "2001/10/31"
GROUP BY TINCAUSE.DS_CausaE,regionales.nom_regional,AMDETAUT.Nivel,afiliados.cod_tipo_afil
ORDER BY TINCAUSE.DS_CausaE,regionales.nom_regional,AMDETAUT.Nivel,afiliados.cod_tipo_afil

