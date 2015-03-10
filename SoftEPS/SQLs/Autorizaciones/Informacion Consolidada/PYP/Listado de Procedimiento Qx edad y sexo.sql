select cod_regional as Regional,
       afiliados.tip_documento,
       afiliados.num_documento,
       (pri_apellido + ' '+ seg_apellido  + ' '+  pri_nombre  + ' '+  seg_nombre) as Nombre,
        datediff(yy,fec_nacimiento,getdate()) as edad,
        cod_sexo as sexo,
       CONVERT(VARCHAR(255),AMDETAUT.observacion) AS PROCEDIMIENTO,
       AMDETAUT1.CD_SERVICIO, 
       CONVERT(VARCHAR(255),AMDETAUT1.observacion) AS DIAGNOSTICO,
       AMDETAUT.cantidad,
		 AMDETAUT.valor,
		 AMDETAUT.valor_total 
from amdetaut,amencaut,afiliados,amdetaut amdetaut1
WHERE ( AMDETAUT.Cd_Regional = AMENCAUT.Cd_Regional ) and  
      ( AMDETAUT.Id_Autorizador = AMENCAUT.Id_Autorizador ) and  
      ( AMDETAUT.No_Solicitud = AMENCAUT.No_Solicitud ) and
      ( AMENCAUT.TP_IDENT_AFILIA = afiliados.tip_documento) AND 
      ( AMENCAUT.NR_IDENT_AFILIA = afiliados.num_documento ) AND
      ( AMDETAUT.TABLA = 'MAP') AND
      ( AMDETAUT1.Cd_Regional = AMENCAUT.Cd_Regional ) and  
      ( AMDETAUT1.Id_Autorizador = AMENCAUT.Id_Autorizador ) and  
      ( AMDETAUT1.No_Solicitud = AMENCAUT.No_Solicitud ) and
      ( AMDETAUT1.TABLA = 'DIA') AND
      ( (AMENCAUT.FEC_AUTORIZACION >= "2002/04/01") AND 
      ( AMENCAUT.FEC_AUTORIZACION <= "2002/04/30")) AND
      ( (AMDETAUT.observacion LIKE  'ISS11102%') OR
      ( AMDETAUT.observacion LIKE  'ISS11103%') OR
      ( AMDETAUT.observacion LIKE  'ISS11104%') OR
      ( AMDETAUT.observacion LIKE  'ISS12740%') OR
      ( AMDETAUT.observacion LIKE  'ISS12741%') OR
      ( AMDETAUT.observacion LIKE  'ISS12742%') OR
      ( AMDETAUT.observacion LIKE  'ISS12743%')  OR
     ( AMDETAUT.observacion LIKE  'ISS12101%') OR
      ( AMDETAUT.observacion LIKE  'ISS12102%') OR
      ( AMDETAUT.observacion LIKE  'ISS12103%') OR
      ( AMDETAUT.observacion LIKE  'ISS12201%') OR
      ( AMDETAUT.observacion LIKE  'ISS12202%') OR
      ( AMDETAUT.observacion LIKE  'ISS12203%') OR
      ( AMDETAUT.observacion LIKE  'ISS40532%') OR
      ( AMDETAUT.observacion LIKE  'ISS637300%') OR
      ( AMDETAUT.observacion LIKE  'ISS40537%') OR
      ( AMDETAUT.observacion LIKE  'ISS40535%') OR
      ( AMDETAUT.observacion LIKE  'SOA38111%') OR
      ( AMDETAUT.observacion LIKE  'SOA38112%') OR
      ( AMDETAUT.observacion LIKE  'SOA38113%') OR
      ( AMDETAUT.observacion LIKE  'SOA38114%') OR
      ( AMDETAUT.observacion LIKE  'SOA38121%') OR
      ( AMDETAUT.observacion LIKE  'SOA38122%') OR
      ( AMDETAUT.observacion LIKE  'SOA38123%') OR
      ( AMDETAUT.observacion LIKE  'SOA38124%') OR
      ( AMDETAUT.observacion LIKE  'SOA38131%') OR
      ( AMDETAUT.observacion LIKE  'SOA38132%') OR
      ( AMDETAUT.observacion LIKE  'SOA38133%') OR
      ( AMDETAUT.observacion LIKE  'SOA38134%') OR
      ( AMDETAUT.observacion LIKE  'SOA11242%') OR
      ( AMDETAUT.observacion LIKE  'SOA9701%') OR
      ( AMDETAUT.observacion LIKE  'SOA12101%') OR
      ( AMDETAUT.observacion LIKE  'SOA12110%'))




