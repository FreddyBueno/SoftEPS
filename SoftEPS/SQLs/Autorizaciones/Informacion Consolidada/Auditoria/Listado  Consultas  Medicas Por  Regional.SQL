SELECT afiliados.cod_regional as Regional,
       amencaut.TP_IDENT_AFILIA,
       amencaut.NR_IDENT_AFILIA,
       (pri_apellido + ' '+ seg_apellido  + ' '+  pri_nombre  + ' '+  seg_nombre) as Nombre,
       amdetaut.tabla, 
       AMDETAUT.CD_SERVICIO,
       CONVERT(VARCHAR(255),observacion),
       cantidad,
		 valor,
		 valor_total 
FROM   amdetaut (INDEX AMDETAUT_20899306671),amencaut (INDEX AMENCAUT_21219307811),afiliados(INDEX pk_afiliados),UDSETABL (INDEX pk_udsetabl)
WHERE  ( AMDETAUT.Cd_Regional    = AMENCAUT.Cd_Regional     and  
         AMDETAUT.Id_Autorizador = AMENCAUT.Id_Autorizador  and  
         AMDETAUT.No_Solicitud   = AMENCAUT.No_Solicitud )  and

       ( AMENCAUT.TP_IDENT_AFILIA = afiliados.tip_documento  AND 
         AMENCAUT.NR_IDENT_AFILIA = afiliados.num_documento ) AND

       ( AMDETAUT.CD_SERVICIO = UDSETABL.CODIGO AND
         AMDETAUT.TABLA = UDSETABL.TABLA ) AND

       AMDETAUT.Cd_RegionaL = "101" AND
       AMDETAUT.TABLA = 'MAP' AND   
       UDSETABL.GRUPO = '45' OR UDSETABL.GRUPO = '44' OR UDSETABL.GRUPO = '42' AND 
       AMENCAUT.FEC_AUTORIZACION >= CONVERT(datetime,"01/01/2002",103) AND 
       AMENCAUT.FEC_AUTORIZACION <= CONVERT(datetime,"30/01/2002",103)
