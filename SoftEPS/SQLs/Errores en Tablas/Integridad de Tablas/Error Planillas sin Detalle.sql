SELECT num_planilla
FROM autoliquidacion
WHERE num_planilla NOT IN (SELECT num_planilla FROM det_planilla_autoliquidacion)
