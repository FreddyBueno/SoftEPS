DECLARE xx CURSOR
       FOR SELECT tip_documento,num_documento,num_meses_mora
       FROM   afiliados
       WHERE  cod_tip_afil ="C";     

DECLARE @tp_doc             VARCHAR(20)
DECLARE @nr_doc             VARCHAR(20)
DECLARE @meses_mora    INTEGER
OPEN xx
WHILE @@sqlstatus <> 2 
BEGIN
  FETCH xx INTO @meses_mora

  UPDATE afiliados
  SET         afiliados.num_meses_mora   = @meses_mora
  FROM      afiliados,relacion_afiliados
  WHERE   relacion_afiliados.fec_exclusion_nov = null AND

                  (relacion_afiliados.tip_documento_ben = afiliados.tip_documento AND
                  relacion_afiliados.num_documento_ben = afiliados.num_documento) AND
                  relacion_afiliados.tip_documento_cot = @tp_doc AND
                  relacion_afiliados.num_documento_cot =@nr_doc
END
CLOSE xx;

DEALLOCATE CURSOR xx;


