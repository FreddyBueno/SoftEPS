TRUNCATE TABLE temporales;

INSERT INTO temporales (campo1,campo2,campo3,campo4) 
SELECT   afi_tipo_doc, afi_numero_doc,  max(convert(smalldatetime,'01/'+per_cotizacion,103))  ,'0'
FROM      det_planilla_autoliquidacion
GROUP BY afi_tipo_doc,afi_numero_doc;


SELECT cod_regional, campo3 AS Ultimo_Pago , count(*) AS Tot_Afiliados
FROM    afiliados,relacion_afiliados (INDEX pk_relacion_afiliados),temporales
WHERE  ((afiliados.tip_documento = relacion_afiliados.tip_documento_ben) AND
               (afiliados.num_documento = relacion_afiliados.num_documento_ben)) AND
                (temporales.campo1= relacion_afiliados.tip_documento_cot) AND
                (temporales.campo2= relacion_afiliados.num_documento_cot) AND
                afiliados.cod_estado ='A' AND relacion_afiliados.cod_estado = 'A' 
GROUP BY cod_regional,campo3











