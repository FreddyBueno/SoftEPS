SELECT afiliados.cod_regional,afiliados.cod_SEXO,datediff(yy,afiliados.fec_nacimiento,getdate()),count(*)  
    FROM REEAVISO, afiliados  
   WHERE ( afiliados.TIP_documento = REEAVISO.TP_IDENT_AFIL ) AND  
         ( afiliados.NUM_documento = REEAVISO.NR_IDENT_AFIL ) 
GROUP BY  afiliados.cod_regional,afiliados.cod_SEXO,datediff(yy,afiliados.fec_nacimiento,getdate())
ORDER BY afiliados.cod_regional,afiliados.cod_SEXO,datediff(yy,afiliados.fec_nacimiento,getdate())


