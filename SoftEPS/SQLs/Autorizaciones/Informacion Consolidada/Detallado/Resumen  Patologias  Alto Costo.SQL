SELECT regionales.nom_regional,patologia.Descripcion,afiliados.cod_tipo_afil, count(distinct (AMENCAUT.Cd_Regional + AMENCAUT.Id_Autorizador + AMENCAUT.No_Solicitud)) AS CuentaDeAutorizaciones,SUM(AMDETAUT.Cantidad) as Cantidad,SUM(AMDETAUT.VALOR_TOTAL) as Valor
FROM   afiliados,AMENCAUT, AMDETAUT, patologia,REDAVISO, regionales, REEAVISO
WHERE  patologia.cod_patologia = AMENCAUT.Tipo_Patologia  AND
		AMENCAUT.Tp_Ident_Afilia = afiliados.tip_documento  AND
       		AMENCAUT.Nr_Ident_Afilia = afiliados.num_documento  AND
		AMENCAUT.Cd_Regional = AMDETAUT.Cd_Regional  AND
		AMENCAUT.Id_Autorizador = AMDETAUT.Id_Autorizador AND
		AMENCAUT.No_Solicitud = AMDETAUT.No_Solicitud AND
		AMENCAUT.Cd_Regional = REDAVISO.CD_REGIONAL  AND
		AMENCAUT.Id_Autorizador = REDAVISO.ID_AUTORIZADOR AND
		AMENCAUT.No_Solicitud = REDAVISO.NO_SOLICITUD AND
                AMENCAUT.Cd_Regional = regionales.cod_regional AND
		patologia.CoD_Patologia = REEAVISO.CD_PATOLOGIA  AND
                AMDETAUT.Tabla <>'DIA' AND
  		AMENCAUT.Fec_Autorizacion >= "2001/01/01" AND
  		AMENCAUT.Fec_Autorizacion <= "2001/11/30"
GROUP BY patologia.Descripcion,afiliados.cod_tipo_afil,regionales.cod_regional
ORDER BY patologia.Descripcion,afiliados.cod_tipo_afil,regionales.cod_regional
           





