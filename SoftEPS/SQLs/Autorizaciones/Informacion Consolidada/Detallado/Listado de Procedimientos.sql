select afiliados.cod_regional as Regional,
       afiliados.tip_documento,
       afiliados.num_documento,
       (pri_apellido + ' '+ seg_apellido  + ' '+  pri_nombre  + ' '+  seg_nombre) as Nombre,
       CONVERT(VARCHAR(255),observacion),
       cantidad,
		 valor,
		 valor_total 
from amdetaut,amencaut,afiliados
WHERE ( AMDETAUT.Cd_Regional = AMENCAUT.Cd_Regional ) and  
      ( AMDETAUT.Id_Autorizador = AMENCAUT.Id_Autorizador ) and  
      ( AMDETAUT.No_Solicitud = AMENCAUT.No_Solicitud ) and
       ( AMENCAUT.TP_IDENT_AFILIA = afiliados.tip_documento) AND 
      ( AMENCAUT.NR_IDENT_AFILIA = afiliados.num_documento ) AND
      ( AMDETAUT.TABLA = 'MAP') AND
      ( (AMENCAUT.FEC_AUTORIZACION >= "2001/06/01") AND 
      ( AMENCAUT.FEC_AUTORIZACION <= "2001/06/01"))

