SELECT regionales.nom_regional, AMENCAUT.Fec_Autorizacion, count(distinct (AMENCAUT.Cd_Regional + AMENCAUT.Id_Autorizador + AMENCAUT.No_Solicitud)) AS CuentaDeAutorizaciones,Sum(AMENCAUT.Valor_Copago) AS SumaDeCopagos, Sum(AMENCAUT.Valor_CuotaM) AS SumaDeCuotaModeradora
FROM regionales,AMENCAUT
WHERE (AMENCAUT.Cd_Regional *= regionales.cod_regional) AND
       AMENCAUT.Fec_Autorizacion >= "2001/10/01" AND
       AMENCAUT.Fec_Autorizacion <= "2001/10/31"
GROUP BY regionales.nom_regional, AMENCAUT.Fec_Autorizacion
ORDER BY regionales.nom_regional, AMENCAUT.Fec_Autorizacion DESC



