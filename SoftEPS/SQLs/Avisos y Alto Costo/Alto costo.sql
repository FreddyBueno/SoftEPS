SELECT REEAVISO.cd_aviso,TABLA,OBSERVACION,count(*) as cantidad_usuarios 
    FROM REEAVISO,
			RIAUSUAR,
			AMDETAUT,
			REDAVISO
   WHERE ( RIAUSUAR.TP_IDENT_USUAR = REEAVISO.TP_IDENT_AFIL ) AND  
         ( RIAUSUAR.NR_IDENT_USUAR = REEAVISO.NR_IDENT_AFIL ) AND
			( RIAUSUAR.TP_USUARIO ="C" ) AND
			( REDAVISO.CD_AVISO = REEAVISO.CD_AVISO) AND 
			( AMDETAUT.Cd_Regional = REDAVISO.CD_REGIONAL)  AND
			( AMDETAUT.Id_Autorizador = REDAVISO.ID_AUTORIZADOR) AND
			( AMDETAUT.No_Solicitud = REDAVISO.NO_SOLICITUD) AND
			( REEAVISO.FEC_AVISO  < "2001/01/01") AND
			GROUP BY REEAVISO.cd_aviso,OBSERVACION,TABLA  
ORDER BY REEAVISO.cd_aviso;