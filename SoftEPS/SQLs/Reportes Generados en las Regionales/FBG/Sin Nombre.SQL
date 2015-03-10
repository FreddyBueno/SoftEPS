SELECT meses_mora,"EPS007",tip_documento_cot,num_documento_cot,tip_documento_ben,
num_documento_ben,pri_apellido,seg_apellido,pri_nombre,seg_nombre,cod_sexo,fec_nacimiento,
cod_tipo_afil,val_sueldo_afil,fec_afiliacion_uni,cod_modalidad_tra,tip_documento_emp,num_documento_emp,
cod_departamento_res,cod_ciudad_res,afiliados.cod_estado,ult_pago,fec_egreso_uni,num_meses_mora,nom_empresa,
dir_empresa,cod_departamento+cod_ciudad,tel_empresa,tel_afiliado_res,tip_aportante,"0","0","0","0","0",cant_pago
FROM afiliados,afiliados_empresas,relacion_afiliados,empresas
WHERE afiliados_empresas.fec_egreso_uni = null AND
               relacion_afiliados.fec_exclusion_nov = null AND

               (relacion_afiliados.tip_documento_ben = afiliados.tip_documento AND
                relacion_afiliados.num_documento_ben = afiliados.num_documento) AND

               (relacion_afiliados.tip_documento_cot = afiliados_empresas.tip_documento_afi AND
                relacion_afiliados.num_documento_cot = afiliados_empresas.num_documento_afi)  AND

                (afiliados_empresas.tip_documento_emp = empresas.tip_documento AND
                afiliados_empresas.num_documento_emp = empresas.num_documento AND
                 afiliados_empresas.cod_sucursal =empresas.cod_sucursal); 
//
//SELECT afi_tipo_doc,afi_numero_doc,max(convert(datetime,'01/'+per_cotizacion,103))
//FROM det_planilla_autoliquidacion
//GROUP BY afi_tipo_doc,afi_numero_doc;
////
////
//UPDATE det_planilla_autoliquidacion
//SET per_cotizacion="01/1995",per_presentacion= "01/1995"
//WHERE per_cotizacion = null;
//
//SELECT *
//FROM det_planilla_autoliquidacion
//WHERE NOT per_cotizacion IN ('01/1995','02/1995','03/1995','04/1995','05/1995','06/1995','07/1995','08/1995','09/1995','10/1995','11/1995','12/1995', '01/1996','02/1996','03/1996','04/1996','05/1996','06/1996','07/1996','08/1996','09/1996','10/1996','11/1996','12/1996', '01/1997','02/1997','03/1997','04/1997','05/1997','06/1997','07/1997','08/1997','09/1997','10/1997','11/1997','12/1997', '01/1998','02/1998','03/1998','04/1998','05/1998','06/1998','07/1998','08/1998','09/1998','10/1998','11/1998','12/1998', '01/1999','02/1999','03/1999','04/1999','05/1999','06/1999','07/1999','08/1999','09/1999','10/1999','11/1999','12/1999', '01/2000','02/2000','03/2000','04/2000','05/2000','06/2000','07/2000','08/2000','09/2000','10/2000','11/2000','12/2000',
//'01/2001','02/2001','03/2001','04/2001','05/2001','06/2001','07/2001','08/2001','09/2001','10/2001','11/2001','12/2001',
//'01/2002','02/2002','03/2002','04/2002','05/2002','06/2002','07/2002','08/2002','09/2002','10/2002','11/2002','12/2002') or per_cotizacion = null
//;

//TRUNCATE TABLE temporales3;
////
//INSERT INTO temporales3 (campo1,campo2,campo3,campo4)
//SELECT afi_tipo_doc,afi_numero_doc,max(convert(datetime,"01/"+per_cotizacion,103)),convert(varchar(10),count(*))
//FROM det_planilla_autoliquidacion
//GROUP BY afi_tipo_doc,afi_numero_doc;
//
//
//DECLARE xx CURSOR
//       FOR SELECT campo1,campo2,campo3,campo4
//       FROM     temporales3;     
//
//DECLARE @tip_doc    VARCHAR(3)
//DECLARE @num_doc VARCHAR(18)
//DECLARE @ult_pago   VARCHAR(26)
//DECLARE @cant_pago VARCHAR(10)
//OPEN xx
//WHILE @@sqlstatus <> 2 
//BEGIN
//  FETCH xx INTO @tip_doc, @num_doc, @ult_pago, @cant_pago
//
//  UPDATE afiliados
//  SET         afiliados.ult_pago  = convert(varchar(2),datepart(month,convert(datetime,@ult_pago,103))) +"/" + convert(varchar(4),datepart(year,convert(datetime,@ult_pago,103))), 
//              afiliados.cant_pago = convert(integer,@cant_pago)
//  FROM     afiliados
//  WHERE  afiliados.tip_documento      = @tip_doc AND
//                 afiliados.num_documento    = @num_doc 
//END
//CLOSE xx;
//
//DEALLOCATE CURSOR xx;
//
//
//

