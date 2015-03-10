TRUNCATE TABLE temporales;

INSERT INTO temporales (campo1,campo2,campo3,campo4,campo5,campo6) 
SELECT  relacion_afiliados.tip_documento_cot,relacion_afiliados.num_documento_cot,afiliados.cod_estado,'0',relacion_afiliados.tip_documento_ben,relacion_afiliados.num_documento_ben
FROM    afiliados,relacion_afiliados
WHERE   ((afiliados.tip_documento = relacion_afiliados.tip_documento_ben) AND
         (afiliados.num_documento = relacion_afiliados.num_documento_ben)) AND

        ((fec_exclusion_nov <> null AND 
           fec_inclusion_nov <= convert(datetime,"01/01/2002",103)  AND
          fec_exclusion_nov >= convert(datetime,"01/01/2002",103)) OR

          (fec_exclusion_nov = null AND 
          fec_inclusion_nov <= convert(datetime,"01/01/2002",103)));

SELECT num_planilla,afi_tipo_doc,afi_numero_doc,campo5 As Tip_Doc_Ben,campo6 As Num_Doc_Ben,per_presentacion AS Perido_Presentacion,per_cotizacion AS Perido_Cotizacion
FROM temporales,det_planilla_autoliquidacion 
WHERE  ((afi_tipo_doc *=campo1) AND
                (afi_numero_doc *=campo2 )) AND
                per_presentacion like "%12/2001%"  AND
                det_estado <> 'COM'           









