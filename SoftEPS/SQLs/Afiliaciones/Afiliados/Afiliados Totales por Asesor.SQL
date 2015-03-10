select ace_numero_doc,acesores.pri_apellido,acesores.seg_apellido,
       acesores.pri_nombre,acesores.seg_nombre,cod_tipo_afil,fec_afiliacion_uni,count(*) as TOTAL
from afiliados,acesores
where acesores.num_documento  = afiliados.ace_numero_doc
group by ace_numero_doc,acesores.pri_apellido,acesores.seg_apellido,
       acesores.pri_nombre,acesores.seg_nombre,cod_tipo_afil,fec_afiliacion_uni


