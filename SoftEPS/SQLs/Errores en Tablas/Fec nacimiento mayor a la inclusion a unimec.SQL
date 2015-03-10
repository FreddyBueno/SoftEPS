SELECT tip_documento,num_documento,pri_apellido,seg_apellido,pri_nombre,seg_nombre,fec_afiliacion_uni,cod_regional
FROM AFILIADOS
WHERE fec_nacimiento > fec_afiliacion_uni
ORDER BY cod_regional


