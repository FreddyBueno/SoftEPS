select 	AMENCAUT.Fec_modificado as Fecha,
	AMENCAUT.no_autorizacion As Autorizacion,
	AMENCAUT.no_solicitud as Solicitud,
	afiliados.Cod_Regional as Regional_Origen,
	AMENCAUT.Tp_Ident_Afilia ,
	AMENCAUT.Nr_Ident_Afilia,
              (pri_apellido+' '+seg_apellido+' '+pri_nombre+' '+seg_nombre) as nombre,
	afiliados.cod_tipo_afil, 
	udpresta.cd_prestador,
                udpresta.ds_prestador,
	tincause.ds_causae,
               datediff(yy,fec_nacimiento,getdate()) as edad,
               convert(varchar(255),amdetaut.observacion) as Servicio,
               convert(varchar(255),amdetaut1.observacion) as Diagnostico,
         amencaut.autorizado_por,
         convert(varchar(255),amencaut.observaciones),
			convert(varchar(255),amencaut.observaciones_aut),amdetaut.valor
from 		AMENCAUT,afiliados,AMDETAUT,udpresta,tincause, AMDETAUT AMDETAUT1
where		AMENCAUT.Tp_Ident_Afilia *= afiliados.tip_documento and 
	      AMENCAUT.Nr_Ident_Afilia *= afiliados.num_documento and 
         udpresta.cd_prestador =  nr_ident_prest_ips and
			(AMENCAUT.Cd_Regional = AMDETAUT.Cd_Regional AND 
      	AMENCAUT.Id_Autorizador = AMDETAUT.Id_Autorizador AND 
      	AMENCAUT.No_Solicitud = AMDETAUT.No_Solicitud) AND 
			(AMENCAUT.Cd_Regional = AMDETAUT1.Cd_Regional AND 
      	AMENCAUT.Id_Autorizador = AMDETAUT1.Id_Autorizador AND 
      	AMENCAUT.No_Solicitud = AMDETAUT1.No_Solicitud) AND 
         AMENCAUT.causa_externa = tincause.cd_causae and
			AMENCAUT.Cd_Regional = '999' and
         AMdetaut.tabla <> 'dia' and
			AMdetaut1.tabla =  'dia' and
			AMENCAUT.Fec_modificado >= "2002/01/01" and
  			AMENCAUT.Fec_modificado <= "2002/02/01"
         
			
         




