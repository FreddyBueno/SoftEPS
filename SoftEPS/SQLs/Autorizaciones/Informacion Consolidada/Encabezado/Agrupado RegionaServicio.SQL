SELECT regionales.nom_regional,   
         count(distinct (AMENCAUT.Cd_Regional + AMENCAUT.Id_Autorizador + AMENCAUT.No_Solicitud)) AS CuentaDeAutorizaciones,   
         Count(AMDETAUT.Cantidad) AS CuentaDeServicios,   
         Sum(AMDETAUT.Cantidad) AS SumaDeServicios ,   
         Sum(AMDETAUT.VALOR_TOTAL) AS SumaDeValor  
    FROM AMENCAUT,   
         AMDETAUT,   
         regionales,   
         afiliados  
   WHERE ( AMENCAUT.Cd_Regional = AMDETAUT.Cd_Regional ) and  
         ( AMENCAUT.Id_Autorizador = AMDETAUT.Id_Autorizador ) and  
         ( AMENCAUT.No_Solicitud = AMDETAUT.No_Solicitud ) and  
         ( AMENCAUT.Cd_Regional *= regionales.COD_Regional ) and  
         ( AMENCAUT.Tp_Ident_Afilia *= afiliados.tip_documento ) and  
         ( AMENCAUT.Nr_Ident_Afilia *= afiliados.num_documento ) and  
         ((AMDETAUT.Tabla <> 'DIA')) AND  
         (AMENCAUT.Fec_Autorizacion >= "2001/08/01") AND  
         (AMENCAUT.Fec_Autorizacion <= "2001/08/31") AND
          AMDETAUT.Cd_Servicio = "12110"  
GROUP BY regionales.nom_regional  
ORDER BY regionales.nom_regional ASC	


