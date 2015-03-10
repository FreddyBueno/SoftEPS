//TRUNCATE TABLE temporales3
//
//INSERT INTO temporales3 (campo1,campo2,campo3,campo4,campo5,campo6,campo7,campo8,campo9,campo10) 
//SELECT  autoliquidacion.num_planilla, 
//		  emp_tipo_doc, emp_numero_doc, cod_sucursal,
//        afi_tipo_doc, afi_numero_doc,
//        autoliquidacion.per_presentacion,
//        autoliquidacion.per_cotizacion,
//        autoliquidacion.est_planilla,
//        autoliquidacion.fec_pago
//FROM    autoliquidacion,det_planilla_autoliquidacion
//WHERE   autoliquidacion.num_planilla = det_planilla_autoliquidacion.num_planilla;

//TRUNCATE TABLE temporales;
//
//INSERT INTO temporales (campo1,campo2,campo3,campo4,campo5,campo6) 
//SELECT tip_documento_emp,num_documento_emp,tip_documento_afi,num_documento_afi,min(fec_ingreso_uni),max(fec_egreso_uni)
//FROM     afiliados_empresas
//GROUP BY tip_documento_emp,num_documento_emp,tip_documento_afi,num_documento_afi;

SELECT temporales3.campo1,temporales3.campo2,temporales3.campo3,temporales3.campo4,temporales3.campo5,temporales3.campo6,temporales3.campo7,temporales3.campo8,temporales3.campo9,temporales3.campo10,temporales.campo5,temporales.campo6
FROM   temporales3,temporales
WHERE  (temporales3.campo2 =temporales.campo1 AND
       temporales3.campo3 = temporales.campo2 AND
       temporales3.campo5 = temporales.campo3 AND
       temporales3.campo6 = temporales.campo4) AND
       CONVERT(datetime,"28/"+temporales3.campo7,103) < temporales.campo5;

