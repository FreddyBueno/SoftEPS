SELECT afiliados.cod_regional,regionales.nom_regional,reeaviso.cd_aviso,patologia.descripcion,count(*) as cantidad_autorizaciones 
    FROM REEAVISO, afiliados, regionales, patologia, redaviso  
   WHERE (afiliados.TIP_documento = REEAVISO.TP_IDENT_AFIL ) AND  
         ( afiliados.NUM_documento = REEAVISO.NR_IDENT_AFIL ) AND
			(reeaviso.cd_patologia = patologia.cod_patologia) and
			( afiliados.cod_regional = regionales.cod_regional) and 
			( redaviso.cd_aviso = reeaviso.cd_aviso )  and 
                        ( reeaviso.fec_aviso >= "2001/10/01" ) and
                        ( reeaviso.fec_aviso <= "2001/11/30" )
GROUP BY reeaviso.cd_aviso,afiliados.cod_regional,regionales.nom_regional,patologia.descripcion
ORDER BY afiliados.cod_regional,reeaviso.cd_aviso
