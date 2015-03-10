SELECT UDSETABL.DESCRIPCION,UDSETABL.GRUPO, count(UDSETABL.DESCRIPCION)
FROM AMDETAUT, UDSETABL, AMENCAUT 
WHERE 	((UDSETABL.TABLA)='MAP') AND 
	((AMDETAUT.Tabla)=udsetabl.tabla) AND 
	((AMDETAUT.Cd_Servicio)=udsetabl.codigo) AND
 	((AMDETAUT.Cd_Regional)=amencaut.Cd_Regional) AND 
	((AMDETAUT.Id_Autorizador)=amencaut.Id_Autorizador) AND 
	((AMDETAUT.No_Solicitud)=amencaut.No_Solicitud) AND 
	((AMENCAUT.Fec_Autorizacion)>="2001/12/01") And 
	((AMENCAUT.Fec_Autorizacion)<="2001/12/31") and 
	AMDETAUT.Cd_Regional = "101"
GROUP BY UDSETABL.DESCRIPCION, UDSETABL.GRUPO


