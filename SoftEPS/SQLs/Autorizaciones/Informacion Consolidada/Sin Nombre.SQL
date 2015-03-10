select afiliados.cod_regional as Regional,
       afiliados.tip_documento,
       afiliados.num_documento,
       (pri_apellido + ' '+ seg_apellido  + ' '+  pri_nombre  + ' '+  seg_nombre) as Nombre,
       CONVERT(VARCHAR(255),observacion),
       cantidad,
		 valor,
		 valor_total 
from amdetaut,amencaut,afiliados,UDSETABL
WHERE ( AMDETAUT.Cd_Regional = AMENCAUT.Cd_Regional ) and  
      ( AMDETAUT.Id_Autorizador = AMENCAUT.Id_Autorizador ) and  
      ( AMDETAUT.No_Solicitud = AMENCAUT.No_Solicitud ) and
       ( AMENCAUT.TP_IDENT_AFILIA = afiliados.tip_documento) AND 
      ( AMENCAUT.NR_IDENT_AFILIA = afiliados.num_documento ) AND
      ( AMDETAUT.TABLA = 'MAP') AND
      ( AMDETAUT.CD_SERVICIO = UDSETABL.CODIGO ) AND
      ( AMDETAUT.TABLA = UDSETABL.TABLA ) AND
      ( AMDETAUT.Cd_RegionaL = "101") AND
      ((UDSETABL.GRUPO = '45' OR UDSETABL.GRUPO = '44' OR UDSETABL.GRUPO = '42')) AND 
      ( (AMENCAUT.FEC_AUTORIZACION >= "2001/11/01") AND 
      ( AMENCAUT.FEC_AUTORIZACION <= "2001/12/31"))

