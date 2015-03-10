SELECT regionales.nom_regional,
              afiliados.cod_SEXO,
              datediff(yy,fec_nacimiento,getdate()) as edad,
              convert(varchar(255),amdetaut1.observacion),
              count(distinct (AMENCAUT.Cd_Regional + AMENCAUT.Id_Autorizador + AMENCAUT.No_Solicitud)) AS CuentaDeAutorizaciones,
             Count(AMDETAUT.Cantidad) AS CuentaDeServicios, 
             Sum(AMDETAUT.Cantidad) AS SumaDeServicios, 
             Sum(AMDETAUT.VALOR_TOTAL) AS SumaDeValor
FROM  AMENCAUT,
             AMDETAUT,
             regionales,
             afiliados,
             AMDETAUT AMDETAUT1
WHERE (AMENCAUT.Cd_Regional = AMDETAUT.Cd_Regional AND 
                 AMENCAUT.Id_Autorizador = AMDETAUT.Id_Autorizador AND 
                AMENCAUT.No_Solicitud = AMDETAUT.No_Solicitud) AND 
                (AMDETAUT.Tabla <> 'DIA') AND 
                (AMENCAUT.Cd_Regional = AMDETAUT1.Cd_Regional AND 
               AMENCAUT.Id_Autorizador = AMDETAUT1.Id_Autorizador AND 
               AMENCAUT.No_Solicitud = AMDETAUT1.No_Solicitud) AND  
               (AMDETAUT1.Tabla = 'DIA') AND 
               afiliados.Cod_Regional = regionales.COD_Regional AND
	  AMENCAUT.Tp_Ident_Afilia = afiliados.tip_documento and 
	  AMENCAUT.Nr_Ident_Afilia = afiliados.num_documento and 
     (AMENCAUT.Fec_Autorizacion >= "2001/03/01" AND
      AMENCAUT.Fec_Autorizacion <= "2001/06/30")
GROUP BY regionales.nom_regional,
                   afiliados.cod_SEXO,
                   datediff(yy,fec_nacimiento,getdate()),
                   convert(varchar(255),amdetaut1.observacion)
ORDER BY  regionales.nom_regional,afiliados.cod_SEXO



