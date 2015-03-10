DECLARE xx CURSOR
	SELECT tip_documento_afi,num_documento_afi,min(fec_ingreso_uni)
                 FROM   afiliados_empresas
                 GROUP BY   tip_documento_afi,num_documento_afi;

DECLARE @tip_doc    VARCHAR(3)
DECLARE @num_doc VARCHAR(18)
DECLARE @fec_afi     DATETIME
OPEN xx
WHILE @@sqlstatus <> 2 
BEGIN
  FETCH xx INTO @tip_doc, @num_doc, @fec_afi

  UPDATE afiliados
  SET         afiliados.fec_afiliacion_uni  = @fec_afi
  FROM      afiliados
  WHERE   afiliados.tip_documento      = @tip_doc AND
                  afiliados.num_documento    = @num_doc 
END
CLOSE xx;

DEALLOCATE CURSOR xx;

