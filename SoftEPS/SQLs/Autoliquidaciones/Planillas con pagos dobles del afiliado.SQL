SELECT  afi_tipo_doc,afi_numero_doc, Per_Presentacion, Per_Cotizacion,num_planilla
FROM     Det_Planilla_Autoliquidacion
WHERE  afi_tipo_doc+afi_numero_doc+Num_Planilla+Per_Presentacion+Per_Cotizacion IN 
                           (SELECT afi_tipo_doc+afi_numero_doc+Per_Presentacion+Per_Cotizacion 
                               FROM Det_Planilla_Autoliquidacion As Tmp 
                       GROUP BY afi_tipo_doc+afi_numero_doc+Per_Presentacion+Per_Cotizacion 
                            HAVING Count(*)>1)  


