SELECT AMDETAUT.*
FROM AMDETAUT,AMENCAUT
WHERE (AMDETAUT.No_Solicitud + AMDETAUT.Id_Autorizador + AMDETAUT.Cd_Regional) *= (AMENCAUT.No_Solicitud + AMENCAUT.Id_Autorizador + AMENCAUT.Cd_Regional)  AND
      (AMENCAUT.No_Solicitud + AMENCAUT.Id_Autorizador + AMENCAUT.Cd_Regional) Is Null
