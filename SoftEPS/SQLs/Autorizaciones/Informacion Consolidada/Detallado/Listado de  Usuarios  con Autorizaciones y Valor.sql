select  afiliados.cod_regional as Regional,(pri_apellido + ' '+ seg_apellido  + ' '+  pri_nombre  + ' '+  seg_nombre) as Nombre_Afiliado,count(distinct (AMENCAUT.Cd_Regional + AMENCAUT.Id_Autorizador + AMENCAUT.No_Solicitud)) AS Autorizaciones,sum(Cantidad) as Cantidad,sum(valor) as Valor_unitario,sum(valor_total) as total
from amdetaut,amencaut,afiliados
WHERE ( AMDETAUT.Cd_Regional = AMENCAUT.Cd_Regional ) and  
      ( AMDETAUT.Id_Autorizador = AMENCAUT.Id_Autorizador ) and  
      ( AMDETAUT.No_Solicitud = AMENCAUT.No_Solicitud ) and
      ( AMDETAUT.TABLA = 'MAP') AND
      ( AMENCAUT.TP_IDENT_AFILIA = afiliados.tip_documento) AND 
      ( AMENCAUT.NR_IDENT_AFILIA = afiliados.num_documento ) AND
      ( (AMENCAUT.FEC_AUTORIZACION >= "2001/06/01") AND 
      ( AMENCAUT.FEC_AUTORIZACION <= "2001/06/01")) 
group by afiliados.cod_regional,(pri_apellido + seg_apellido + pri_nombre + seg_nombre)


