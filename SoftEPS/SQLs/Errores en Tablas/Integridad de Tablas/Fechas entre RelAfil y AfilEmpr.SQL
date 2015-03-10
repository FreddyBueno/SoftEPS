TRUNCATE TABLE temporales;

INSERT INTO temporales (campo1,campo2,campo3,campo4,campo5,campo6) 
SELECT tip_documento_afi,num_documento_afi,'0','0',min(fec_ingreso_uni),max(fec_egreso_uni)
FROM     afiliados_empresas
GROUP BY tip_documento_afi,num_documento_afi;

TRUNCATE TABLE temporales2;

INSERT INTO temporales2 (campo1,campo2,campo3,campo4,campo5,campo6) 
SELECT tip_documento_cot,num_documento_cot,'0','0',min(fec_inclusion_nov),max(fec_exclusion_nov)
FROM     relacion_afiliados
GROUP BY tip_documento_cot,num_documento_cot;

SELECT temporales.campo1,temporales.campo2,temporales.campo5,temporales.campo6,temporales2.campo5,temporales2.campo6
FROM    temporales,temporales2
WHERE (temporales.campo1 *= temporales2.campo1 AND
               temporales.campo2 *= temporales2.campo2) AND
               (temporales.campo5 <> temporales2.campo5 AND
               temporales.campo6 <> temporales2.campo6)   









