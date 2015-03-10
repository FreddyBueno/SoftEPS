SELECT AMENCAUT.*
FROM AMENCAUT,AFILIADOS 
WHERE (AMENCAUT.Fec_Autorizacion >= "2001/10/01" AND
       AMENCAUT.Fec_Autorizacion <= "2001/10/30") AND
      ((AMENCAUT.Tp_Ident_Afilia + AMENCAUT.Nr_Ident_Afilia) *= (AFILIADOS.tip_documento + AFILIADOS.num_documento) AND
      (AFILIADOS.tip_documento + AFILIADOS.num_documento)  = Null) 
    

