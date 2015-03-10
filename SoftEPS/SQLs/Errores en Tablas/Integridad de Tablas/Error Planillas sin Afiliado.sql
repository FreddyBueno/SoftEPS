SELECT distinct afi_tipo_doc, afi_numero_doc
FROM det_planilla_autoliquidacion
WHERE afi_tipo_doc+afi_numero_doc NOT IN (SELECT tip_documento+num_documento FROM afiliados)
