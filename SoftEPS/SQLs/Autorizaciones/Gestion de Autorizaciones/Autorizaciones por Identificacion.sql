Select  AMENCAUT.fec_autorizacion,amdetaut.* 
from AMENCAUT,amdetaut
where  amdetaut.cd_regional =  AMENCAUT.cd_regional and
 amdetaut.id_autorizador = AMENCAUT.id_autorizador and
 amdetaut.no_solicitud = AMENCAUT.no_solicitud and
Amdetaut.tabla <> 'DIA' and
AMENCAUT.Tp_Ident_Afilia="CC" and  
AMENCAUT.Nr_Ident_Afilia="20219866"

