SELECT meses_mora,"EPS007",tip_documento_cot,num_documento_cot,tip_documento_ben,
num_documento_ben,pri_apellido,seg_apellido,pri_nombre,seg_nombre,cod_sexo,fec_nacimiento,
cod_tipo_afil,val_sueldo_afil,fec_afiliacion_uni,cod_modalidad_tra,tip_documento_emp,num_documento_emp,
cod_departamento_res,cod_ciudad_res,afiliados.cod_estado,ult_pago,fec_egreso_uni,num_meses_mora,nom_empresa,
dir_empresa,cod_departamento+cod_ciudad,tel_empresa,tel_afiliado_res,tip_aportante,afiliados.cod_regional,"0","0",nom_parentesco,"0",cant_pago,sem_cotizacion
FROM afiliados,afiliados_empresas,relacion_afiliados,empresas,parentescos
WHERE afiliados_empresas.fec_egreso_uni = null AND
               relacion_afiliados.fec_exclusion_nov = null AND

               (relacion_afiliados.tip_documento_ben = afiliados.tip_documento AND
                relacion_afiliados.num_documento_ben = afiliados.num_documento) AND

               (relacion_afiliados.tip_documento_cot = afiliados_empresas.tip_documento_afi AND
                relacion_afiliados.num_documento_cot = afiliados_empresas.num_documento_afi)  AND

                (afiliados_empresas.tip_documento_emp = empresas.tip_documento AND
                afiliados_empresas.num_documento_emp = empresas.num_documento AND
                 afiliados_empresas.cod_sucursal =empresas.cod_sucursal) AND
                 relacion_afiliados.cod_parentesco=parentescos.cod_parentesco


