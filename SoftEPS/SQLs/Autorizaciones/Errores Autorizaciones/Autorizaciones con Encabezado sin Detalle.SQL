SELECT AMENCAUT.*
FROM AMENCAUT,AMDETAUT 
WHERE (AMENCAUT.No_Solicitud + AMENCAUT.Id_Autorizador + AMENCAUT.Cd_Regional) *= (AMDETAUT.No_Solicitud + AMDETAUT.Id_Autorizador + AMDETAUT.Cd_Regional) AND
      (AMDETAUT.No_Solicitud + AMDETAUT.Id_Autorizador + AMDETAUT.Cd_Regional) Is Null AND
       AMENCAUT.Fec_Autorizacion >= "2001/10/01" AND
       AMENCAUT.Fec_Autorizacion <= "2001/10/30"


