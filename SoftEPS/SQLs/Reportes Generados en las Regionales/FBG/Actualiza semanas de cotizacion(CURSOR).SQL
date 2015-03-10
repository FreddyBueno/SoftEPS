//UPDATE afiliados
//SET sem_cotizacion = 0
//FROM afiliados;
//
TRUNCATE TABLE temporales3;

INSERT INTO temporales3 (campo1,campo2,campo3,campo4)
SELECT afi_tipo_doc,afi_numero_doc,CONVERT(varchar(10),count(*)*4),"0"
FROM det_planilla_autoliquidacion (INDEX pkdocumento)
GROUP BY afi_tipo_doc,afi_numero_doc;

DECLARE xx CURSOR
	FOR SELECT tip_documento_ben,num_documento_ben,campo3
       FROM   temporales3,relacion_afiliados
       WHERE  temporales3.campo1 = relacion_afiliados.tip_documento_cot AND
              temporales3.campo2 = relacion_afiliados.num_documento_cot;     

DECLARE @tip_doc    VARCHAR(3)
DECLARE @num_doc VARCHAR(18)
DECLARE @sem_cot   VARCHAR(10)
OPEN xx
WHILE @@sqlstatus <> 2 
BEGIN
  FETCH xx INTO @tip_doc, @num_doc, @sem_cot

  UPDATE afiliados
  SET    afiliados.sem_cotizacion   = CONVERT(INTEGER,@sem_cot)
  FROM   afiliados
  WHERE  afiliados.tip_documento    = @tip_doc AND
         afiliados.num_documento    = @num_doc 
END
CLOSE xx;

DEALLOCATE CURSOR xx;


