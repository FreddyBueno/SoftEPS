SELECT regionales.nom_regional,   
         count(distinct (AMENCAUT.Cd_Regional + AMENCAUT.Id_Autorizador + AMENCAUT.No_Solicitud)),   
         Count(AMDETAUT.Cantidad),   
         Sum(AMDETAUT.Cantidad),   
         Sum(AMDETAUT.VALOR_TOTAL)  
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
         (AMENCAUT.Fec_Autorizacion >= "2001/10/01") AND  
         (AMENCAUT.Fec_Autorizacion <= "2001/10/30")   
GROUP BY regionales.nom_regional  
ORDER BY regionales.nom_regional ASC

