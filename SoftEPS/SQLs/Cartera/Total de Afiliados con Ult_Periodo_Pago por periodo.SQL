TRUNCATE TABLE temporales;

INSERT INTO temporales (campo1,campo2,campo3,campo4) 
SELECT   afi_tipo_doc, afi_numero_doc,  max(convert(smalldatetime,'01/'+per_cotizacion,103))  ,'0'
FROM      det_planilla_autoliquidacion
WHERE per_cotizacion <> null
GROUP BY afi_tipo_doc,afi_numero_doc;


SELECT  campo3, count(*)
FROM     afiliados,relacion_afiliados (INDEX pk_relacion_afiliados),temporales,afiliados_empresas
WHERE  ((afiliados.tip_documento = relacion_afiliados.tip_documento_ben) AND
               (afiliados.num_documento = relacion_afiliados.num_documento_ben)) AND
                (temporales.campo1= relacion_afiliados.tip_documento_cot) AND
                (temporales.campo2= relacion_afiliados.num_documento_cot) AND
                ((relacion_afiliados.tip_documento_cot = afiliados_empresas.tip_documento_afi ) AND
                (relacion_afiliados.num_documento_cot = afiliados_empresas.num_documento_afi )) AND
                afiliados.cod_estado ='A' AND relacion_afiliados.cod_estado = 'A' AND afiliados_empresas.cod_estado = 'A' 
GROUP BY campo3
ORDER BY campo3 












