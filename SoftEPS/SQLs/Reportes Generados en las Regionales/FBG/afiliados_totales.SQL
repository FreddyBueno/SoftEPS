//DECLARE @xx VARCHAR(26)
//SELECT  @xx="02/01/2002"
//SELECT  count(*) AS Afiliados_Activos
//FROM    afiliados,relacion_afiliados
//WHERE   ((afiliados.tip_documento = relacion_afiliados.tip_documento_ben) AND
//         (afiliados.num_documento = relacion_afiliados.num_documento_ben)) AND
//
//        ((fec_exclusion_nov <> null AND 
//          fec_inclusion_nov <= convert(datetime,@xx,103)  AND
//          fec_exclusion_nov >= convert(datetime,@xx,103)) OR
//
//          (fec_exclusion_nov = null AND 
//          fec_inclusion_nov <= convert(datetime,@xx,103)));
// 
//
//SELECT  count(*) AS Afiliados_Activos
//FROM    afiliados,relacion_afiliados
//WHERE   ((afiliados.tip_documento = relacion_afiliados.tip_documento_ben) AND
//         (afiliados.num_documento = relacion_afiliados.num_documento_ben)) AND
//
//        ((fec_exclusion_nov <> null AND 
//          fec_inclusion_nov <= convert(datetime,"01/02/2002",103)  AND
//          fec_exclusion_nov >= convert(datetime,"01/02/2002",103)) OR
//
//          (fec_exclusion_nov = null AND 
//          fec_inclusion_nov <= convert(datetime,"01/02/2002",103)));
//
//SELECT count(*) FROM relacion_afiliados WHERE fec_exclusion_nov=null;       



