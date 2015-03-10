SELECT tip_documento,num_documento,pri_apellido,seg_apellido,pri_nombre,seg_nombre,fec_afiliacion_uni,cod_regional
FROM afiliados
WHERE fec_afiliacion_uni < '01/01/1995' OR fec_afiliacion_uni > GETDATE()
ORDER BY cod_regional


