select declaraciones.num_declaracion,val_total_reca12,rec_acumulado_per_comp from declaraciones, liquidacion_compensacion
where periodo_compensado = '11/2002'
and tipo_cierre = 'D'
and declaraciones.num_declaracion = liquidacion_compensacion.num_declaracion;