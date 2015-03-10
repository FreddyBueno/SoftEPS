TRUNCATE TABLE temporales3

INSERT INTO temporales3 (campo1,campo2,campo3,campo4,campo5,campo6) 
SELECT  emp_tipo_doc, emp_numero_doc, cod_sucursal,
        afi_tipo_doc, afi_numero_doc,
        min(CONVERT(datetime,"01/"+autoliquidacion.per_cotizacion,103))
FROM    autoliquidacion,det_planilla_autoliquidacion
WHERE   autoliquidacion.num_planilla = det_planilla_autoliquidacion.num_planilla
GROUP BY emp_tipo_doc, emp_numero_doc, cod_sucursal,
        afi_tipo_doc, afi_numero_doc;


