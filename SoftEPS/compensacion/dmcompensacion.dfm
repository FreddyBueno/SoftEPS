object dmcompensa: Tdmcompensa
  OldCreateOrder = False
  Left = 165
  Top = 95
  Height = 467
  Width = 626
  object tbletareos: TTable
    DatabaseName = 'softeps'
    TableName = 'GRUPOS_ETAREOS'
    Left = 180
    Top = 6
    object tbletareosCOD_GRUPO_ETA: TFloatField
      FieldName = 'COD_GRUPO_ETA'
      Required = True
    end
    object tbletareosINI_GRUPO_ETA: TFloatField
      FieldName = 'INI_GRUPO_ETA'
    end
    object tbletareosFIN_GRUPO_ETA: TFloatField
      FieldName = 'FIN_GRUPO_ETA'
    end
    object tbletareosSEXO_GRUPO_ETA: TStringField
      FieldName = 'SEXO_GRUPO_ETA'
      FixedChar = True
      Size = 1
    end
  end
  object DataSource1: TDataSource
    Left = 94
    Top = 6
  end
  object tblestcos: TTable
    DatabaseName = 'softeps'
    TableName = 'ESTRUCTURA_COSTOS'
    Left = 180
    Top = 6
    object tblestcosCOD_GRUPO_ETA: TFloatField
      FieldName = 'COD_GRUPO_ETA'
      Required = True
    end
    object tblestcosVAL_ESTRUCTURA_COST: TFloatField
      FieldName = 'VAL_ESTRUCTURA_COST'
    end
    object tblestcosANO_VAL_ESTRUCTURA_COST: TDateTimeField
      FieldName = 'ANO_VAL_ESTRUCTURA_COST'
    end
  end
  object qrymcestcos1: TQuery
    DatabaseName = 'softeps'
    RequestLive = True
    SQL.Strings = (
      'SELECT * FROM ESTRUCTURA_COSTOS '
      'WHERE ANO_VAL_ESTRUCTURA_COST = :ano'
      '        '
      ''
      '')
    Left = 229
    Top = 10
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'ano'
        ParamType = ptInputOutput
        Value = 0d
      end>
    object qrymcestcos1COD_GRUPO_ETA: TFloatField
      FieldName = 'COD_GRUPO_ETA'
      Origin = 'SOFTEPS.ESTRUCTURA_COSTOS.COD_GRUPO_ETA'
    end
    object qrymcestcos1VAL_ESTRUCTURA_COST: TFloatField
      FieldName = 'VAL_ESTRUCTURA_COST'
      Origin = 'SOFTEPS.ESTRUCTURA_COSTOS.VAL_ESTRUCTURA_COST'
    end
    object qrymcestcos1ANO_VAL_ESTRUCTURA_COST: TDateTimeField
      FieldName = 'ANO_VAL_ESTRUCTURA_COST'
      Origin = 'SOFTEPS.ESTRUCTURA_COSTOS.ANO_VAL_ESTRUCTURA_COST'
    end
  end
  object tblvalores: TTable
    DatabaseName = 'softeps'
    TableName = 'VALORESANULESCOMP'
    Left = 180
    Top = 6
    object tblvaloresANO: TDateTimeField
      FieldName = 'ANO'
      Required = True
    end
    object tblvaloresSAL_MINIMO: TFloatField
      FieldName = 'SAL_MINIMO'
      Required = True
    end
    object tblvaloresUPC: TFloatField
      FieldName = 'UPC'
      Required = True
    end
    object tblvaloresPYP: TFloatField
      FieldName = 'PYP'
      Required = True
    end
    object tblvaloresSOL: TFloatField
      FieldName = 'SOL'
      Required = True
    end
    object tblvaloresRIESGO: TFloatField
      FieldName = 'RIESGO'
      Required = True
    end
    object tblvaloresVAL_UPC_DIA_NORMAL: TFloatField
      FieldName = 'VAL_UPC_DIA_NORMAL'
      Required = True
    end
    object tblvaloresVAL_UPC_DIA_ESPECIAL: TFloatField
      FieldName = 'VAL_UPC_DIA_ESPECIAL'
      Required = True
    end
    object tblvaloresPOR_COTIZACION: TFloatField
      FieldName = 'POR_COTIZACION'
    end
    object tblvaloresPOR_ENFERMEDAD_GENERAL: TFloatField
      FieldName = 'POR_ENFERMEDAD_GENERAL'
    end
    object tblvaloresPOR_PROVISION_INC: TFloatField
      FieldName = 'POR_PROVISION_INC'
    end
    object tblvaloresPOR_PYP_LIQUIDACION: TFloatField
      FieldName = 'POR_PYP_LIQUIDACION'
    end
    object tblvaloresPOR_SOLIDARIDAD_LIQUIDACION: TFloatField
      FieldName = 'POR_SOLIDARIDAD_LIQUIDACION'
    end
  end
  object qrysalarios: TQuery
    DatabaseName = 'softeps'
    RequestLive = True
    SQL.Strings = (
      'select ano, sal_minimo from valoresanulescomp')
    Left = 229
    Top = 10
    object qrysalariosano: TDateTimeField
      DisplayLabel = 'A'#241'o'
      FieldName = 'ano'
      Origin = 'DBUNIMEC.valoresanulescomp.ano'
    end
    object qrysalariossal_minimo: TFloatField
      DisplayLabel = 'Salario Minimo'
      FieldName = 'sal_minimo'
      Origin = 'DBUNIMEC.valoresanulescomp.sal_minimo'
    end
  end
  object qryupcs: TQuery
    DatabaseName = 'softeps'
    RequestLive = True
    SQL.Strings = (
      
        'select ano, upc, val_upc_dia_normal, val_upc_dia_especial from v' +
        'aloresanulescomp')
    Left = 229
    Top = 10
    object qryupcsano: TDateTimeField
      DisplayLabel = 'A'#241'o'
      FieldName = 'ano'
      Origin = 'DBUNIMEC.valoresanulescomp.ano'
    end
    object qryupcsupc: TFloatField
      DisplayLabel = 'Valor UPC'
      FieldName = 'upc'
      Origin = 'DBUNIMEC.valoresanulescomp.upc'
    end
    object qryupcsval_upc_dia_normal: TFloatField
      DisplayLabel = 'UPC Diaria Zona Normal'
      FieldName = 'val_upc_dia_normal'
      Origin = 'DBUNIMEC.valoresanulescomp.val_upc_dia_normal'
    end
    object qryupcsval_upc_dia_especial: TFloatField
      DisplayLabel = 'UPC Diaria Zona Especial'
      FieldName = 'val_upc_dia_especial'
      Origin = 'DBUNIMEC.valoresanulescomp.val_upc_dia_especial'
    end
  end
  object qrymcupczon: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      'SELECT UPC,RIESGO,PYP,SOL,VAL_ESTRUCTURA_COST, COD_GRUPO_ETA '
      'FROM VALORESANULESCOMP,ESTRUCTURA_COSTOS'
      'WHERE ANO = ANO_VAL_ESTRUCTURA_COST AND ANO = :ano ')
    Left = 229
    Top = 10
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'ano'
        ParamType = ptInputOutput
        Value = 0d
      end>
    object qrymcupczonUPC: TFloatField
      FieldName = 'UPC'
      Origin = 'SOFTEPS.VALORESANULESCOMP.UPC'
    end
    object qrymcupczonRIESGO: TFloatField
      FieldName = 'RIESGO'
      Origin = 'SOFTEPS.VALORESANULESCOMP.RIESGO'
    end
    object qrymcupczonPYP: TFloatField
      FieldName = 'PYP'
      Origin = 'SOFTEPS.VALORESANULESCOMP.PYP'
    end
    object qrymcupczonSOL: TFloatField
      FieldName = 'SOL'
      Origin = 'SOFTEPS.VALORESANULESCOMP.SOL'
    end
    object qrymcupczonVAL_ESTRUCTURA_COST: TFloatField
      FieldName = 'VAL_ESTRUCTURA_COST'
      Origin = 'SOFTEPS.ESTRUCTURA_COSTOS.VAL_ESTRUCTURA_COST'
    end
    object qrymcupczonCOD_GRUPO_ETA: TFloatField
      FieldName = 'COD_GRUPO_ETA'
      Origin = 'SOFTEPS.ESTRUCTURA_COSTOS.COD_GRUPO_ETA'
    end
  end
  object tblinteres: TTable
    DatabaseName = 'softeps'
    TableName = 'INTERESES'
    Left = 180
    Top = 6
    object tblinteresFEC_INTERESES: TDateTimeField
      FieldName = 'FEC_INTERESES'
      Required = True
    end
    object tblinteresVAL_ANUL: TFloatField
      FieldName = 'VAL_ANUL'
      Required = True
    end
    object tblinteresVAL_MENSUAL: TFloatField
      FieldName = 'VAL_MENSUAL'
      Required = True
    end
    object tblinteresDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Required = True
      FixedChar = True
      Size = 255
    end
  end
  object tbldeclaraciones: TTable
    DatabaseName = 'softeps'
    TableName = 'DECLARACIONES'
    Left = 179
    Top = 5
    object tbldeclaracionesNUM_DECLARACION: TFloatField
      FieldName = 'NUM_DECLARACION'
      Required = True
    end
    object tbldeclaracionesCOT_TIPO_DECLA: TFloatField
      FieldName = 'COT_TIPO_DECLA'
      Required = True
    end
    object tbldeclaracionesPERIODO_COMPENSADO: TStringField
      FieldName = 'PERIODO_COMPENSADO'
      Required = True
      Size = 10
    end
    object tbldeclaracionesFECHA_DECLARACION: TDateTimeField
      FieldName = 'FECHA_DECLARACION'
      Required = True
    end
    object tbldeclaracionesTIPO_CIERRE: TStringField
      FieldName = 'TIPO_CIERRE'
      Size = 1
    end
    object tbldeclaracionesNUM_DECLARATIVA: TFloatField
      FieldName = 'NUM_DECLARATIVA'
    end
  end
  object qrymcdeclaracion: TQuery
    DatabaseName = 'softeps'
    RequestLive = True
    SQL.Strings = (
      'SELECT * FROM DECLARACIONES '
      'WHERE PERIODO_COMPENSADO = :PER_COMPENSADO '
      '          AND FECHA_DECLARACION = :FECHA_DEC'
      '')
    Left = 229
    Top = 10
    ParamData = <
      item
        DataType = ftString
        Name = 'per_compensado'
        ParamType = ptInputOutput
        Value = ''
      end
      item
        DataType = ftDate
        Name = 'fecha_dec'
        ParamType = ptInputOutput
        Value = 0d
      end>
    object qrymcdeclaracionNUM_DECLARACION: TFloatField
      FieldName = 'NUM_DECLARACION'
      Origin = 'SOFTEPS.DECLARACIONES.NUM_DECLARACION'
    end
    object qrymcdeclaracionCOT_TIPO_DECLA: TFloatField
      FieldName = 'COT_TIPO_DECLA'
      Origin = 'SOFTEPS.DECLARACIONES.COT_TIPO_DECLA'
    end
    object qrymcdeclaracionPERIODO_COMPENSADO: TStringField
      FieldName = 'PERIODO_COMPENSADO'
      Origin = 'SOFTEPS.DECLARACIONES.PERIODO_COMPENSADO'
      Size = 10
    end
    object qrymcdeclaracionFECHA_DECLARACION: TDateTimeField
      FieldName = 'FECHA_DECLARACION'
      Origin = 'SOFTEPS.DECLARACIONES.FECHA_DECLARACION'
    end
    object qrymcdeclaracionTIPO_CIERRE: TStringField
      FieldName = 'TIPO_CIERRE'
      Origin = 'SOFTEPS.DECLARACIONES.TIPO_CIERRE'
      Size = 1
    end
    object qrymcdeclaracionNUM_DECLARATIVA: TFloatField
      FieldName = 'NUM_DECLARATIVA'
      Origin = 'SOFTEPS.DECLARACIONES.NUM_DECLARATIVA'
    end
  end
  object qrymcetabas: TQuery
    DatabaseName = 'softeps'
    RequestLive = True
    SQL.Strings = (
      'SELECT * FROM BASES_DE_CALCULO '
      'WHERE NUM_DECLARACION = :dec'
      ' AND COD_GRUPO_ETA  = :eta'
      '')
    Left = 229
    Top = 10
    ParamData = <
      item
        DataType = ftString
        Name = 'dec'
        ParamType = ptInputOutput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'eta'
        ParamType = ptInputOutput
        Value = ''
      end>
    object qrymcetabasNUM_DECLARACION: TFloatField
      FieldName = 'NUM_DECLARACION'
      Origin = 'SOFTEPS.BASES_DE_CALCULO.NUM_DECLARACION'
    end
    object qrymcetabasCOD_GRUPO_ETA: TFloatField
      FieldName = 'COD_GRUPO_ETA'
      Origin = 'SOFTEPS.BASES_DE_CALCULO.COD_GRUPO_ETA'
    end
    object qrymcetabasTOT_COTIZANTES_MCN: TFloatField
      FieldName = 'TOT_COTIZANTES_MCN'
      Origin = 'SOFTEPS.BASES_DE_CALCULO.TOT_COTIZANTES_MCN'
    end
    object qrymcetabasTOT_COTIZANTES_MCE: TFloatField
      FieldName = 'TOT_COTIZANTES_MCE'
      Origin = 'SOFTEPS.BASES_DE_CALCULO.TOT_COTIZANTES_MCE'
    end
    object qrymcetabasTOT_COTIZANTES_MPN: TFloatField
      FieldName = 'TOT_COTIZANTES_MPN'
      Origin = 'SOFTEPS.BASES_DE_CALCULO.TOT_COTIZANTES_MPN'
    end
    object qrymcetabasTOT_COTIZANTES_MPE: TFloatField
      FieldName = 'TOT_COTIZANTES_MPE'
      Origin = 'SOFTEPS.BASES_DE_CALCULO.TOT_COTIZANTES_MPE'
    end
    object qrymcetabasTOT_BENEFICIARIOS_MCN: TFloatField
      FieldName = 'TOT_BENEFICIARIOS_MCN'
      Origin = 'SOFTEPS.BASES_DE_CALCULO.TOT_BENEFICIARIOS_MCN'
    end
    object qrymcetabasTOT_BENEFICIARIOS_MCE: TFloatField
      FieldName = 'TOT_BENEFICIARIOS_MCE'
      Origin = 'SOFTEPS.BASES_DE_CALCULO.TOT_BENEFICIARIOS_MCE'
    end
    object qrymcetabasTOT_BENEFICIARIOS_MPNL: TFloatField
      FieldName = 'TOT_BENEFICIARIOS_MPNL'
      Origin = 'SOFTEPS.BASES_DE_CALCULO.TOT_BENEFICIARIOS_MPNL'
    end
    object qrymcetabasTOT_BENEFICIARIOS_MPE: TFloatField
      FieldName = 'TOT_BENEFICIARIOS_MPE'
      Origin = 'SOFTEPS.BASES_DE_CALCULO.TOT_BENEFICIARIOS_MPE'
    end
    object qrymcetabasTOT_AFILIADOS_MCN: TFloatField
      FieldName = 'TOT_AFILIADOS_MCN'
      Origin = 'SOFTEPS.BASES_DE_CALCULO.TOT_AFILIADOS_MCN'
    end
    object qrymcetabasTOT_AFILIADOS_MCE: TFloatField
      FieldName = 'TOT_AFILIADOS_MCE'
      Origin = 'SOFTEPS.BASES_DE_CALCULO.TOT_AFILIADOS_MCE'
    end
    object qrymcetabasTOT_AFILIADOS_MPN: TFloatField
      FieldName = 'TOT_AFILIADOS_MPN'
      Origin = 'SOFTEPS.BASES_DE_CALCULO.TOT_AFILIADOS_MPN'
    end
    object qrymcetabasTOT_AFILIADOS_MPE: TFloatField
      FieldName = 'TOT_AFILIADOS_MPE'
      Origin = 'SOFTEPS.BASES_DE_CALCULO.TOT_AFILIADOS_MPE'
    end
    object qrymcetabasTOT_AFILIADOS_UPCNORMAL: TFloatField
      FieldName = 'TOT_AFILIADOS_UPCNORMAL'
      Origin = 'SOFTEPS.BASES_DE_CALCULO.TOT_AFILIADOS_UPCNORMAL'
    end
    object qrymcetabasTOT_AFILIADOS_UPCESPECIAL: TFloatField
      FieldName = 'TOT_AFILIADOS_UPCESPECIAL'
      Origin = 'SOFTEPS.BASES_DE_CALCULO.TOT_AFILIADOS_UPCESPECIAL'
    end
    object qrymcetabasTOT_DIAS_COTZNN: TFloatField
      FieldName = 'TOT_DIAS_COTZNN'
      Origin = 'SOFTEPS.BASES_DE_CALCULO.TOT_DIAS_COTZNN'
    end
    object qrymcetabasTOT_DIAS_COTIZE: TFloatField
      FieldName = 'TOT_DIAS_COTIZE'
      Origin = 'SOFTEPS.BASES_DE_CALCULO.TOT_DIAS_COTIZE'
    end
    object qrymcetabasTOT_UPC_DZN: TFloatField
      FieldName = 'TOT_UPC_DZN'
      Origin = 'SOFTEPS.BASES_DE_CALCULO.TOT_UPC_DZN'
    end
    object qrymcetabasTOT_UPC_DZE: TFloatField
      FieldName = 'TOT_UPC_DZE'
      Origin = 'SOFTEPS.BASES_DE_CALCULO.TOT_UPC_DZE'
    end
    object qrymcetabasTOT_VALOR_UPC: TFloatField
      FieldName = 'TOT_VALOR_UPC'
      Origin = 'SOFTEPS.BASES_DE_CALCULO.TOT_VALOR_UPC'
    end
  end
  object tblbasesdecalculo: TTable
    DatabaseName = 'softeps'
    TableName = 'BASES_DE_CALCULO'
    Left = 179
    Top = 5
    object tblbasesdecalculoNUM_DECLARACION: TFloatField
      FieldName = 'NUM_DECLARACION'
      Required = True
    end
    object tblbasesdecalculoCOD_GRUPO_ETA: TFloatField
      FieldName = 'COD_GRUPO_ETA'
      Required = True
    end
    object tblbasesdecalculoTOT_COTIZANTES_MCN: TFloatField
      FieldName = 'TOT_COTIZANTES_MCN'
    end
    object tblbasesdecalculoTOT_COTIZANTES_MCE: TFloatField
      FieldName = 'TOT_COTIZANTES_MCE'
    end
    object tblbasesdecalculoTOT_COTIZANTES_MPN: TFloatField
      FieldName = 'TOT_COTIZANTES_MPN'
    end
    object tblbasesdecalculoTOT_COTIZANTES_MPE: TFloatField
      FieldName = 'TOT_COTIZANTES_MPE'
    end
    object tblbasesdecalculoTOT_BENEFICIARIOS_MCN: TFloatField
      FieldName = 'TOT_BENEFICIARIOS_MCN'
    end
    object tblbasesdecalculoTOT_BENEFICIARIOS_MCE: TFloatField
      FieldName = 'TOT_BENEFICIARIOS_MCE'
    end
    object tblbasesdecalculoTOT_BENEFICIARIOS_MPNL: TFloatField
      FieldName = 'TOT_BENEFICIARIOS_MPNL'
    end
    object tblbasesdecalculoTOT_BENEFICIARIOS_MPE: TFloatField
      FieldName = 'TOT_BENEFICIARIOS_MPE'
    end
    object tblbasesdecalculoTOT_AFILIADOS_MCN: TFloatField
      FieldName = 'TOT_AFILIADOS_MCN'
    end
    object tblbasesdecalculoTOT_AFILIADOS_MCE: TFloatField
      FieldName = 'TOT_AFILIADOS_MCE'
    end
    object tblbasesdecalculoTOT_AFILIADOS_MPN: TFloatField
      FieldName = 'TOT_AFILIADOS_MPN'
    end
    object tblbasesdecalculoTOT_AFILIADOS_MPE: TFloatField
      FieldName = 'TOT_AFILIADOS_MPE'
    end
    object tblbasesdecalculoTOT_AFILIADOS_UPCNORMAL: TFloatField
      FieldName = 'TOT_AFILIADOS_UPCNORMAL'
    end
    object tblbasesdecalculoTOT_AFILIADOS_UPCESPECIAL: TFloatField
      FieldName = 'TOT_AFILIADOS_UPCESPECIAL'
    end
    object tblbasesdecalculoTOT_DIAS_COTZNN: TFloatField
      FieldName = 'TOT_DIAS_COTZNN'
    end
    object tblbasesdecalculoTOT_DIAS_COTIZE: TFloatField
      FieldName = 'TOT_DIAS_COTIZE'
    end
    object tblbasesdecalculoTOT_UPC_DZN: TFloatField
      FieldName = 'TOT_UPC_DZN'
    end
    object tblbasesdecalculoTOT_UPC_DZE: TFloatField
      FieldName = 'TOT_UPC_DZE'
    end
    object tblbasesdecalculoTOT_VALOR_UPC: TFloatField
      FieldName = 'TOT_VALOR_UPC'
    end
  end
  object tblliquidacion: TTable
    DatabaseName = 'softeps'
    TableName = 'LIQUIDACION_COMPENSACION'
    Left = 179
    Top = 5
    object tblliquidacionNUM_DECLARACION: TFloatField
      FieldName = 'NUM_DECLARACION'
      Required = True
    end
    object tblliquidacionING_SALBASE_COTIZ12: TFloatField
      FieldName = 'ING_SALBASE_COTIZ12'
    end
    object tblliquidacionING_SALBASE_COTIZ8: TFloatField
      FieldName = 'ING_SALBASE_COTIZ8'
    end
    object tblliquidacionVAL_TOTAL_RECA12: TFloatField
      FieldName = 'VAL_TOTAL_RECA12'
    end
    object tblliquidacionVAL_TOTAL_RECA8: TFloatField
      FieldName = 'VAL_TOTAL_RECA8'
    end
    object tblliquidacionVAL_DEDUCIDO_AUT12: TFloatField
      FieldName = 'VAL_DEDUCIDO_AUT12'
    end
    object tblliquidacionVAL_DEDUCIDO_AUT8: TFloatField
      FieldName = 'VAL_DEDUCIDO_AUT8'
    end
    object tblliquidacionVAL_TOTAL_COTIZ12: TFloatField
      FieldName = 'VAL_TOTAL_COTIZ12'
    end
    object tblliquidacionVAL_TOTAL_COTIZ8: TFloatField
      FieldName = 'VAL_TOTAL_COTIZ8'
    end
    object tblliquidacionVAL_SOLIDARIDAD_12: TFloatField
      FieldName = 'VAL_SOLIDARIDAD_12'
    end
    object tblliquidacionVAL_SOLIDARIDAD_8: TFloatField
      FieldName = 'VAL_SOLIDARIDAD_8'
    end
    object tblliquidacionVAL_PYP12: TFloatField
      FieldName = 'VAL_PYP12'
    end
    object tblliquidacionVAL_PYP8: TFloatField
      FieldName = 'VAL_PYP8'
    end
    object tblliquidacionPRO_INCAPACIDADES12: TFloatField
      FieldName = 'PRO_INCAPACIDADES12'
    end
    object tblliquidacionPRO_INCAPACIDADES8: TFloatField
      FieldName = 'PRO_INCAPACIDADES8'
    end
    object tblliquidacionVAL_COTIZACION_NET12: TFloatField
      FieldName = 'VAL_COTIZACION_NET12'
    end
    object tblliquidacionVAL_COTIZACION_NET8: TFloatField
      FieldName = 'VAL_COTIZACION_NET8'
    end
    object tblliquidacionVAL_LINCENCIAS_MAT12: TFloatField
      FieldName = 'VAL_LINCENCIAS_MAT12'
    end
    object tblliquidacionVAL_LICENCIAS_MAT8: TFloatField
      FieldName = 'VAL_LICENCIAS_MAT8'
    end
    object tblliquidacionVAL_RECONOCER_UPC12: TFloatField
      FieldName = 'VAL_RECONOCER_UPC12'
    end
    object tblliquidacionVAL_RECONOCER_UPC8: TFloatField
      FieldName = 'VAL_RECONOCER_UPC8'
    end
    object tblliquidacionVAL_PAGCOBRAR_FSG12: TFloatField
      FieldName = 'VAL_PAGCOBRAR_FSG12'
    end
    object tblliquidacionVAL_PAGCOBRAR_FSG8: TFloatField
      FieldName = 'VAL_PAGCOBRAR_FSG8'
    end
    object tblliquidacionTOT_SUBCUENTA_COMP12: TFloatField
      FieldName = 'TOT_SUBCUENTA_COMP12'
    end
    object tblliquidacionTOT_SUBCUENTA_COMP8: TFloatField
      FieldName = 'TOT_SUBCUENTA_COMP8'
    end
    object tblliquidacionVAL_PROMOCION: TFloatField
      FieldName = 'VAL_PROMOCION'
    end
    object tblliquidacionREC_PROMOCION: TFloatField
      FieldName = 'REC_PROMOCION'
    end
    object tblliquidacionSAL_COMPENSAR_PROM: TFloatField
      FieldName = 'SAL_COMPENSAR_PROM'
    end
    object tblliquidacionFEC_CONSIGNACION_SOLID: TDateTimeField
      FieldName = 'FEC_CONSIGNACION_SOLID'
    end
    object tblliquidacionVAL_CONSIGNACION_SOLID: TFloatField
      FieldName = 'VAL_CONSIGNACION_SOLID'
    end
    object tblliquidacionFEC_CONSIGNACION_PRO: TDateTimeField
      FieldName = 'FEC_CONSIGNACION_PRO'
    end
    object tblliquidacionVAL_CONSIGNACION_PROMOCION: TFloatField
      FieldName = 'VAL_CONSIGNACION_PROMOCION'
    end
    object tblliquidacionFEC_CONSIGNACION_COMP: TDateTimeField
      FieldName = 'FEC_CONSIGNACION_COMP'
    end
    object tblliquidacionVAL_CONSIGNADO_COMP: TFloatField
      FieldName = 'VAL_CONSIGNADO_COMP'
    end
    object tblliquidacionNUM_AGREGADOS: TFloatField
      FieldName = 'NUM_AGREGADOS'
    end
    object tblliquidacionVAL_UPC_AGREG: TFloatField
      FieldName = 'VAL_UPC_AGREG'
    end
    object tblliquidacionVAL_PROMOCION_AGREG: TFloatField
      FieldName = 'VAL_PROMOCION_AGREG'
    end
    object tblliquidacionVA_SOLID_AGREG: TFloatField
      FieldName = 'VA_SOLID_AGREG'
    end
    object tblliquidacionNUM_AUTOLIQUIDACIONES: TFloatField
      FieldName = 'NUM_AUTOLIQUIDACIONES'
    end
    object tblliquidacionVAL_PAGO_INCAP: TFloatField
      FieldName = 'VAL_PAGO_INCAP'
    end
    object tblliquidacionTOT_COTIZACIONES_NOIDENT: TFloatField
      FieldName = 'TOT_COTIZACIONES_NOIDENT'
    end
    object tblliquidacionNUM_TOT_AFIL: TFloatField
      FieldName = 'NUM_TOT_AFIL'
    end
    object tblliquidacionNUM_TOTAL_COTIZ8: TFloatField
      FieldName = 'NUM_TOTAL_COTIZ8'
    end
    object tblliquidacionTOT_AFILIADOS_IND: TFloatField
      FieldName = 'TOT_AFILIADOS_IND'
    end
    object tblliquidacionIBC_AFILIADOS_IND: TFloatField
      FieldName = 'IBC_AFILIADOS_IND'
    end
    object tblliquidacionTOT_MADRES_COMU: TFloatField
      FieldName = 'TOT_MADRES_COMU'
    end
    object tblliquidacionIBC_MADRES_COMU: TFloatField
      FieldName = 'IBC_MADRES_COMU'
    end
    object tblliquidacionTOT_MADRESCOMU_COMP: TFloatField
      FieldName = 'TOT_MADRESCOMU_COMP'
    end
    object tblliquidacionIBC_MADRESCOMU_COMP: TFloatField
      FieldName = 'IBC_MADRESCOMU_COMP'
    end
    object tblliquidacionTOT_MIEMBROS_ADICDEP: TFloatField
      FieldName = 'TOT_MIEMBROS_ADICDEP'
    end
    object tblliquidacionREC_MIEMBROS_ADICDEP: TFloatField
      FieldName = 'REC_MIEMBROS_ADICDEP'
    end
    object tblliquidacionTOT_INCAPACIDADES_PAG: TFloatField
      FieldName = 'TOT_INCAPACIDADES_PAG'
    end
    object tblliquidacionVAL_RECAUDO_BRUT: TFloatField
      FieldName = 'VAL_RECAUDO_BRUT'
    end
    object tblliquidacionVAL_LICENCIAAS_PAG: TFloatField
      FieldName = 'VAL_LICENCIAAS_PAG'
    end
    object tblliquidacionVAL_APORTES_NETO: TFloatField
      FieldName = 'VAL_APORTES_NETO'
    end
    object tblliquidacionREC_ACUMULADO_PER_COMP: TFloatField
      FieldName = 'REC_ACUMULADO_PER_COMP'
    end
    object tblliquidacionVAL_RECONOCER_PYP: TFloatField
      FieldName = 'VAL_RECONOCER_PYP'
    end
  end
  object qryliquidacion: TQuery
    DatabaseName = 'softeps'
    RequestLive = True
    SQL.Strings = (
      'select * from liquidacion_compensacion')
    Left = 229
    Top = 10
    object qryliquidacionnum_declaracion: TFloatField
      FieldName = 'num_declaracion'
      Origin = 'DBUNIMEC.liquidacion_compensacion.num_declaracion'
    end
    object qryliquidacioning_salbase_cotiz12: TFloatField
      FieldName = 'ing_salbase_cotiz12'
      Origin = 'DBUNIMEC.liquidacion_compensacion.ing_salbase_cotiz12'
    end
    object qryliquidacioning_salbase_cotiz8: TFloatField
      FieldName = 'ing_salbase_cotiz8'
      Origin = 'DBUNIMEC.liquidacion_compensacion.ing_salbase_cotiz8'
    end
    object qryliquidacionval_total_reca12: TFloatField
      FieldName = 'val_total_reca12'
      Origin = 'DBUNIMEC.liquidacion_compensacion.val_total_reca12'
    end
    object qryliquidacionval_total_reca8: TFloatField
      FieldName = 'val_total_reca8'
      Origin = 'DBUNIMEC.liquidacion_compensacion.val_total_reca8'
    end
    object qryliquidacionval_deducido_aut12: TFloatField
      FieldName = 'val_deducido_aut12'
      Origin = 'DBUNIMEC.liquidacion_compensacion.val_deducido_aut12'
    end
    object qryliquidacionval_deducido_aut8: TFloatField
      FieldName = 'val_deducido_aut8'
      Origin = 'DBUNIMEC.liquidacion_compensacion.val_deducido_aut8'
    end
    object qryliquidacionval_total_cotiz12: TFloatField
      FieldName = 'val_total_cotiz12'
      Origin = 'DBUNIMEC.liquidacion_compensacion.val_total_cotiz12'
    end
    object qryliquidacionval_total_cotiz8: TFloatField
      FieldName = 'val_total_cotiz8'
      Origin = 'DBUNIMEC.liquidacion_compensacion.val_total_cotiz8'
    end
    object qryliquidacionval_solidaridad_12: TFloatField
      FieldName = 'val_solidaridad_12'
      Origin = 'DBUNIMEC.liquidacion_compensacion.val_solidaridad_12'
    end
    object qryliquidacionval_solidaridad_8: TFloatField
      FieldName = 'val_solidaridad_8'
      Origin = 'DBUNIMEC.liquidacion_compensacion.val_solidaridad_8'
    end
    object qryliquidacionval_pyp12: TFloatField
      FieldName = 'val_pyp12'
      Origin = 'DBUNIMEC.liquidacion_compensacion.val_pyp12'
    end
    object qryliquidacionval_pyp8: TFloatField
      FieldName = 'val_pyp8'
      Origin = 'DBUNIMEC.liquidacion_compensacion.val_pyp8'
    end
    object qryliquidacionpro_incapacidades12: TFloatField
      FieldName = 'pro_incapacidades12'
      Origin = 'DBUNIMEC.liquidacion_compensacion.pro_incapacidades12'
    end
    object qryliquidacionpro_incapacidades8: TFloatField
      FieldName = 'pro_incapacidades8'
      Origin = 'DBUNIMEC.liquidacion_compensacion.pro_incapacidades8'
    end
    object qryliquidacionval_cotizacion_net12: TFloatField
      FieldName = 'val_cotizacion_net12'
      Origin = 'DBUNIMEC.liquidacion_compensacion.val_cotizacion_net12'
    end
    object qryliquidacionval_cotizacion_net8: TFloatField
      FieldName = 'val_cotizacion_net8'
      Origin = 'DBUNIMEC.liquidacion_compensacion.val_cotizacion_net8'
    end
    object qryliquidacionval_lincencias_mat12: TFloatField
      FieldName = 'val_lincencias_mat12'
      Origin = 'DBUNIMEC.liquidacion_compensacion.val_lincencias_mat12'
    end
    object qryliquidacionval_licencias_mat8: TFloatField
      FieldName = 'val_licencias_mat8'
      Origin = 'DBUNIMEC.liquidacion_compensacion.val_licencias_mat8'
    end
    object qryliquidacionval_reconocer_upc12: TFloatField
      FieldName = 'val_reconocer_upc12'
      Origin = 'DBUNIMEC.liquidacion_compensacion.val_reconocer_upc12'
    end
    object qryliquidacionval_reconocer_upc8: TFloatField
      FieldName = 'val_reconocer_upc8'
      Origin = 'DBUNIMEC.liquidacion_compensacion.val_reconocer_upc8'
    end
    object qryliquidacionval_pagcobrar_fsg12: TFloatField
      FieldName = 'val_pagcobrar_fsg12'
      Origin = 'DBUNIMEC.liquidacion_compensacion.val_pagcobrar_fsg12'
    end
    object qryliquidacionval_pagcobrar_fsg8: TFloatField
      FieldName = 'val_pagcobrar_fsg8'
      Origin = 'DBUNIMEC.liquidacion_compensacion.val_pagcobrar_fsg8'
    end
    object qryliquidaciontot_subcuenta_comp12: TFloatField
      FieldName = 'tot_subcuenta_comp12'
      Origin = 'DBUNIMEC.liquidacion_compensacion.tot_subcuenta_comp12'
    end
    object qryliquidaciontot_subcuenta_comp8: TFloatField
      FieldName = 'tot_subcuenta_comp8'
      Origin = 'DBUNIMEC.liquidacion_compensacion.tot_subcuenta_comp8'
    end
    object qryliquidacionval_promocion: TFloatField
      FieldName = 'val_promocion'
      Origin = 'DBUNIMEC.liquidacion_compensacion.val_promocion'
    end
    object qryliquidacionrec_promocion: TFloatField
      FieldName = 'rec_promocion'
      Origin = 'DBUNIMEC.liquidacion_compensacion.rec_promocion'
    end
    object qryliquidacionsal_compensar_prom: TFloatField
      FieldName = 'sal_compensar_prom'
      Origin = 'DBUNIMEC.liquidacion_compensacion.sal_compensar_prom'
    end
    object qryliquidacionfec_consignacion_solid: TDateTimeField
      FieldName = 'fec_consignacion_solid'
      Origin = 'DBUNIMEC.liquidacion_compensacion.fec_consignacion_solid'
    end
    object qryliquidacionval_consignacion_solid: TFloatField
      FieldName = 'val_consignacion_solid'
      Origin = 'DBUNIMEC.liquidacion_compensacion.val_consignacion_solid'
    end
    object qryliquidacionfec_consignacion_pro: TDateTimeField
      FieldName = 'fec_consignacion_pro'
      Origin = 'DBUNIMEC.liquidacion_compensacion.fec_consignacion_pro'
    end
    object qryliquidacionval_consignacion_promocion: TFloatField
      FieldName = 'val_consignacion_promocion'
      Origin = 'DBUNIMEC.liquidacion_compensacion.val_consignacion_promocion'
    end
    object qryliquidacionfec_consignacion_comp: TDateTimeField
      FieldName = 'fec_consignacion_comp'
      Origin = 'DBUNIMEC.liquidacion_compensacion.fec_consignacion_comp'
    end
    object qryliquidacionval_consignado_comp: TFloatField
      FieldName = 'val_consignado_comp'
      Origin = 'DBUNIMEC.liquidacion_compensacion.val_consignado_comp'
    end
    object qryliquidacionnum_agregados: TFloatField
      FieldName = 'num_agregados'
      Origin = 'DBUNIMEC.liquidacion_compensacion.num_agregados'
    end
    object qryliquidacionval_upc_agreg: TFloatField
      FieldName = 'val_upc_agreg'
      Origin = 'DBUNIMEC.liquidacion_compensacion.val_upc_agreg'
    end
    object qryliquidacionval_promocion_agreg: TFloatField
      FieldName = 'val_promocion_agreg'
      Origin = 'DBUNIMEC.liquidacion_compensacion.val_promocion_agreg'
    end
    object qryliquidacionva_solid_agreg: TFloatField
      FieldName = 'va_solid_agreg'
      Origin = 'DBUNIMEC.liquidacion_compensacion.va_solid_agreg'
    end
    object qryliquidacionnum_autoliquidaciones: TFloatField
      FieldName = 'num_autoliquidaciones'
      Origin = 'DBUNIMEC.liquidacion_compensacion.num_autoliquidaciones'
    end
    object qryliquidacionval_pago_incap: TFloatField
      FieldName = 'val_pago_incap'
      Origin = 'DBUNIMEC.liquidacion_compensacion.val_pago_incap'
    end
    object qryliquidaciontot_cotizaciones_noident: TFloatField
      FieldName = 'tot_cotizaciones_noident'
      Origin = 'DBUNIMEC.liquidacion_compensacion.tot_cotizaciones_noident'
    end
    object qryliquidacionnum_tot_afil: TFloatField
      FieldName = 'num_tot_afil'
      Origin = 'DBUNIMEC.liquidacion_compensacion.num_tot_afil'
    end
    object qryliquidacionnum_total_cotiz8: TFloatField
      FieldName = 'num_total_cotiz8'
      Origin = 'DBUNIMEC.liquidacion_compensacion.num_total_cotiz8'
    end
    object qryliquidaciontot_afiliados_ind: TFloatField
      FieldName = 'tot_afiliados_ind'
      Origin = 'DBUNIMEC.liquidacion_compensacion.tot_afiliados_ind'
    end
    object qryliquidacionibc_afiliados_ind: TFloatField
      FieldName = 'ibc_afiliados_ind'
      Origin = 'DBUNIMEC.liquidacion_compensacion.ibc_afiliados_ind'
    end
    object qryliquidaciontot_madres_comu: TFloatField
      FieldName = 'tot_madres_comu'
      Origin = 'DBUNIMEC.liquidacion_compensacion.tot_madres_comu'
    end
    object qryliquidacionibc_madres_comu: TFloatField
      FieldName = 'ibc_madres_comu'
      Origin = 'DBUNIMEC.liquidacion_compensacion.ibc_madres_comu'
    end
    object qryliquidaciontot_madrescomu_comp: TFloatField
      FieldName = 'tot_madrescomu_comp'
      Origin = 'DBUNIMEC.liquidacion_compensacion.tot_madrescomu_comp'
    end
    object qryliquidacionibc_madrescomu_comp: TFloatField
      FieldName = 'ibc_madrescomu_comp'
      Origin = 'DBUNIMEC.liquidacion_compensacion.ibc_madrescomu_comp'
    end
    object qryliquidaciontot_miembros_adicdep: TFloatField
      FieldName = 'tot_miembros_adicdep'
      Origin = 'DBUNIMEC.liquidacion_compensacion.tot_miembros_adicdep'
    end
    object qryliquidacionrec_miembros_adicdep: TFloatField
      FieldName = 'rec_miembros_adicdep'
      Origin = 'DBUNIMEC.liquidacion_compensacion.rec_miembros_adicdep'
    end
    object qryliquidaciontot_incapacidades_pag: TFloatField
      FieldName = 'tot_incapacidades_pag'
      Origin = 'DBUNIMEC.liquidacion_compensacion.tot_incapacidades_pag'
    end
    object qryliquidacionval_recaudo_brut: TFloatField
      FieldName = 'val_recaudo_brut'
      Origin = 'DBUNIMEC.liquidacion_compensacion.val_recaudo_brut'
    end
    object qryliquidacionval_licenciaas_pag: TFloatField
      FieldName = 'val_licenciaas_pag'
      Origin = 'DBUNIMEC.liquidacion_compensacion.val_licenciaas_pag'
    end
    object qryliquidacionval_aportes_neto: TFloatField
      FieldName = 'val_aportes_neto'
      Origin = 'DBUNIMEC.liquidacion_compensacion.val_aportes_neto'
    end
    object qryliquidacionrec_acumulado_per_comp: TFloatField
      FieldName = 'rec_acumulado_per_comp'
      Origin = 'DBUNIMEC.liquidacion_compensacion.rec_acumulado_per_comp'
    end
  end
  object tblbasesdep: TTable
    DatabaseName = 'softeps'
    TableName = 'BASES_DE_CALCULO_DEP'
    Left = 179
    Top = 5
    object tblbasesdepNUM_DECLARACION: TFloatField
      FieldName = 'NUM_DECLARACION'
      Required = True
    end
    object tblbasesdepCOD_GRUPO_ETA: TFloatField
      FieldName = 'COD_GRUPO_ETA'
      Required = True
    end
    object tblbasesdepTOT_DEPENDIENTES: TFloatField
      FieldName = 'TOT_DEPENDIENTES'
      Required = True
    end
    object tblbasesdepVAL_UPC_DEPENDIENTES: TFloatField
      FieldName = 'VAL_UPC_DEPENDIENTES'
      Required = True
    end
    object tblbasesdepVAL_PROMOCION: TFloatField
      FieldName = 'VAL_PROMOCION'
      Required = True
    end
    object tblbasesdepVAL_SOLIDARIDAD: TFloatField
      FieldName = 'VAL_SOLIDARIDAD'
      Required = True
    end
  end
  object qrymcbasesdep: TQuery
    DatabaseName = 'softeps'
    RequestLive = True
    SQL.Strings = (
      'SELECT * FROM BASES_DE_CALCULO_DEP '
      'WHERE NUM_DECLARACION = :num_declaracion'
      '    AND COD_GRUPO_ETA = :cod_grupo_eta')
    Left = 229
    Top = 10
    ParamData = <
      item
        DataType = ftString
        Name = 'num_declaracion'
        ParamType = ptInputOutput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'cod_grupo_eta'
        ParamType = ptInputOutput
        Value = ''
      end>
    object qrymcbasesdepNUM_DECLARACION: TFloatField
      FieldName = 'NUM_DECLARACION'
      Origin = 'SOFTEPS.BASES_DE_CALCULO_DEP.NUM_DECLARACION'
    end
    object qrymcbasesdepCOD_GRUPO_ETA: TFloatField
      FieldName = 'COD_GRUPO_ETA'
      Origin = 'SOFTEPS.BASES_DE_CALCULO_DEP.COD_GRUPO_ETA'
    end
    object qrymcbasesdepTOT_DEPENDIENTES: TFloatField
      FieldName = 'TOT_DEPENDIENTES'
      Origin = 'SOFTEPS.BASES_DE_CALCULO_DEP.TOT_DEPENDIENTES'
    end
    object qrymcbasesdepVAL_UPC_DEPENDIENTES: TFloatField
      FieldName = 'VAL_UPC_DEPENDIENTES'
      Origin = 'SOFTEPS.BASES_DE_CALCULO_DEP.VAL_UPC_DEPENDIENTES'
    end
    object qrymcbasesdepVAL_PROMOCION: TFloatField
      FieldName = 'VAL_PROMOCION'
      Origin = 'SOFTEPS.BASES_DE_CALCULO_DEP.VAL_PROMOCION'
    end
    object qrymcbasesdepVAL_SOLIDARIDAD: TFloatField
      FieldName = 'VAL_SOLIDARIDAD'
      Origin = 'SOFTEPS.BASES_DE_CALCULO_DEP.VAL_SOLIDARIDAD'
    end
  end
  object tblcierres: TTable
    DatabaseName = 'softeps'
    TableName = 'CIERRES'
    Left = 179
    Top = 5
    object tblcierresTIP_CIERRE: TStringField
      FieldName = 'TIP_CIERRE'
      Required = True
      Size = 1
    end
    object tblcierresPER_COMPENSACION: TStringField
      FieldName = 'PER_COMPENSACION'
      Required = True
      Size = 7
    end
    object tblcierresFEC_DIGITACION: TDateTimeField
      FieldName = 'FEC_DIGITACION'
      Required = True
    end
  end
  object qrymccierres: TQuery
    DatabaseName = 'softeps'
    RequestLive = True
    SQL.Strings = (
      'SELECT * FROM CIERRES WHERE TIP_CIERRE = :tip_cierre'
      '            AND PER_COMPENSACION = :per_compensacion')
    Left = 229
    Top = 10
    ParamData = <
      item
        DataType = ftString
        Name = 'tip_cierre'
        ParamType = ptInputOutput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'per_compensacion'
        ParamType = ptInputOutput
        Value = ''
      end>
    object qrymccierresTIP_CIERRE: TStringField
      FieldName = 'TIP_CIERRE'
      Origin = 'SOFTEPS.CIERRES.TIP_CIERRE'
      Size = 1
    end
    object qrymccierresPER_COMPENSACION: TStringField
      FieldName = 'PER_COMPENSACION'
      Origin = 'SOFTEPS.CIERRES.PER_COMPENSACION'
      Size = 7
    end
    object qrymccierresFEC_DIGITACION: TDateTimeField
      FieldName = 'FEC_DIGITACION'
      Origin = 'SOFTEPS.CIERRES.FEC_DIGITACION'
    end
  end
  object tblautoliquidacion: TTable
    DatabaseName = 'softeps'
    TableName = 'AUTOLIQUIDACION'
    Left = 179
    Top = 5
    object tblautoliquidacionNUM_PLANILLA: TStringField
      FieldName = 'NUM_PLANILLA'
      Required = True
      Size = 15
    end
    object tblautoliquidacionEMP_TIPO_DOC: TStringField
      FieldName = 'EMP_TIPO_DOC'
      Required = True
      FixedChar = True
      Size = 3
    end
    object tblautoliquidacionEMP_NUMERO_DOC: TStringField
      FieldName = 'EMP_NUMERO_DOC'
      Required = True
      Size = 18
    end
    object tblautoliquidacionCOD_SUCURSAL: TStringField
      FieldName = 'COD_SUCURSAL'
      FixedChar = True
      Size = 2
    end
    object tblautoliquidacionTIP_DECLARACION: TStringField
      FieldName = 'TIP_DECLARACION'
      Required = True
      FixedChar = True
      Size = 1
    end
    object tblautoliquidacionFEC_PAGO: TDateTimeField
      FieldName = 'FEC_PAGO'
    end
    object tblautoliquidacionNUM_PLANILLA_CORR: TStringField
      FieldName = 'NUM_PLANILLA_CORR'
      Size = 15
    end
    object tblautoliquidacionPER_COTIZACION: TStringField
      FieldName = 'PER_COTIZACION'
      Required = True
      FixedChar = True
      Size = 7
    end
    object tblautoliquidacionPER_PRESENTACION: TStringField
      FieldName = 'PER_PRESENTACION'
      FixedChar = True
      Size = 7
    end
    object tblautoliquidacionTOT_PLANILLA: TFloatField
      FieldName = 'TOT_PLANILLA'
    end
    object tblautoliquidacionTOT_APORTE_PER: TFloatField
      FieldName = 'TOT_APORTE_PER'
    end
    object tblautoliquidacionTOT_INCAPACIDAD: TFloatField
      FieldName = 'TOT_INCAPACIDAD'
    end
    object tblautoliquidacionTOT_LICENCIAS: TFloatField
      FieldName = 'TOT_LICENCIAS'
    end
    object tblautoliquidacionTOT_APORTE: TFloatField
      FieldName = 'TOT_APORTE'
    end
    object tblautoliquidacionINT_MORA: TFloatField
      FieldName = 'INT_MORA'
    end
    object tblautoliquidacionTOT_APORTE_MMORA: TFloatField
      FieldName = 'TOT_APORTE_MMORA'
    end
    object tblautoliquidacionTOT_SALDO_FAV: TFloatField
      FieldName = 'TOT_SALDO_FAV'
    end
    object tblautoliquidacionTOT_UPC: TFloatField
      FieldName = 'TOT_UPC'
    end
    object tblautoliquidacionTOT_PAGADO: TFloatField
      FieldName = 'TOT_PAGADO'
    end
    object tblautoliquidacionCOD_BANCO: TStringField
      FieldName = 'COD_BANCO'
      FixedChar = True
      Size = 3
    end
    object tblautoliquidacionNUM_CUENTA: TStringField
      FieldName = 'NUM_CUENTA'
    end
    object tblautoliquidacionVAL_EFECTIVO: TFloatField
      FieldName = 'VAL_EFECTIVO'
    end
    object tblautoliquidacionVAL_CHEQUE: TFloatField
      FieldName = 'VAL_CHEQUE'
    end
    object tblautoliquidacionEST_PLANILLA: TStringField
      FieldName = 'EST_PLANILLA'
      FixedChar = True
      Size = 3
    end
    object tblautoliquidacionCOD_REGIONAL: TStringField
      FieldName = 'COD_REGIONAL'
      FixedChar = True
      Size = 3
    end
    object tblautoliquidacionCOD_OFICINA: TStringField
      FieldName = 'COD_OFICINA'
      FixedChar = True
      Size = 3
    end
    object tblautoliquidacionNUM_DECLARACION: TFloatField
      FieldName = 'NUM_DECLARACION'
    end
    object tblautoliquidacionCRU_CONCILIACION: TStringField
      FieldName = 'CRU_CONCILIACION'
      FixedChar = True
      Size = 1
    end
    object tblautoliquidacionFEC_DIGITACION: TDateTimeField
      FieldName = 'FEC_DIGITACION'
    end
  end
  object tbldetautoliquidacion: TTable
    DatabaseName = 'softeps'
    IndexFieldNames = 'num_planilla'
    MasterFields = 'num_planilla'
    MasterSource = DataSource2
    TableName = 'DET_PLANILLA_AUTOLIQUIDACION'
    Left = 179
    Top = 5
    object tbldetautoliquidacionNUM_PLANILLA: TStringField
      FieldName = 'NUM_PLANILLA'
      Required = True
      Size = 15
    end
    object tbldetautoliquidacionAFI_TIPO_DOC: TStringField
      FieldName = 'AFI_TIPO_DOC'
      Required = True
      FixedChar = True
      Size = 3
    end
    object tbldetautoliquidacionAFI_NUMERO_DOC: TStringField
      FieldName = 'AFI_NUMERO_DOC'
      Required = True
      Size = 18
    end
    object tbldetautoliquidacionNOV_ING: TStringField
      FieldName = 'NOV_ING'
      FixedChar = True
      Size = 1
    end
    object tbldetautoliquidacionNOV_RET: TStringField
      FieldName = 'NOV_RET'
      FixedChar = True
      Size = 1
    end
    object tbldetautoliquidacionNOV_TDA: TStringField
      FieldName = 'NOV_TDA'
      FixedChar = True
      Size = 1
    end
    object tbldetautoliquidacionNOV_TAA: TStringField
      FieldName = 'NOV_TAA'
      FixedChar = True
      Size = 1
    end
    object tbldetautoliquidacionNOV_VSP: TStringField
      FieldName = 'NOV_VSP'
      FixedChar = True
      Size = 1
    end
    object tbldetautoliquidacionNOV_VST: TStringField
      FieldName = 'NOV_VST'
      FixedChar = True
      Size = 1
    end
    object tbldetautoliquidacionNOV_SLN: TStringField
      FieldName = 'NOV_SLN'
      FixedChar = True
      Size = 1
    end
    object tbldetautoliquidacionNOV_IGE: TStringField
      FieldName = 'NOV_IGE'
      FixedChar = True
      Size = 1
    end
    object tbldetautoliquidacionNOV_LMA: TStringField
      FieldName = 'NOV_LMA'
      FixedChar = True
      Size = 1
    end
    object tbldetautoliquidacionNOV_VAC: TStringField
      FieldName = 'NOV_VAC'
      FixedChar = True
      Size = 1
    end
    object tbldetautoliquidacionDIA_COTIZADOS: TStringField
      FieldName = 'DIA_COTIZADOS'
      Required = True
      Size = 2
    end
    object tbldetautoliquidacionSAL_BASE: TFloatField
      FieldName = 'SAL_BASE'
      Required = True
    end
    object tbldetautoliquidacionVAL_NETO_NOV: TFloatField
      FieldName = 'VAL_NETO_NOV'
    end
    object tbldetautoliquidacionING_BASE_COT: TFloatField
      FieldName = 'ING_BASE_COT'
      Required = True
    end
    object tbldetautoliquidacionCOT_OBLIGATORIA: TFloatField
      FieldName = 'COT_OBLIGATORIA'
      Required = True
    end
    object tbldetautoliquidacionNUM_INCAPACIDAD_EGR: TStringField
      FieldName = 'NUM_INCAPACIDAD_EGR'
      Size = 10
    end
    object tbldetautoliquidacionVAL_INCAPACIDAD_EGR: TFloatField
      FieldName = 'VAL_INCAPACIDAD_EGR'
    end
    object tbldetautoliquidacionNUM_LICENCIA_MAT: TStringField
      FieldName = 'NUM_LICENCIA_MAT'
      Size = 10
    end
    object tbldetautoliquidacionVAL_LICENCIA_MAT: TFloatField
      FieldName = 'VAL_LICENCIA_MAT'
    end
    object tbldetautoliquidacionVAL_UPC_ADI: TFloatField
      FieldName = 'VAL_UPC_ADI'
    end
    object tbldetautoliquidacionVAL_TOTAL_COT: TFloatField
      FieldName = 'VAL_TOTAL_COT'
      Required = True
    end
    object tbldetautoliquidacionDET_ESTADO: TStringField
      FieldName = 'DET_ESTADO'
      FixedChar = True
      Size = 3
    end
    object tbldetautoliquidacionPER_COTIZACION: TStringField
      FieldName = 'PER_COTIZACION'
      Size = 7
    end
    object tbldetautoliquidacionPER_PRESENTACION: TStringField
      FieldName = 'PER_PRESENTACION'
      FixedChar = True
      Size = 7
    end
    object tbldetautoliquidacionCOD_OFICINA: TStringField
      FieldName = 'COD_OFICINA'
      FixedChar = True
      Size = 3
    end
    object tbldetautoliquidacionNUM_DECLARACION: TFloatField
      FieldName = 'NUM_DECLARACION'
    end
  end
  object qyrnrs: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      'select * from autoliquidacion where est_planilla = "NR"')
    Left = 229
    Top = 10
    object qyrnrsnum_planilla: TStringField
      FieldName = 'num_planilla'
      Origin = 'DBUNIMEC.autoliquidacion.num_planilla'
      FixedChar = True
      Size = 15
    end
    object qyrnrsemp_tipo_doc: TStringField
      FieldName = 'emp_tipo_doc'
      Origin = 'DBUNIMEC.autoliquidacion.emp_tipo_doc'
      FixedChar = True
      Size = 3
    end
    object qyrnrsemp_numero_doc: TStringField
      FieldName = 'emp_numero_doc'
      Origin = 'DBUNIMEC.autoliquidacion.emp_numero_doc'
      FixedChar = True
      Size = 18
    end
    object qyrnrscod_sucursal: TStringField
      FieldName = 'cod_sucursal'
      Origin = 'DBUNIMEC.autoliquidacion.cod_sucursal'
      FixedChar = True
      Size = 2
    end
    object qyrnrstip_declaracion: TStringField
      FieldName = 'tip_declaracion'
      Origin = 'DBUNIMEC.autoliquidacion.tip_declaracion'
      FixedChar = True
      Size = 1
    end
    object qyrnrsfec_pago: TDateTimeField
      FieldName = 'fec_pago'
      Origin = 'DBUNIMEC.autoliquidacion.fec_pago'
    end
    object qyrnrsnum_planilla_corr: TStringField
      FieldName = 'num_planilla_corr'
      Origin = 'DBUNIMEC.autoliquidacion.num_planilla_corr'
      FixedChar = True
      Size = 15
    end
    object qyrnrsper_cotizacion: TStringField
      FieldName = 'per_cotizacion'
      Origin = 'DBUNIMEC.autoliquidacion.per_cotizacion'
      FixedChar = True
      Size = 7
    end
    object qyrnrsper_presentacion: TStringField
      FieldName = 'per_presentacion'
      Origin = 'DBUNIMEC.autoliquidacion.per_presentacion'
      FixedChar = True
      Size = 7
    end
    object qyrnrstot_planilla: TFloatField
      FieldName = 'tot_planilla'
      Origin = 'DBUNIMEC.autoliquidacion.tot_planilla'
    end
    object qyrnrstot_aporte_per: TFloatField
      FieldName = 'tot_aporte_per'
      Origin = 'DBUNIMEC.autoliquidacion.tot_aporte_per'
    end
    object qyrnrstot_incapacidad: TFloatField
      FieldName = 'tot_incapacidad'
      Origin = 'DBUNIMEC.autoliquidacion.tot_incapacidad'
    end
    object qyrnrstot_licencias: TFloatField
      FieldName = 'tot_licencias'
      Origin = 'DBUNIMEC.autoliquidacion.tot_licencias'
    end
    object qyrnrstot_aporte: TFloatField
      FieldName = 'tot_aporte'
      Origin = 'DBUNIMEC.autoliquidacion.tot_aporte'
    end
    object qyrnrsint_mora: TFloatField
      FieldName = 'int_mora'
      Origin = 'DBUNIMEC.autoliquidacion.int_mora'
    end
    object qyrnrstot_aporte_mmora: TFloatField
      FieldName = 'tot_aporte_mmora'
      Origin = 'DBUNIMEC.autoliquidacion.tot_aporte_mmora'
    end
    object qyrnrstot_saldo_fav: TFloatField
      FieldName = 'tot_saldo_fav'
      Origin = 'DBUNIMEC.autoliquidacion.tot_saldo_fav'
    end
    object qyrnrstot_upc: TFloatField
      FieldName = 'tot_upc'
      Origin = 'DBUNIMEC.autoliquidacion.tot_upc'
    end
    object qyrnrstot_pagado: TFloatField
      FieldName = 'tot_pagado'
      Origin = 'DBUNIMEC.autoliquidacion.tot_pagado'
    end
    object qyrnrscod_banco: TStringField
      FieldName = 'cod_banco'
      Origin = 'DBUNIMEC.autoliquidacion.cod_banco'
      FixedChar = True
      Size = 3
    end
    object qyrnrsnum_cuenta: TStringField
      FieldName = 'num_cuenta'
      Origin = 'DBUNIMEC.autoliquidacion.num_cuenta'
      FixedChar = True
    end
    object qyrnrsval_efectivo: TFloatField
      FieldName = 'val_efectivo'
      Origin = 'DBUNIMEC.autoliquidacion.val_efectivo'
    end
    object qyrnrsvaL_cheque: TFloatField
      FieldName = 'vaL_cheque'
      Origin = 'DBUNIMEC.autoliquidacion.vaL_cheque'
    end
    object qyrnrsest_planilla: TStringField
      FieldName = 'est_planilla'
      Origin = 'DBUNIMEC.autoliquidacion.est_planilla'
      FixedChar = True
      Size = 3
    end
    object qyrnrscod_regional: TStringField
      FieldName = 'cod_regional'
      Origin = 'DBUNIMEC.autoliquidacion.cod_regional'
      FixedChar = True
      Size = 3
    end
    object qyrnrscod_oficina: TStringField
      FieldName = 'cod_oficina'
      Origin = 'DBUNIMEC.autoliquidacion.cod_oficina'
      FixedChar = True
      Size = 3
    end
  end
  object qrydet: TQuery
    DatabaseName = 'softeps'
    RequestLive = True
    SQL.Strings = (
      
        'select * from det_planilla_autoliquidacion where det_estado = "N' +
        'R"')
    Left = 229
    Top = 10
    object qrydetnum_planilla: TStringField
      FieldName = 'num_planilla'
      Origin = 'DBUNIMEC.det_planilla_autoliquidacion.num_planilla'
      FixedChar = True
      Size = 10
    end
    object qrydetafi_tipo_doc: TStringField
      FieldName = 'afi_tipo_doc'
      Origin = 'DBUNIMEC.det_planilla_autoliquidacion.afi_tipo_doc'
      FixedChar = True
      Size = 3
    end
    object qrydetafi_numero_doc: TStringField
      FieldName = 'afi_numero_doc'
      Origin = 'DBUNIMEC.det_planilla_autoliquidacion.afi_numero_doc'
      FixedChar = True
      Size = 18
    end
    object qrydetnov_afiliado: TStringField
      FieldName = 'nov_afiliado'
      Origin = 'DBUNIMEC.det_planilla_autoliquidacion.nov_afiliado'
      FixedChar = True
      Size = 3
    end
    object qrydetdia_cotizados: TStringField
      FieldName = 'dia_cotizados'
      Origin = 'DBUNIMEC.det_planilla_autoliquidacion.dia_cotizados'
      FixedChar = True
      Size = 2
    end
    object qrydetSal_base: TFloatField
      FieldName = 'Sal_base'
      Origin = 'DBUNIMEC.det_planilla_autoliquidacion.Sal_base'
    end
    object qrydetval_neto_nov: TFloatField
      FieldName = 'val_neto_nov'
      Origin = 'DBUNIMEC.det_planilla_autoliquidacion.val_neto_nov'
    end
    object qrydeting_base_cot: TFloatField
      FieldName = 'ing_base_cot'
      Origin = 'DBUNIMEC.det_planilla_autoliquidacion.ing_base_cot'
    end
    object qrydetcot_obligatoria: TFloatField
      FieldName = 'cot_obligatoria'
      Origin = 'DBUNIMEC.det_planilla_autoliquidacion.cot_obligatoria'
    end
    object qrydetnum_incapacidad_egr: TStringField
      FieldName = 'num_incapacidad_egr'
      Origin = 'DBUNIMEC.det_planilla_autoliquidacion.num_incapacidad_egr'
      FixedChar = True
      Size = 10
    end
    object qrydetval_incapacidad_egr: TFloatField
      FieldName = 'val_incapacidad_egr'
      Origin = 'DBUNIMEC.det_planilla_autoliquidacion.val_incapacidad_egr'
    end
    object qrydetnum_licencia_mat: TStringField
      FieldName = 'num_licencia_mat'
      Origin = 'DBUNIMEC.det_planilla_autoliquidacion.num_licencia_mat'
      FixedChar = True
      Size = 10
    end
    object qrydetval_licencia_mat: TFloatField
      FieldName = 'val_licencia_mat'
      Origin = 'DBUNIMEC.det_planilla_autoliquidacion.val_licencia_mat'
    end
    object qrydetval_upc_adi: TFloatField
      FieldName = 'val_upc_adi'
      Origin = 'DBUNIMEC.det_planilla_autoliquidacion.val_upc_adi'
    end
    object qrydetval_total_cot: TFloatField
      FieldName = 'val_total_cot'
      Origin = 'DBUNIMEC.det_planilla_autoliquidacion.val_total_cot'
    end
    object qrydetdet_estado: TStringField
      FieldName = 'det_estado'
      Origin = 'DBUNIMEC.det_planilla_autoliquidacion.det_estado'
      FixedChar = True
      Size = 3
    end
  end
  object qryplanillas: TQuery
    DatabaseName = 'softeps'
    RequestLive = True
    SQL.Strings = (
      'select *'
      'from autoliquidacion  '
      'where per_presentacion ="12/2001" and est_planilla = "CIE" '
      'order by tip_declaracion,per_presentacion,est_planilla desc')
    Left = 229
    Top = 10
    object qryplanillasnum_planilla: TStringField
      FieldName = 'num_planilla'
      Origin = 'DBUNIMEC.autoliquidacion.num_planilla'
      Size = 15
    end
    object qryplanillastip_declaracion: TStringField
      FieldName = 'tip_declaracion'
      Origin = 'DBUNIMEC.autoliquidacion.tip_declaracion'
      FixedChar = True
      Size = 1
    end
    object qryplanillasfec_pago: TDateTimeField
      FieldName = 'fec_pago'
      Origin = 'DBUNIMEC.autoliquidacion.fec_pago'
    end
    object qryplanillasper_cotizacion: TStringField
      FieldName = 'per_cotizacion'
      Origin = 'DBUNIMEC.autoliquidacion.per_cotizacion'
      FixedChar = True
      Size = 7
    end
    object qryplanillasper_presentacion: TStringField
      FieldName = 'per_presentacion'
      Origin = 'DBUNIMEC.autoliquidacion.per_presentacion'
      FixedChar = True
      Size = 7
    end
    object qryplanillasest_planilla: TStringField
      FieldName = 'est_planilla'
      Origin = 'DBUNIMEC.autoliquidacion.est_planilla'
      FixedChar = True
      Size = 3
    end
    object qryplanillasnum_declaracion: TFloatField
      FieldName = 'num_declaracion'
      Origin = 'DBUNIMEC.autoliquidacion.num_declaracion'
    end
  end
  object qrydetplanillas: TQuery
    DatabaseName = 'softeps'
    RequestLive = True
    SQL.Strings = (
      'select * from det_planilla_autoliquidacion')
    Left = 229
    Top = 10
    object qrydetplanillasnum_planilla: TStringField
      FieldName = 'num_planilla'
      Origin = 'DBUNIMEC.det_planilla_autoliquidacion.num_planilla'
      FixedChar = True
      Size = 15
    end
    object qrydetplanillasafi_tipo_doc: TStringField
      FieldName = 'afi_tipo_doc'
      Origin = 'DBUNIMEC.det_planilla_autoliquidacion.afi_tipo_doc'
      FixedChar = True
      Size = 3
    end
    object qrydetplanillasafi_numero_doc: TStringField
      FieldName = 'afi_numero_doc'
      Origin = 'DBUNIMEC.det_planilla_autoliquidacion.afi_numero_doc'
      FixedChar = True
      Size = 18
    end
    object qrydetplanillasnov_ing: TStringField
      FieldName = 'nov_ing'
      Origin = 'DBUNIMEC.det_planilla_autoliquidacion.nov_ing'
      FixedChar = True
      Size = 1
    end
    object qrydetplanillasnov_ret: TStringField
      FieldName = 'nov_ret'
      Origin = 'DBUNIMEC.det_planilla_autoliquidacion.nov_ret'
      FixedChar = True
      Size = 1
    end
    object qrydetplanillasnov_tda: TStringField
      FieldName = 'nov_tda'
      Origin = 'DBUNIMEC.det_planilla_autoliquidacion.nov_tda'
      FixedChar = True
      Size = 1
    end
    object qrydetplanillasnov_taa: TStringField
      FieldName = 'nov_taa'
      Origin = 'DBUNIMEC.det_planilla_autoliquidacion.nov_taa'
      FixedChar = True
      Size = 1
    end
    object qrydetplanillasnov_vsp: TStringField
      FieldName = 'nov_vsp'
      Origin = 'DBUNIMEC.det_planilla_autoliquidacion.nov_vsp'
      FixedChar = True
      Size = 1
    end
    object qrydetplanillasnov_vst: TStringField
      FieldName = 'nov_vst'
      Origin = 'DBUNIMEC.det_planilla_autoliquidacion.nov_vst'
      FixedChar = True
      Size = 1
    end
    object qrydetplanillasnov_sln: TStringField
      FieldName = 'nov_sln'
      Origin = 'DBUNIMEC.det_planilla_autoliquidacion.nov_sln'
      FixedChar = True
      Size = 1
    end
    object qrydetplanillasnov_ige: TStringField
      FieldName = 'nov_ige'
      Origin = 'DBUNIMEC.det_planilla_autoliquidacion.nov_ige'
      FixedChar = True
      Size = 1
    end
    object qrydetplanillasnov_lma: TStringField
      FieldName = 'nov_lma'
      Origin = 'DBUNIMEC.det_planilla_autoliquidacion.nov_lma'
      FixedChar = True
      Size = 1
    end
    object qrydetplanillasnov_vac: TStringField
      FieldName = 'nov_vac'
      Origin = 'DBUNIMEC.det_planilla_autoliquidacion.nov_vac'
      FixedChar = True
      Size = 1
    end
    object qrydetplanillasdia_cotizados: TStringField
      FieldName = 'dia_cotizados'
      Origin = 'DBUNIMEC.det_planilla_autoliquidacion.dia_cotizados'
      FixedChar = True
      Size = 2
    end
    object qrydetplanillasSal_base: TFloatField
      FieldName = 'Sal_base'
      Origin = 'DBUNIMEC.det_planilla_autoliquidacion.Sal_base'
    end
    object qrydetplanillasval_neto_nov: TFloatField
      FieldName = 'val_neto_nov'
      Origin = 'DBUNIMEC.det_planilla_autoliquidacion.val_neto_nov'
    end
    object qrydetplanillasing_base_cot: TFloatField
      FieldName = 'ing_base_cot'
      Origin = 'DBUNIMEC.det_planilla_autoliquidacion.ing_base_cot'
    end
    object qrydetplanillascot_obligatoria: TFloatField
      FieldName = 'cot_obligatoria'
      Origin = 'DBUNIMEC.det_planilla_autoliquidacion.cot_obligatoria'
    end
    object qrydetplanillasnum_incapacidad_egr: TStringField
      FieldName = 'num_incapacidad_egr'
      Origin = 'DBUNIMEC.det_planilla_autoliquidacion.num_incapacidad_egr'
      FixedChar = True
      Size = 10
    end
    object qrydetplanillasval_incapacidad_egr: TFloatField
      FieldName = 'val_incapacidad_egr'
      Origin = 'DBUNIMEC.det_planilla_autoliquidacion.val_incapacidad_egr'
    end
    object qrydetplanillasnum_licencia_mat: TStringField
      FieldName = 'num_licencia_mat'
      Origin = 'DBUNIMEC.det_planilla_autoliquidacion.num_licencia_mat'
      FixedChar = True
      Size = 10
    end
    object qrydetplanillasval_licencia_mat: TFloatField
      FieldName = 'val_licencia_mat'
      Origin = 'DBUNIMEC.det_planilla_autoliquidacion.val_licencia_mat'
    end
    object qrydetplanillasval_upc_adi: TFloatField
      FieldName = 'val_upc_adi'
      Origin = 'DBUNIMEC.det_planilla_autoliquidacion.val_upc_adi'
    end
    object qrydetplanillasval_total_cot: TFloatField
      FieldName = 'val_total_cot'
      Origin = 'DBUNIMEC.det_planilla_autoliquidacion.val_total_cot'
    end
    object qrydetplanillasdet_estado: TStringField
      FieldName = 'det_estado'
      Origin = 'DBUNIMEC.det_planilla_autoliquidacion.det_estado'
      FixedChar = True
      Size = 3
    end
  end
  object tblafiliados: TTable
    DatabaseName = 'softeps'
    TableName = 'AFILIADOS'
    Left = 179
    Top = 5
    object tblafiliadosTIP_DOCUMENTO: TStringField
      FieldName = 'TIP_DOCUMENTO'
      Required = True
      FixedChar = True
      Size = 3
    end
    object tblafiliadosNUM_DOCUMENTO: TStringField
      FieldName = 'NUM_DOCUMENTO'
      Required = True
      Size = 18
    end
    object tblafiliadosCOD_SEXO: TStringField
      FieldName = 'COD_SEXO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object tblafiliadosCOD_TIPO_AFIL: TStringField
      FieldName = 'COD_TIPO_AFIL'
      Required = True
      FixedChar = True
      Size = 1
    end
    object tblafiliadosCOD_MODALIDAD_TRA: TStringField
      FieldName = 'COD_MODALIDAD_TRA'
      FixedChar = True
      Size = 1
    end
    object tblafiliadosCOD_ESTADO_CIV: TStringField
      FieldName = 'COD_ESTADO_CIV'
      FixedChar = True
      Size = 1
    end
    object tblafiliadosCOD_ESTRATO: TStringField
      FieldName = 'COD_ESTRATO'
      Required = True
      FixedChar = True
      Size = 3
    end
    object tblafiliadosCOD_ESCOLARIDAD: TStringField
      FieldName = 'COD_ESCOLARIDAD'
      FixedChar = True
      Size = 3
    end
    object tblafiliadosCOD_PROFESION: TStringField
      FieldName = 'COD_PROFESION'
      FixedChar = True
      Size = 3
    end
    object tblafiliadosCOD_ESTADO: TStringField
      FieldName = 'COD_ESTADO'
      Required = True
      FixedChar = True
      Size = 2
    end
    object tblafiliadosCOD_OFICINA: TStringField
      FieldName = 'COD_OFICINA'
      Required = True
      FixedChar = True
      Size = 3
    end
    object tblafiliadosCOD_REGIONAL: TStringField
      FieldName = 'COD_REGIONAL'
      Required = True
      FixedChar = True
      Size = 3
    end
    object tblafiliadosPRI_NOMBRE: TStringField
      FieldName = 'PRI_NOMBRE'
      Required = True
      Size = 25
    end
    object tblafiliadosSEG_NOMBRE: TStringField
      FieldName = 'SEG_NOMBRE'
      Size = 25
    end
    object tblafiliadosPRI_APELLIDO: TStringField
      FieldName = 'PRI_APELLIDO'
      Required = True
      Size = 25
    end
    object tblafiliadosSEG_APELLIDO: TStringField
      FieldName = 'SEG_APELLIDO'
      Size = 25
    end
    object tblafiliadosFEC_NACIMIENTO: TDateTimeField
      FieldName = 'FEC_NACIMIENTO'
      Required = True
    end
    object tblafiliadosFEC_AFILIACION_SIS: TDateTimeField
      FieldName = 'FEC_AFILIACION_SIS'
      Required = True
    end
    object tblafiliadosFEC_AFILIACION_UNI: TDateTimeField
      FieldName = 'FEC_AFILIACION_UNI'
      Required = True
    end
    object tblafiliadosEPS_TIP_DOC: TStringField
      FieldName = 'EPS_TIP_DOC'
      FixedChar = True
      Size = 3
    end
    object tblafiliadosEPS_NUM_DOC: TStringField
      FieldName = 'EPS_NUM_DOC'
      Size = 18
    end
    object tblafiliadosCOD_DEPARTAMENTO_RES: TStringField
      FieldName = 'COD_DEPARTAMENTO_RES'
      Required = True
      Size = 2
    end
    object tblafiliadosCOD_CIUDAD_RES: TStringField
      FieldName = 'COD_CIUDAD_RES'
      Required = True
      Size = 3
    end
    object tblafiliadosCOD_BARRIO_RES: TStringField
      FieldName = 'COD_BARRIO_RES'
      Required = True
      FixedChar = True
      Size = 3
    end
    object tblafiliadosCOD_ZONA: TStringField
      FieldName = 'COD_ZONA'
      Required = True
      Size = 3
    end
    object tblafiliadosACE_TIP_DOC: TStringField
      FieldName = 'ACE_TIP_DOC'
      Required = True
      FixedChar = True
      Size = 3
    end
    object tblafiliadosACE_NUMERO_DOC: TStringField
      FieldName = 'ACE_NUMERO_DOC'
      Required = True
      Size = 18
    end
    object tblafiliadosCOD_DISCAPACIDAD: TStringField
      FieldName = 'COD_DISCAPACIDAD'
      Required = True
      FixedChar = True
      Size = 1
    end
    object tblafiliadosNUM_SEMANA_COTIZA: TFloatField
      FieldName = 'NUM_SEMANA_COTIZA'
    end
    object tblafiliadosFEC_RADICACION: TDateTimeField
      FieldName = 'FEC_RADICACION'
      Required = True
    end
    object tblafiliadosNUM_FORMATO_AFIL: TStringField
      FieldName = 'NUM_FORMATO_AFIL'
      Required = True
      FixedChar = True
      Size = 10
    end
    object tblafiliadosDIR_AFILIADO_RES: TStringField
      FieldName = 'DIR_AFILIADO_RES'
      Required = True
      FixedChar = True
      Size = 50
    end
    object tblafiliadosTEL_AFILIADO_RES: TStringField
      FieldName = 'TEL_AFILIADO_RES'
      FixedChar = True
    end
    object tblafiliadosTEL_AFILIADO_RES2: TStringField
      FieldName = 'TEL_AFILIADO_RES2'
      FixedChar = True
    end
    object tblafiliadosCEL_AFILIADO: TStringField
      FieldName = 'CEL_AFILIADO'
      FixedChar = True
    end
    object tblafiliadosEML_AFILIADO: TStringField
      FieldName = 'EML_AFILIADO'
      FixedChar = True
      Size = 50
    end
    object tblafiliadosFEC_ULTIMA_NOV: TDateTimeField
      FieldName = 'FEC_ULTIMA_NOV'
    end
    object tblafiliadosTIP_DOCUMENTO_IPS: TStringField
      FieldName = 'TIP_DOCUMENTO_IPS'
      Size = 3
    end
    object tblafiliadosNUM_DOCUMENTO_IPS: TStringField
      FieldName = 'NUM_DOCUMENTO_IPS'
      FixedChar = True
      Size = 18
    end
    object tblafiliadosTIP_DOCUMENTO_MED: TStringField
      FieldName = 'TIP_DOCUMENTO_MED'
      Size = 3
    end
    object tblafiliadosNUM_DOCUMENTO_MED: TStringField
      FieldName = 'NUM_DOCUMENTO_MED'
      FixedChar = True
      Size = 18
    end
    object tblafiliadosTIP_DOCUMENTO_ODO: TStringField
      FieldName = 'TIP_DOCUMENTO_ODO'
      Size = 3
    end
    object tblafiliadosNUM_DOCUMENTO_ODO: TStringField
      FieldName = 'NUM_DOCUMENTO_ODO'
      FixedChar = True
      Size = 18
    end
  end
  object tblrelafiliados: TTable
    DatabaseName = 'softeps'
    TableName = 'RELACION_AFILIADOS'
    Left = 179
    Top = 5
    object tblrelafiliadosTIP_DOCUMENTO_COT: TStringField
      FieldName = 'TIP_DOCUMENTO_COT'
      Required = True
      FixedChar = True
      Size = 3
    end
    object tblrelafiliadosNUM_DOCUMENTO_COT: TStringField
      FieldName = 'NUM_DOCUMENTO_COT'
      Required = True
      Size = 18
    end
    object tblrelafiliadosTIP_DOCUMENTO_BEN: TStringField
      FieldName = 'TIP_DOCUMENTO_BEN'
      Required = True
      FixedChar = True
      Size = 3
    end
    object tblrelafiliadosNUM_DOCUMENTO_BEN: TStringField
      FieldName = 'NUM_DOCUMENTO_BEN'
      Required = True
      Size = 18
    end
    object tblrelafiliadosFEC_INCLUSION_NOV: TDateTimeField
      FieldName = 'FEC_INCLUSION_NOV'
      Required = True
    end
    object tblrelafiliadosCOD_PARENTESCO: TStringField
      FieldName = 'COD_PARENTESCO'
      Required = True
      FixedChar = True
      Size = 3
    end
    object tblrelafiliadosFEC_EXCLUSION_NOV: TDateTimeField
      FieldName = 'FEC_EXCLUSION_NOV'
    end
    object tblrelafiliadosCOD_ESTADO: TStringField
      FieldName = 'COD_ESTADO'
      Required = True
      FixedChar = True
      Size = 2
    end
    object tblrelafiliadosCOD_RELACION_ADI: TStringField
      FieldName = 'COD_RELACION_ADI'
      FixedChar = True
      Size = 2
    end
  end
  object qryafiliados: TQuery
    DatabaseName = 'softeps'
    RequestLive = True
    SQL.Strings = (
      'select * from afiliados')
    Left = 229
    Top = 10
    object qryafiliadostip_documento: TStringField
      FieldName = 'tip_documento'
      Origin = 'DBUNIMEC.afiliados.tip_documento'
      FixedChar = True
      Size = 3
    end
    object qryafiliadosnum_documento: TStringField
      FieldName = 'num_documento'
      Origin = 'DBUNIMEC.afiliados.num_documento'
      FixedChar = True
      Size = 18
    end
    object qryafiliadoscod_sexo: TStringField
      FieldName = 'cod_sexo'
      Origin = 'DBUNIMEC.afiliados.cod_sexo'
      FixedChar = True
      Size = 1
    end
    object qryafiliadoscod_tipo_afil: TStringField
      FieldName = 'cod_tipo_afil'
      Origin = 'DBUNIMEC.afiliados.cod_tipo_afil'
      FixedChar = True
      Size = 1
    end
    object qryafiliadoscod_modalidad_tra: TStringField
      FieldName = 'cod_modalidad_tra'
      Origin = 'DBUNIMEC.afiliados.cod_modalidad_tra'
      FixedChar = True
      Size = 1
    end
    object qryafiliadoscod_estado_civ: TStringField
      FieldName = 'cod_estado_civ'
      Origin = 'DBUNIMEC.afiliados.cod_estado_civ'
      FixedChar = True
      Size = 1
    end
    object qryafiliadoscod_estrato: TStringField
      FieldName = 'cod_estrato'
      Origin = 'DBUNIMEC.afiliados.cod_estrato'
      FixedChar = True
      Size = 3
    end
    object qryafiliadoscod_escolaridad: TStringField
      FieldName = 'cod_escolaridad'
      Origin = 'DBUNIMEC.afiliados.cod_escolaridad'
      FixedChar = True
      Size = 3
    end
    object qryafiliadoscod_profesion: TStringField
      FieldName = 'cod_profesion'
      Origin = 'DBUNIMEC.afiliados.cod_profesion'
      FixedChar = True
      Size = 3
    end
    object qryafiliadoscod_estado: TStringField
      FieldName = 'cod_estado'
      Origin = 'DBUNIMEC.afiliados.cod_estado'
      FixedChar = True
      Size = 2
    end
    object qryafiliadoscod_oficina: TStringField
      FieldName = 'cod_oficina'
      Origin = 'DBUNIMEC.afiliados.cod_oficina'
      FixedChar = True
      Size = 3
    end
    object qryafiliadoscod_regional: TStringField
      FieldName = 'cod_regional'
      Origin = 'DBUNIMEC.afiliados.cod_regional'
      FixedChar = True
      Size = 3
    end
    object qryafiliadospri_nombre: TStringField
      FieldName = 'pri_nombre'
      Origin = 'DBUNIMEC.afiliados.pri_nombre'
      FixedChar = True
      Size = 25
    end
    object qryafiliadosseg_nombre: TStringField
      FieldName = 'seg_nombre'
      Origin = 'DBUNIMEC.afiliados.seg_nombre'
      FixedChar = True
      Size = 25
    end
    object qryafiliadospri_apellido: TStringField
      FieldName = 'pri_apellido'
      Origin = 'DBUNIMEC.afiliados.pri_apellido'
      FixedChar = True
      Size = 25
    end
    object qryafiliadosseg_apellido: TStringField
      FieldName = 'seg_apellido'
      Origin = 'DBUNIMEC.afiliados.seg_apellido'
      FixedChar = True
      Size = 25
    end
    object qryafiliadosfec_nacimiento: TDateTimeField
      FieldName = 'fec_nacimiento'
      Origin = 'DBUNIMEC.afiliados.fec_nacimiento'
    end
    object qryafiliadosfec_afiliacion_sis: TDateTimeField
      FieldName = 'fec_afiliacion_sis'
      Origin = 'DBUNIMEC.afiliados.fec_afiliacion_sis'
    end
    object qryafiliadosfec_afiliacion_uni: TDateTimeField
      FieldName = 'fec_afiliacion_uni'
      Origin = 'DBUNIMEC.afiliados.fec_afiliacion_uni'
    end
    object qryafiliadoseps_tip_doc: TStringField
      FieldName = 'eps_tip_doc'
      Origin = 'DBUNIMEC.afiliados.eps_tip_doc'
      FixedChar = True
      Size = 3
    end
    object qryafiliadoseps_num_doc: TStringField
      FieldName = 'eps_num_doc'
      Origin = 'DBUNIMEC.afiliados.eps_num_doc'
      FixedChar = True
      Size = 18
    end
    object qryafiliadoscod_departamento_res: TStringField
      FieldName = 'cod_departamento_res'
      Origin = 'DBUNIMEC.afiliados.cod_departamento_res'
      FixedChar = True
      Size = 2
    end
    object qryafiliadoscod_ciudad_res: TStringField
      FieldName = 'cod_ciudad_res'
      Origin = 'DBUNIMEC.afiliados.cod_ciudad_res'
      FixedChar = True
      Size = 3
    end
    object qryafiliadoscod_barrio_res: TStringField
      FieldName = 'cod_barrio_res'
      Origin = 'DBUNIMEC.afiliados.cod_barrio_res'
      FixedChar = True
      Size = 3
    end
    object qryafiliadoscod_zona: TStringField
      FieldName = 'cod_zona'
      Origin = 'DBUNIMEC.afiliados.cod_zona'
      FixedChar = True
      Size = 3
    end
    object qryafiliadosace_tip_doc: TStringField
      FieldName = 'ace_tip_doc'
      Origin = 'DBUNIMEC.afiliados.ace_tip_doc'
      FixedChar = True
      Size = 3
    end
    object qryafiliadosace_numero_doc: TStringField
      FieldName = 'ace_numero_doc'
      Origin = 'DBUNIMEC.afiliados.ace_numero_doc'
      FixedChar = True
      Size = 18
    end
    object qryafiliadoscod_discapacidad: TStringField
      FieldName = 'cod_discapacidad'
      Origin = 'DBUNIMEC.afiliados.cod_discapacidad'
      FixedChar = True
      Size = 1
    end
    object qryafiliadosnum_semana_cotiza: TIntegerField
      FieldName = 'num_semana_cotiza'
      Origin = 'DBUNIMEC.afiliados.num_semana_cotiza'
    end
    object qryafiliadosfec_radicacion: TDateTimeField
      FieldName = 'fec_radicacion'
      Origin = 'DBUNIMEC.afiliados.fec_radicacion'
    end
    object qryafiliadosnum_formato_afil: TStringField
      FieldName = 'num_formato_afil'
      Origin = 'DBUNIMEC.afiliados.num_formato_afil'
      FixedChar = True
      Size = 10
    end
    object qryafiliadosdir_afiliado_res: TStringField
      FieldName = 'dir_afiliado_res'
      Origin = 'DBUNIMEC.afiliados.dir_afiliado_res'
      FixedChar = True
      Size = 50
    end
    object qryafiliadostel_afiliado_res: TStringField
      FieldName = 'tel_afiliado_res'
      Origin = 'DBUNIMEC.afiliados.tel_afiliado_res'
      FixedChar = True
    end
    object qryafiliadostel_afiliado_res2: TStringField
      FieldName = 'tel_afiliado_res2'
      Origin = 'DBUNIMEC.afiliados.tel_afiliado_res2'
      FixedChar = True
    end
    object qryafiliadoscel_afiliado: TStringField
      FieldName = 'cel_afiliado'
      Origin = 'DBUNIMEC.afiliados.cel_afiliado'
      FixedChar = True
    end
    object qryafiliadoseml_afiliado: TStringField
      FieldName = 'eml_afiliado'
      Origin = 'DBUNIMEC.afiliados.eml_afiliado'
      FixedChar = True
      Size = 50
    end
    object qryafiliadosfec_ultima_nov: TDateTimeField
      FieldName = 'fec_ultima_nov'
      Origin = 'DBUNIMEC.afiliados.fec_ultima_nov'
    end
  end
  object qrymcrelafiliados: TQuery
    DatabaseName = 'softeps'
    RequestLive = True
    SQL.Strings = (
      'SELECT * FROM RELACION_AFILIADOS '
      'WHERE TIP_DOCUMENTO_COT =  :tip_documento'
      '          AND NUM_DOCUMENTO_COT = :num_documento'
      '          AND FEC_INCLUSION_NOV <= :fec_fin'
      
        '          AND ((FEC_EXCLUSION_NOV IS NULL) OR (FEC_EXCLUSION_NOV' +
        ' >= :fec_ini)) '
      'ORDER BY NUM_DOCUMENTO_BEN'
      '')
    Left = 229
    Top = 10
    ParamData = <
      item
        DataType = ftString
        Name = 'tip_documento'
        ParamType = ptInputOutput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'num_documento'
        ParamType = ptInputOutput
        Value = ''
      end
      item
        DataType = ftDateTime
        Name = 'fec_fin'
        ParamType = ptInputOutput
        Value = 0d
      end
      item
        DataType = ftDateTime
        Name = 'fec_ini'
        ParamType = ptInputOutput
        Value = 0d
      end>
    object qrymcrelafiliadosTIP_DOCUMENTO_COT: TStringField
      FieldName = 'TIP_DOCUMENTO_COT'
      Origin = 'SOFTEPS.RELACION_AFILIADOS.TIP_DOCUMENTO_COT'
      Size = 3
    end
    object qrymcrelafiliadosNUM_DOCUMENTO_COT: TStringField
      FieldName = 'NUM_DOCUMENTO_COT'
      Origin = 'SOFTEPS.RELACION_AFILIADOS.NUM_DOCUMENTO_COT'
      Size = 18
    end
    object qrymcrelafiliadosTIP_DOCUMENTO_BEN: TStringField
      FieldName = 'TIP_DOCUMENTO_BEN'
      Origin = 'SOFTEPS.RELACION_AFILIADOS.TIP_DOCUMENTO_BEN'
      Size = 3
    end
    object qrymcrelafiliadosNUM_DOCUMENTO_BEN: TStringField
      FieldName = 'NUM_DOCUMENTO_BEN'
      Origin = 'SOFTEPS.RELACION_AFILIADOS.NUM_DOCUMENTO_BEN'
      Size = 18
    end
    object qrymcrelafiliadosFEC_INCLUSION_NOV: TDateTimeField
      FieldName = 'FEC_INCLUSION_NOV'
      Origin = 'SOFTEPS.RELACION_AFILIADOS.FEC_INCLUSION_NOV'
    end
    object qrymcrelafiliadosCOD_PARENTESCO: TStringField
      FieldName = 'COD_PARENTESCO'
      Origin = 'SOFTEPS.RELACION_AFILIADOS.COD_PARENTESCO'
      Size = 3
    end
    object qrymcrelafiliadosFEC_EXCLUSION_NOV: TDateTimeField
      FieldName = 'FEC_EXCLUSION_NOV'
      Origin = 'SOFTEPS.RELACION_AFILIADOS.FEC_EXCLUSION_NOV'
    end
    object qrymcrelafiliadosCOD_ESTADO: TStringField
      FieldName = 'COD_ESTADO'
      Origin = 'SOFTEPS.RELACION_AFILIADOS.COD_ESTADO'
      Size = 2
    end
    object qrymcrelafiliadosCOD_RELACION_ADI: TStringField
      FieldName = 'COD_RELACION_ADI'
      Origin = 'SOFTEPS.RELACION_AFILIADOS.COD_RELACION_ADI'
      Size = 2
    end
  end
  object tblaficompensados: TTable
    DatabaseName = 'softeps'
    TableName = 'AFILIADOS_COMPENSADOS'
    Left = 179
    Top = 5
    object tblaficompensadosAFI_NUMERO_DOC: TStringField
      FieldName = 'AFI_NUMERO_DOC'
      Required = True
      Size = 18
    end
    object tblaficompensadosAFI_TIPO_DOC: TStringField
      FieldName = 'AFI_TIPO_DOC'
      Required = True
      Size = 3
    end
    object tblaficompensadosNUM_DECLARACION: TFloatField
      FieldName = 'NUM_DECLARACION'
      Required = True
    end
    object tblaficompensadosCOD_GRUPO_ETAREO: TFloatField
      FieldName = 'COD_GRUPO_ETAREO'
      Required = True
    end
    object tblaficompensadosTIP_UPC: TStringField
      FieldName = 'TIP_UPC'
      Required = True
      Size = 1
    end
    object tblaficompensadosTIP_PAGO: TStringField
      FieldName = 'TIP_PAGO'
      Required = True
      Size = 1
    end
    object tblaficompensadosTIP_BENEFICIARIO: TStringField
      FieldName = 'TIP_BENEFICIARIO'
      Required = True
      Size = 1
    end
    object tblaficompensadosDIAS: TStringField
      FieldName = 'DIAS'
      Required = True
      Size = 2
    end
    object tblaficompensadosSALARIO: TFloatField
      FieldName = 'SALARIO'
      Required = True
    end
    object tblaficompensadosPORCENTAJE: TStringField
      FieldName = 'PORCENTAJE'
      Required = True
      Size = 2
    end
    object tblaficompensadosCOTIZACION: TFloatField
      FieldName = 'COTIZACION'
      Required = True
    end
    object tblaficompensadosVAL_DEDUCCION: TFloatField
      FieldName = 'VAL_DEDUCCION'
      Required = True
    end
    object tblaficompensadosTIP_DEDUCCION: TStringField
      FieldName = 'TIP_DEDUCCION'
      Required = True
      Size = 3
    end
    object tblaficompensadosVALOR_UPC: TFloatField
      FieldName = 'VALOR_UPC'
      Required = True
    end
    object tblaficompensadosTIP_AFILIADO: TStringField
      FieldName = 'TIP_AFILIADO'
      Required = True
      Size = 1
    end
    object tblaficompensadosFEC_CONSIGNACION: TDateTimeField
      FieldName = 'FEC_CONSIGNACION'
      Required = True
    end
    object tblaficompensadosCOD_PARENTESCO: TStringField
      FieldName = 'COD_PARENTESCO'
      Required = True
      Size = 3
    end
    object tblaficompensadosNUM_PLANILLA: TStringField
      FieldName = 'NUM_PLANILLA'
      Required = True
      Size = 15
    end
    object tblaficompensadosTIP_DOCUMENTO_COT: TStringField
      FieldName = 'TIP_DOCUMENTO_COT'
      Size = 3
    end
    object tblaficompensadosNUM_DOCUMENTO_COT: TStringField
      FieldName = 'NUM_DOCUMENTO_COT'
      Size = 18
    end
    object tblaficompensadosEMP_TIPO_DOC: TStringField
      FieldName = 'EMP_TIPO_DOC'
      Size = 3
    end
    object tblaficompensadosEMP_NUMERO_DOC: TStringField
      FieldName = 'EMP_NUMERO_DOC'
      Size = 15
    end
    object tblaficompensadosID_MULTIAFILIADO: TStringField
      FieldName = 'ID_MULTIAFILIADO'
      Size = 9
    end
    object tblaficompensadosCAUSA: TStringField
      FieldName = 'CAUSA'
      Size = 30
    end
    object tblaficompensadosVAL_UPC: TFloatField
      FieldName = 'VAL_UPC'
    end
  end
  object tblciudades: TTable
    DatabaseName = 'softeps'
    TableName = 'CIUDADES'
    Left = 179
    Top = 5
    object tblciudadesCOD_DEPARTAMENTO: TStringField
      FieldName = 'COD_DEPARTAMENTO'
      Required = True
      Size = 2
    end
    object tblciudadesCOD_CIUDAD: TStringField
      FieldName = 'COD_CIUDAD'
      Required = True
      Size = 3
    end
    object tblciudadesNOM_CIUDAD: TStringField
      FieldName = 'NOM_CIUDAD'
      Required = True
      Size = 35
    end
    object tblciudadesPOR_ALTO_RIE: TStringField
      FieldName = 'POR_ALTO_RIE'
      FixedChar = True
      Size = 3
    end
    object tblciudadesCOD_REGIONAL: TStringField
      FieldName = 'COD_REGIONAL'
      FixedChar = True
      Size = 3
    end
  end
  object qrymcciudades: TQuery
    DatabaseName = 'softeps'
    RequestLive = True
    SQL.Strings = (
      'SELECT * FROM CIUDADES')
    Left = 229
    Top = 10
    object qrymcciudadesCOD_DEPARTAMENTO: TStringField
      FieldName = 'COD_DEPARTAMENTO'
      Origin = 'SOFTEPS.CIUDADES.COD_DEPARTAMENTO'
      Size = 2
    end
    object qrymcciudadesCOD_CIUDAD: TStringField
      FieldName = 'COD_CIUDAD'
      Origin = 'SOFTEPS.CIUDADES.COD_CIUDAD'
      Size = 3
    end
    object qrymcciudadesNOM_CIUDAD: TStringField
      FieldName = 'NOM_CIUDAD'
      Origin = 'SOFTEPS.CIUDADES.NOM_CIUDAD'
      Size = 35
    end
    object qrymcciudadesPOR_ALTO_RIE: TStringField
      FieldName = 'POR_ALTO_RIE'
      Origin = 'SOFTEPS.CIUDADES.POR_ALTO_RIE'
      Size = 3
    end
    object qrymcciudadesCOD_REGIONAL: TStringField
      FieldName = 'COD_REGIONAL'
      Origin = 'SOFTEPS.CIUDADES.COD_REGIONAL'
      Size = 3
    end
    object qrymcciudadesVALOR_UPC: TFloatField
      FieldName = 'VALOR_UPC'
      Origin = 'SOFTEPS.CIUDADES.VALOR_UPC'
    end
    object qrymcciudadesCEN_COSTO: TStringField
      FieldName = 'CEN_COSTO'
      Origin = 'SOFTEPS.CIUDADES.CEN_COSTO'
      Size = 6
    end
  end
  object DataSource2: TDataSource
    DataSet = qyrnrs
    Left = 95
    Top = 7
  end
  object qryusuarios: TQuery
    DatabaseName = 'softeps'
    DataSource = DataSource1
    RequestLive = True
    SQL.Strings = (
      'SELECT usuarios.tip_documento,   '
      '                 usuarios.num_documento,   '
      '                 usuarios.nom_usuario,   '
      '                 usuarios.cod_oficina,   '
      '                 usuarios.cod_regional  '
      '    FROM usuarios  '
      '   WHERE ( usuarios.cod_usuario = :"usuario" ) AND  '
      '                  (usuarios.pwd_usuario = :"clave" )  AND'
      '                  (usuarios.cod_estado = "A")')
    Left = 229
    Top = 10
    ParamData = <
      item
        DataType = ftString
        Name = 'usuario'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'clave'
        ParamType = ptUnknown
      end>
    object qryusuariostip_documento: TStringField
      FieldName = 'tip_documento'
      Origin = 'DBUNIMEC.usuarios.tip_documento'
      FixedChar = True
      Size = 3
    end
    object qryusuariosnum_documento: TStringField
      FieldName = 'num_documento'
      Origin = 'DBUNIMEC.usuarios.num_documento'
      FixedChar = True
      Size = 18
    end
    object qryusuariosnom_usuario: TStringField
      FieldName = 'nom_usuario'
      Origin = 'DBUNIMEC.usuarios.nom_usuario'
      FixedChar = True
      Size = 30
    end
    object qryusuarioscod_oficina: TStringField
      FieldName = 'cod_oficina'
      Origin = 'DBUNIMEC.usuarios.cod_oficina'
      FixedChar = True
      Size = 3
    end
    object qryusuarioscod_regional: TStringField
      FieldName = 'cod_regional'
      Origin = 'DBUNIMEC.usuarios.cod_regional'
      FixedChar = True
      Size = 3
    end
  end
  object qryafilcomp: TQuery
    DatabaseName = 'softeps'
    RequestLive = True
    SQL.Strings = (
      'select * from afiliados_compensados')
    Left = 229
    Top = 10
    object qryafilcompafi_numero_doc: TStringField
      FieldName = 'afi_numero_doc'
      Origin = 'DBUNIMEC.afiliados_compensados.afi_numero_doc'
      FixedChar = True
      Size = 18
    end
    object qryafilcompafi_tipo_doc: TStringField
      FieldName = 'afi_tipo_doc'
      Origin = 'DBUNIMEC.afiliados_compensados.afi_tipo_doc'
      FixedChar = True
      Size = 3
    end
    object qryafilcompnum_declaracion: TFloatField
      FieldName = 'num_declaracion'
      Origin = 'DBUNIMEC.afiliados_compensados.num_declaracion'
    end
    object qryafilcompcod_grupo_etareo: TFloatField
      FieldName = 'cod_grupo_etareo'
      Origin = 'DBUNIMEC.afiliados_compensados.cod_grupo_etareo'
    end
    object qryafilcomptip_upc: TStringField
      FieldName = 'tip_upc'
      Origin = 'DBUNIMEC.afiliados_compensados.tip_upc'
      FixedChar = True
      Size = 1
    end
    object qryafilcomptip_pago: TStringField
      FieldName = 'tip_pago'
      Origin = 'DBUNIMEC.afiliados_compensados.tip_pago'
      FixedChar = True
      Size = 1
    end
    object qryafilcomptip_beneficiario: TStringField
      FieldName = 'tip_beneficiario'
      Origin = 'DBUNIMEC.afiliados_compensados.tip_beneficiario'
      FixedChar = True
      Size = 1
    end
    object qryafilcompdias: TStringField
      FieldName = 'dias'
      Origin = 'DBUNIMEC.afiliados_compensados.dias'
      FixedChar = True
      Size = 2
    end
    object qryafilcompsalario: TFloatField
      FieldName = 'salario'
      Origin = 'DBUNIMEC.afiliados_compensados.salario'
    end
    object qryafilcompporcentaje: TStringField
      FieldName = 'porcentaje'
      Origin = 'DBUNIMEC.afiliados_compensados.porcentaje'
      FixedChar = True
      Size = 2
    end
    object qryafilcompcotizacion: TFloatField
      FieldName = 'cotizacion'
      Origin = 'DBUNIMEC.afiliados_compensados.cotizacion'
    end
    object qryafilcompval_deduccion: TFloatField
      FieldName = 'val_deduccion'
      Origin = 'DBUNIMEC.afiliados_compensados.val_deduccion'
    end
    object qryafilcomptip_deduccion: TStringField
      FieldName = 'tip_deduccion'
      Origin = 'DBUNIMEC.afiliados_compensados.tip_deduccion'
      FixedChar = True
      Size = 3
    end
    object qryafilcompvalor_upc: TFloatField
      FieldName = 'valor_upc'
      Origin = 'DBUNIMEC.afiliados_compensados.valor_upc'
    end
    object qryafilcomptip_afiliado: TStringField
      FieldName = 'tip_afiliado'
      Origin = 'DBUNIMEC.afiliados_compensados.tip_afiliado'
      FixedChar = True
      Size = 1
    end
    object qryafilcompfec_consignacion: TDateTimeField
      FieldName = 'fec_consignacion'
      Origin = 'DBUNIMEC.afiliados_compensados.fec_consignacion'
    end
    object qryafilcompcod_parentesco: TStringField
      FieldName = 'cod_parentesco'
      Origin = 'DBUNIMEC.afiliados_compensados.cod_parentesco'
      FixedChar = True
      Size = 3
    end
  end
  object qrymcbasesdecalculo: TQuery
    DatabaseName = 'softeps'
    RequestLive = True
    SQL.Strings = (
      'SELECT * FROM BASES_DE_CALCULO '
      'WHERE NUM_DECLARACION =:num_declaracion'
      '      AND COD_GRUPO_ETA =:cod_grupo_etareo')
    Left = 229
    Top = 10
    ParamData = <
      item
        DataType = ftString
        Name = 'num_declaracion'
        ParamType = ptInputOutput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'cod_grupo_etareo'
        ParamType = ptInputOutput
        Value = ''
      end>
    object qrymcbasesdecalculoNUM_DECLARACION: TFloatField
      FieldName = 'NUM_DECLARACION'
      Origin = 'SOFTEPS.BASES_DE_CALCULO.NUM_DECLARACION'
    end
    object qrymcbasesdecalculoCOD_GRUPO_ETA: TFloatField
      FieldName = 'COD_GRUPO_ETA'
      Origin = 'SOFTEPS.BASES_DE_CALCULO.COD_GRUPO_ETA'
    end
    object qrymcbasesdecalculoTOT_COTIZANTES_MCN: TFloatField
      FieldName = 'TOT_COTIZANTES_MCN'
      Origin = 'SOFTEPS.BASES_DE_CALCULO.TOT_COTIZANTES_MCN'
    end
    object qrymcbasesdecalculoTOT_COTIZANTES_MCE: TFloatField
      FieldName = 'TOT_COTIZANTES_MCE'
      Origin = 'SOFTEPS.BASES_DE_CALCULO.TOT_COTIZANTES_MCE'
    end
    object qrymcbasesdecalculoTOT_COTIZANTES_MPN: TFloatField
      FieldName = 'TOT_COTIZANTES_MPN'
      Origin = 'SOFTEPS.BASES_DE_CALCULO.TOT_COTIZANTES_MPN'
    end
    object qrymcbasesdecalculoTOT_COTIZANTES_MPE: TFloatField
      FieldName = 'TOT_COTIZANTES_MPE'
      Origin = 'SOFTEPS.BASES_DE_CALCULO.TOT_COTIZANTES_MPE'
    end
    object qrymcbasesdecalculoTOT_BENEFICIARIOS_MCN: TFloatField
      FieldName = 'TOT_BENEFICIARIOS_MCN'
      Origin = 'SOFTEPS.BASES_DE_CALCULO.TOT_BENEFICIARIOS_MCN'
    end
    object qrymcbasesdecalculoTOT_BENEFICIARIOS_MCE: TFloatField
      FieldName = 'TOT_BENEFICIARIOS_MCE'
      Origin = 'SOFTEPS.BASES_DE_CALCULO.TOT_BENEFICIARIOS_MCE'
    end
    object qrymcbasesdecalculoTOT_BENEFICIARIOS_MPNL: TFloatField
      FieldName = 'TOT_BENEFICIARIOS_MPNL'
      Origin = 'SOFTEPS.BASES_DE_CALCULO.TOT_BENEFICIARIOS_MPNL'
    end
    object qrymcbasesdecalculoTOT_BENEFICIARIOS_MPE: TFloatField
      FieldName = 'TOT_BENEFICIARIOS_MPE'
      Origin = 'SOFTEPS.BASES_DE_CALCULO.TOT_BENEFICIARIOS_MPE'
    end
    object qrymcbasesdecalculoTOT_AFILIADOS_MCN: TFloatField
      FieldName = 'TOT_AFILIADOS_MCN'
      Origin = 'SOFTEPS.BASES_DE_CALCULO.TOT_AFILIADOS_MCN'
    end
    object qrymcbasesdecalculoTOT_AFILIADOS_MCE: TFloatField
      FieldName = 'TOT_AFILIADOS_MCE'
      Origin = 'SOFTEPS.BASES_DE_CALCULO.TOT_AFILIADOS_MCE'
    end
    object qrymcbasesdecalculoTOT_AFILIADOS_MPN: TFloatField
      FieldName = 'TOT_AFILIADOS_MPN'
      Origin = 'SOFTEPS.BASES_DE_CALCULO.TOT_AFILIADOS_MPN'
    end
    object qrymcbasesdecalculoTOT_AFILIADOS_MPE: TFloatField
      FieldName = 'TOT_AFILIADOS_MPE'
      Origin = 'SOFTEPS.BASES_DE_CALCULO.TOT_AFILIADOS_MPE'
    end
    object qrymcbasesdecalculoTOT_AFILIADOS_UPCNORMAL: TFloatField
      FieldName = 'TOT_AFILIADOS_UPCNORMAL'
      Origin = 'SOFTEPS.BASES_DE_CALCULO.TOT_AFILIADOS_UPCNORMAL'
    end
    object qrymcbasesdecalculoTOT_AFILIADOS_UPCESPECIAL: TFloatField
      FieldName = 'TOT_AFILIADOS_UPCESPECIAL'
      Origin = 'SOFTEPS.BASES_DE_CALCULO.TOT_AFILIADOS_UPCESPECIAL'
    end
    object qrymcbasesdecalculoTOT_DIAS_COTZNN: TFloatField
      FieldName = 'TOT_DIAS_COTZNN'
      Origin = 'SOFTEPS.BASES_DE_CALCULO.TOT_DIAS_COTZNN'
    end
    object qrymcbasesdecalculoTOT_DIAS_COTIZE: TFloatField
      FieldName = 'TOT_DIAS_COTIZE'
      Origin = 'SOFTEPS.BASES_DE_CALCULO.TOT_DIAS_COTIZE'
    end
    object qrymcbasesdecalculoTOT_UPC_DZN: TFloatField
      FieldName = 'TOT_UPC_DZN'
      Origin = 'SOFTEPS.BASES_DE_CALCULO.TOT_UPC_DZN'
    end
    object qrymcbasesdecalculoTOT_UPC_DZE: TFloatField
      FieldName = 'TOT_UPC_DZE'
      Origin = 'SOFTEPS.BASES_DE_CALCULO.TOT_UPC_DZE'
    end
    object qrymcbasesdecalculoTOT_VALOR_UPC: TFloatField
      FieldName = 'TOT_VALOR_UPC'
      Origin = 'SOFTEPS.BASES_DE_CALCULO.TOT_VALOR_UPC'
    end
  end
  object tblnovafiliados: TTable
    DatabaseName = 'softeps'
    TableName = 'NOVEDADES_AFILIADOS'
    Left = 179
    Top = 5
    object tblnovafiliadosCOD_NOVEDAD_AFIL: TFloatField
      FieldName = 'COD_NOVEDAD_AFIL'
      Required = True
    end
    object tblnovafiliadosNOV_CODIGO: TStringField
      FieldName = 'NOV_CODIGO'
      Required = True
      FixedChar = True
      Size = 3
    end
    object tblnovafiliadosTIP_DOCUMENTO: TStringField
      FieldName = 'TIP_DOCUMENTO'
      Required = True
      FixedChar = True
      Size = 3
    end
    object tblnovafiliadosNUM_DOCUMENTO: TStringField
      FieldName = 'NUM_DOCUMENTO'
      Required = True
      Size = 18
    end
    object tblnovafiliadosCOD_OFICINA: TStringField
      FieldName = 'COD_OFICINA'
      FixedChar = True
      Size = 3
    end
    object tblnovafiliadosCOD_REGIONAL: TStringField
      FieldName = 'COD_REGIONAL'
      FixedChar = True
      Size = 3
    end
    object tblnovafiliadosUSU_TIPO_DOC: TStringField
      FieldName = 'USU_TIPO_DOC'
      FixedChar = True
      Size = 3
    end
    object tblnovafiliadosUSU_NUMERO_DOC: TStringField
      FieldName = 'USU_NUMERO_DOC'
      Size = 18
    end
    object tblnovafiliadosFEC_NOVEDAD_AFIL: TDateTimeField
      FieldName = 'FEC_NOVEDAD_AFIL'
      Required = True
    end
    object tblnovafiliadosNOM_CAMPO: TStringField
      FieldName = 'NOM_CAMPO'
      Size = 100
    end
    object tblnovafiliadosDAT_CAMPO_ANT: TStringField
      FieldName = 'DAT_CAMPO_ANT'
      Size = 255
    end
    object tblnovafiliadosNOM_TABLA: TStringField
      FieldName = 'NOM_TABLA'
      Size = 100
    end
    object tblnovafiliadosDAT_CAMPO_DES: TStringField
      FieldName = 'DAT_CAMPO_DES'
      Size = 255
    end
    object tblnovafiliadosFEC_EVENTO: TDateTimeField
      FieldName = 'FEC_EVENTO'
    end
    object tblnovafiliadosFEC_APLICATIVO: TDateTimeField
      FieldName = 'FEC_APLICATIVO'
    end
    object tblnovafiliadosTIP_DOCUMENTO_EMP: TStringField
      FieldName = 'TIP_DOCUMENTO_EMP'
      FixedChar = True
      Size = 3
    end
    object tblnovafiliadosNUM_DOCUMENTO_EMP: TStringField
      FieldName = 'NUM_DOCUMENTO_EMP'
      Size = 18
    end
    object tblnovafiliadosCOD_SUCURSAL: TStringField
      FieldName = 'COD_SUCURSAL'
      Size = 2
    end
    object tblnovafiliadosNUM_PLANILLA: TStringField
      FieldName = 'NUM_PLANILLA'
      Size = 15
    end
  end
  object tbltiponovedades: TTable
    DatabaseName = 'softeps'
    TableName = 'NOVEDADES'
    Left = 179
    Top = 5
    object tbltiponovedadesNOV_CODIGO: TStringField
      FieldName = 'NOV_CODIGO'
      Required = True
      FixedChar = True
      Size = 3
    end
    object tbltiponovedadesNOV_NOMBRE: TStringField
      FieldName = 'NOV_NOMBRE'
      Size = 50
    end
    object tbltiponovedadesDES_NOVEDAD: TStringField
      FieldName = 'DES_NOVEDAD'
      Size = 100
    end
    object tbltiponovedadesCLA_NOVEDAD: TStringField
      FieldName = 'CLA_NOVEDAD'
      Size = 3
    end
    object tbltiponovedadesTIPO_NOVEDAD: TStringField
      FieldName = 'TIPO_NOVEDAD'
      Size = 3
    end
  end
  object qrymcafiactivos: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      'SELECT TIP_DOCUMENTO,NUM_DOCUMENTO,COD_MODALIDAD_TRA '
      'FROM AFILIADOS '
      'WHERE COD_ESTADO <> '#39'I'#39' '
      '          AND FEC_AFILIACION_UNI <= :fecha_afi')
    Left = 229
    Top = 10
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'fecha_afi'
        ParamType = ptInputOutput
        Value = 0d
      end>
    object qrymcafiactivostip_documento: TStringField
      FieldName = 'tip_documento'
      FixedChar = True
      Size = 3
    end
    object qrymcafiactivosnum_documento: TStringField
      FieldName = 'num_documento'
      FixedChar = True
      Size = 18
    end
    object qrymcafiactivoscod_modalidad_tra: TStringField
      FieldName = 'cod_modalidad_tra'
      FixedChar = True
      Size = 1
    end
  end
  object tblafilemp: TTable
    DatabaseName = 'softeps'
    TableName = 'AFILIADOS_EMPRESAS'
    Left = 179
    Top = 5
    object tblafilempCOD_OCUPACION: TStringField
      FieldName = 'COD_OCUPACION'
      FixedChar = True
      Size = 3
    end
    object tblafilempTIP_DOCUMENTO_AFI: TStringField
      FieldName = 'TIP_DOCUMENTO_AFI'
      Required = True
      FixedChar = True
      Size = 3
    end
    object tblafilempNUM_DOCUMENTO_AFI: TStringField
      FieldName = 'NUM_DOCUMENTO_AFI'
      Required = True
      Size = 18
    end
    object tblafilempTIP_DOCUMENTO_EMP: TStringField
      FieldName = 'TIP_DOCUMENTO_EMP'
      Required = True
      FixedChar = True
      Size = 3
    end
    object tblafilempNUM_DOCUMENTO_EMP: TStringField
      FieldName = 'NUM_DOCUMENTO_EMP'
      Required = True
      Size = 18
    end
    object tblafilempCOD_SUCURSAL: TStringField
      FieldName = 'COD_SUCURSAL'
      Required = True
      Size = 2
    end
    object tblafilempCOD_ESTADO: TStringField
      FieldName = 'COD_ESTADO'
      Required = True
      FixedChar = True
      Size = 2
    end
    object tblafilempVAL_SUELDO_AFIL: TFloatField
      FieldName = 'VAL_SUELDO_AFIL'
    end
    object tblafilempFEC_INGRESO_UNI: TDateTimeField
      FieldName = 'FEC_INGRESO_UNI'
    end
    object tblafilempFEC_EGRESO_UNI: TDateTimeField
      FieldName = 'FEC_EGRESO_UNI'
    end
    object tblafilempCOD_DEPARTAMENTO_LAB: TStringField
      FieldName = 'COD_DEPARTAMENTO_LAB'
      Size = 2
    end
    object tblafilempCOD_CIUDAD_LAB: TStringField
      FieldName = 'COD_CIUDAD_LAB'
      Size = 2
    end
    object tblafilempDIR_AFILIADO_LAB: TStringField
      FieldName = 'DIR_AFILIADO_LAB'
      FixedChar = True
      Size = 50
    end
    object tblafilempTEL_AFILIADO_LAB: TStringField
      FieldName = 'TEL_AFILIADO_LAB'
      FixedChar = True
    end
    object tblafilempTEL_AFILIADO_LAB2: TStringField
      FieldName = 'TEL_AFILIADO_LAB2'
      FixedChar = True
    end
    object tblafilempCOD_TIPO_SAL: TStringField
      FieldName = 'COD_TIPO_SAL'
      FixedChar = True
      Size = 1
    end
    object tblafilempCOD_ZONA: TStringField
      FieldName = 'COD_ZONA'
      Size = 3
    end
  end
  object qrymcafiemp: TQuery
    DatabaseName = 'softeps'
    RequestLive = True
    SQL.Strings = (
      'SELECT * FROM AFILIADOS_EMPRESAS '
      'WHERE TIP_DOCUMENTO_AFI = :tip_documento'
      '          AND NUM_DOCUMENTO_AFI = :num_documento'
      '          AND FEC_INGRESO_UNI <= :fecha1'
      
        '          AND ((FEC_EGRESO_UNI IS NULL) OR  (FEC_EGRESO_UNI >= :' +
        'fecha2 ))'
      '')
    Left = 230
    Top = 12
    ParamData = <
      item
        DataType = ftString
        Name = 'tip_documento'
        ParamType = ptInputOutput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'num_documento'
        ParamType = ptInputOutput
        Value = ''
      end
      item
        DataType = ftDateTime
        Name = 'fecha1'
        ParamType = ptInputOutput
        Value = 0d
      end
      item
        DataType = ftDateTime
        Name = 'fecha2'
        ParamType = ptInputOutput
        Value = 0d
      end>
    object qrymcafiempCOD_OCUPACION: TStringField
      FieldName = 'COD_OCUPACION'
      Origin = 'SOFTEPS.AFILIADOS_EMPRESAS.COD_OCUPACION'
      Size = 3
    end
    object qrymcafiempTIP_DOCUMENTO_AFI: TStringField
      FieldName = 'TIP_DOCUMENTO_AFI'
      Origin = 'SOFTEPS.AFILIADOS_EMPRESAS.TIP_DOCUMENTO_AFI'
      Size = 3
    end
    object qrymcafiempNUM_DOCUMENTO_AFI: TStringField
      FieldName = 'NUM_DOCUMENTO_AFI'
      Origin = 'SOFTEPS.AFILIADOS_EMPRESAS.NUM_DOCUMENTO_AFI'
      Size = 18
    end
    object qrymcafiempTIP_DOCUMENTO_EMP: TStringField
      FieldName = 'TIP_DOCUMENTO_EMP'
      Origin = 'SOFTEPS.AFILIADOS_EMPRESAS.TIP_DOCUMENTO_EMP'
      Size = 3
    end
    object qrymcafiempNUM_DOCUMENTO_EMP: TStringField
      FieldName = 'NUM_DOCUMENTO_EMP'
      Origin = 'SOFTEPS.AFILIADOS_EMPRESAS.NUM_DOCUMENTO_EMP'
      Size = 18
    end
    object qrymcafiempCOD_SUCURSAL: TStringField
      FieldName = 'COD_SUCURSAL'
      Origin = 'SOFTEPS.AFILIADOS_EMPRESAS.COD_SUCURSAL'
      Size = 2
    end
    object qrymcafiempCOD_ESTADO: TStringField
      FieldName = 'COD_ESTADO'
      Origin = 'SOFTEPS.AFILIADOS_EMPRESAS.COD_ESTADO'
      Size = 2
    end
    object qrymcafiempVAL_SUELDO_AFIL: TFloatField
      FieldName = 'VAL_SUELDO_AFIL'
      Origin = 'SOFTEPS.AFILIADOS_EMPRESAS.VAL_SUELDO_AFIL'
    end
    object qrymcafiempFEC_INGRESO_UNI: TDateTimeField
      FieldName = 'FEC_INGRESO_UNI'
      Origin = 'SOFTEPS.AFILIADOS_EMPRESAS.FEC_INGRESO_UNI'
    end
    object qrymcafiempFEC_EGRESO_UNI: TDateTimeField
      FieldName = 'FEC_EGRESO_UNI'
      Origin = 'SOFTEPS.AFILIADOS_EMPRESAS.FEC_EGRESO_UNI'
    end
    object qrymcafiempCOD_DEPARTAMENTO_LAB: TStringField
      FieldName = 'COD_DEPARTAMENTO_LAB'
      Origin = 'SOFTEPS.AFILIADOS_EMPRESAS.COD_DEPARTAMENTO_LAB'
      Size = 2
    end
    object qrymcafiempCOD_CIUDAD_LAB: TStringField
      FieldName = 'COD_CIUDAD_LAB'
      Origin = 'SOFTEPS.AFILIADOS_EMPRESAS.COD_CIUDAD_LAB'
      Size = 3
    end
    object qrymcafiempDIR_AFILIADO_LAB: TStringField
      FieldName = 'DIR_AFILIADO_LAB'
      Origin = 'SOFTEPS.AFILIADOS_EMPRESAS.DIR_AFILIADO_LAB'
      Size = 50
    end
    object qrymcafiempTEL_AFILIADO_LAB: TStringField
      FieldName = 'TEL_AFILIADO_LAB'
      Origin = 'SOFTEPS.AFILIADOS_EMPRESAS.TEL_AFILIADO_LAB'
    end
    object qrymcafiempTEL_AFILIADO_LAB2: TStringField
      FieldName = 'TEL_AFILIADO_LAB2'
      Origin = 'SOFTEPS.AFILIADOS_EMPRESAS.TEL_AFILIADO_LAB2'
    end
    object qrymcafiempCOD_TIPO_SAL: TStringField
      FieldName = 'COD_TIPO_SAL'
      Origin = 'SOFTEPS.AFILIADOS_EMPRESAS.COD_TIPO_SAL'
      Size = 1
    end
    object qrymcafiempCOD_ZONA: TStringField
      FieldName = 'COD_ZONA'
      Origin = 'SOFTEPS.AFILIADOS_EMPRESAS.COD_ZONA'
      Size = 3
    end
  end
  object DataSource3: TDataSource
    Left = 96
    Top = 7
  end
  object DataSource4: TDataSource
    Left = 97
    Top = 7
  end
  object qrymcgrpeta: TQuery
    DatabaseName = 'softeps'
    RequestLive = True
    SQL.Strings = (
      'SELECT * FROM GRUPOS_ETAREOS '
      'WHERE :edad  >= INI_GRUPO_ETA '
      '             AND  :edad1 <= FIN_GRUPO_ETA'
      
        '             AND (SEXO_GRUPO_ETA = :sexo OR SEXO_GRUPO_ETA = '#39'N'#39 +
        ')')
    Left = 229
    Top = 10
    ParamData = <
      item
        DataType = ftFloat
        Name = 'edad'
        ParamType = ptInputOutput
        Value = 0
      end
      item
        DataType = ftFloat
        Name = 'edad1'
        ParamType = ptInputOutput
        Value = 0
      end
      item
        DataType = ftString
        Name = 'sexo'
        ParamType = ptInputOutput
        Value = ''
      end>
    object qrymcgrpetaCOD_GRUPO_ETA: TFloatField
      FieldName = 'COD_GRUPO_ETA'
      Origin = 'SOFTEPS.GRUPOS_ETAREOS.COD_GRUPO_ETA'
    end
    object qrymcgrpetaINI_GRUPO_ETA: TFloatField
      FieldName = 'INI_GRUPO_ETA'
      Origin = 'SOFTEPS.GRUPOS_ETAREOS.INI_GRUPO_ETA'
    end
    object qrymcgrpetaFIN_GRUPO_ETA: TFloatField
      FieldName = 'FIN_GRUPO_ETA'
      Origin = 'SOFTEPS.GRUPOS_ETAREOS.FIN_GRUPO_ETA'
    end
    object qrymcgrpetaSEXO_GRUPO_ETA: TStringField
      FieldName = 'SEXO_GRUPO_ETA'
      Origin = 'SOFTEPS.GRUPOS_ETAREOS.SEXO_GRUPO_ETA'
      FixedChar = True
      Size = 1
    end
  end
  object DataSource5: TDataSource
    Left = 98
    Top = 7
  end
  object tblcartera: TTable
    DatabaseName = 'softeps'
    TableName = 'CARTERA'
    Left = 179
    Top = 5
    object tblcarteraTIP_DOCUMENTO: TStringField
      FieldName = 'TIP_DOCUMENTO'
      Required = True
      FixedChar = True
      Size = 3
    end
    object tblcarteraNUM_DOCUMENTO: TStringField
      FieldName = 'NUM_DOCUMENTO'
      Required = True
      Size = 18
    end
    object tblcarteraTIP_DOCUMENTO_EMP: TStringField
      FieldName = 'TIP_DOCUMENTO_EMP'
      Required = True
      FixedChar = True
      Size = 3
    end
    object tblcarteraNUM_DOCUMENTO_EMP: TStringField
      FieldName = 'NUM_DOCUMENTO_EMP'
      Required = True
      Size = 18
    end
    object tblcarteraCOD_SUCURSAL_EMP: TStringField
      FieldName = 'COD_SUCURSAL_EMP'
      Required = True
      Size = 2
    end
    object tblcarteraPER_COMPENSACION: TStringField
      FieldName = 'PER_COMPENSACION'
      Required = True
      FixedChar = True
      Size = 7
    end
    object tblcarteraTIPO_MORA: TStringField
      FieldName = 'TIPO_MORA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object tblcarteraVALOR_MORA: TFloatField
      FieldName = 'VALOR_MORA'
      Required = True
    end
    object tblcarteraVALOR_UPC: TFloatField
      FieldName = 'VALOR_UPC'
    end
    object tblcarteraCOD_TIPO_AFIL: TStringField
      FieldName = 'COD_TIPO_AFIL'
      FixedChar = True
      Size = 1
    end
    object tblcarteraTIP_DOCUMENTO_COT: TStringField
      FieldName = 'TIP_DOCUMENTO_COT'
      FixedChar = True
      Size = 3
    end
    object tblcarteraNUM_DOCUMENTO_COT: TStringField
      FieldName = 'NUM_DOCUMENTO_COT'
      Size = 18
    end
    object tblcarteraINTERES: TFloatField
      FieldName = 'INTERES'
    end
  end
  object qrymccartera: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      'SELECT DET_PLANILLA_AUTOLIQUIDACION.PER_COTIZACION '
      'FROM AUTOLIQUIDACION, DET_PLANILLA_AUTOLIQUIDACION '
      
        'WHERE AUTOLIQUIDACION.NUM_PLANILLA = DET_PLANILLA_AUTOLIQUIDACIO' +
        'N.NUM_PLANILLA '
      '          AND AFI_NUMERO_DOC = :num_documento'
      '          AND AFI_TIPO_DOC = :tip_documento'
      
        '          AND DET_PLANILLA_AUTOLIQUIDACION.PER_COTIZACION = :per' +
        '_cotizacion'
      '          AND EMP_TIPO_DOC =:emp_tip_documento'
      '          AND EMP_NUMERO_DOC = :emp_num_documento'
      '          AND COD_SUCURSAL =  :emp_cod_sucursal         '
      '')
    Left = 229
    Top = 10
    ParamData = <
      item
        DataType = ftString
        Name = 'num_documento'
        ParamType = ptInputOutput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'tip_documento'
        ParamType = ptInputOutput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'per_cotizacion'
        ParamType = ptInputOutput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'emp_tip_documento'
        ParamType = ptInputOutput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'emp_num_documento'
        ParamType = ptInputOutput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'emp_cod_sucursal'
        ParamType = ptInputOutput
        Value = ''
      end>
    object qrymccarteraper_cotizacion: TStringField
      FieldName = 'per_cotizacion'
      Origin = 'DBUNIMEC.autoliquidacion.per_cotizacion'
      FixedChar = True
      Size = 7
    end
  end
  object tblafiempresas: TTable
    DatabaseName = 'softeps'
    TableName = 'AFILIADOS_EMPRESAS'
    Left = 179
    Top = 5
    object tblafiempresasCOD_OCUPACION: TStringField
      FieldName = 'COD_OCUPACION'
      FixedChar = True
      Size = 3
    end
    object tblafiempresasTIP_DOCUMENTO_AFI: TStringField
      FieldName = 'TIP_DOCUMENTO_AFI'
      Required = True
      FixedChar = True
      Size = 3
    end
    object tblafiempresasNUM_DOCUMENTO_AFI: TStringField
      FieldName = 'NUM_DOCUMENTO_AFI'
      Required = True
      Size = 18
    end
    object tblafiempresasTIP_DOCUMENTO_EMP: TStringField
      FieldName = 'TIP_DOCUMENTO_EMP'
      Required = True
      FixedChar = True
      Size = 3
    end
    object tblafiempresasNUM_DOCUMENTO_EMP: TStringField
      FieldName = 'NUM_DOCUMENTO_EMP'
      Required = True
      Size = 18
    end
    object tblafiempresasCOD_SUCURSAL: TStringField
      FieldName = 'COD_SUCURSAL'
      Required = True
      Size = 2
    end
    object tblafiempresasCOD_ESTADO: TStringField
      FieldName = 'COD_ESTADO'
      Required = True
      FixedChar = True
      Size = 2
    end
    object tblafiempresasVAL_SUELDO_AFIL: TFloatField
      FieldName = 'VAL_SUELDO_AFIL'
    end
    object tblafiempresasFEC_INGRESO_UNI: TDateTimeField
      FieldName = 'FEC_INGRESO_UNI'
    end
    object tblafiempresasFEC_EGRESO_UNI: TDateTimeField
      FieldName = 'FEC_EGRESO_UNI'
    end
    object tblafiempresasCOD_DEPARTAMENTO_LAB: TStringField
      FieldName = 'COD_DEPARTAMENTO_LAB'
      Size = 2
    end
    object tblafiempresasCOD_CIUDAD_LAB: TStringField
      FieldName = 'COD_CIUDAD_LAB'
      Size = 2
    end
    object tblafiempresasDIR_AFILIADO_LAB: TStringField
      FieldName = 'DIR_AFILIADO_LAB'
      FixedChar = True
      Size = 50
    end
    object tblafiempresasTEL_AFILIADO_LAB: TStringField
      FieldName = 'TEL_AFILIADO_LAB'
      FixedChar = True
    end
    object tblafiempresasTEL_AFILIADO_LAB2: TStringField
      FieldName = 'TEL_AFILIADO_LAB2'
      FixedChar = True
    end
    object tblafiempresasCOD_TIPO_SAL: TStringField
      FieldName = 'COD_TIPO_SAL'
      FixedChar = True
      Size = 1
    end
    object tblafiempresasCOD_ZONA: TStringField
      FieldName = 'COD_ZONA'
      Size = 3
    end
  end
  object qryafiempresas: TQuery
    DatabaseName = 'softeps'
    RequestLive = True
    SQL.Strings = (
      
        'select * from afiliados_empresas where tip_documento_afi = "CC" ' +
        'and num_documento_afi = "86041756"')
    Left = 229
    Top = 10
    object qryafiempresascod_ocupacion: TStringField
      FieldName = 'cod_ocupacion'
      Origin = 'DBUNIMEC.afiliados_empresas.cod_ocupacion'
      FixedChar = True
      Size = 3
    end
    object qryafiempresastip_documento_afi: TStringField
      FieldName = 'tip_documento_afi'
      Origin = 'DBUNIMEC.afiliados_empresas.tip_documento_afi'
      FixedChar = True
      Size = 3
    end
    object qryafiempresasnum_documento_afi: TStringField
      FieldName = 'num_documento_afi'
      Origin = 'DBUNIMEC.afiliados_empresas.num_documento_afi'
      FixedChar = True
      Size = 18
    end
    object qryafiempresastip_documento_emp: TStringField
      FieldName = 'tip_documento_emp'
      Origin = 'DBUNIMEC.afiliados_empresas.tip_documento_emp'
      FixedChar = True
      Size = 3
    end
    object qryafiempresasnum_documento_emp: TStringField
      FieldName = 'num_documento_emp'
      Origin = 'DBUNIMEC.afiliados_empresas.num_documento_emp'
      FixedChar = True
      Size = 18
    end
    object qryafiempresascod_sucursal: TStringField
      FieldName = 'cod_sucursal'
      Origin = 'DBUNIMEC.afiliados_empresas.cod_sucursal'
      FixedChar = True
      Size = 2
    end
    object qryafiempresascod_estado: TStringField
      FieldName = 'cod_estado'
      Origin = 'DBUNIMEC.afiliados_empresas.cod_estado'
      FixedChar = True
      Size = 2
    end
    object qryafiempresasval_sueldo_afil: TFloatField
      FieldName = 'val_sueldo_afil'
      Origin = 'DBUNIMEC.afiliados_empresas.val_sueldo_afil'
    end
    object qryafiempresasfec_ingreso_uni: TDateTimeField
      FieldName = 'fec_ingreso_uni'
      Origin = 'DBUNIMEC.afiliados_empresas.fec_ingreso_uni'
    end
    object qryafiempresasfec_egreso_uni: TDateTimeField
      FieldName = 'fec_egreso_uni'
      Origin = 'DBUNIMEC.afiliados_empresas.fec_egreso_uni'
    end
    object qryafiempresascod_departamento_lab: TStringField
      FieldName = 'cod_departamento_lab'
      Origin = 'DBUNIMEC.afiliados_empresas.cod_departamento_lab'
      FixedChar = True
      Size = 2
    end
    object qryafiempresascod_ciudad_lab: TStringField
      FieldName = 'cod_ciudad_lab'
      Origin = 'DBUNIMEC.afiliados_empresas.cod_ciudad_lab'
      FixedChar = True
      Size = 2
    end
    object qryafiempresasdir_afiliado_lab: TStringField
      FieldName = 'dir_afiliado_lab'
      Origin = 'DBUNIMEC.afiliados_empresas.dir_afiliado_lab'
      FixedChar = True
      Size = 50
    end
    object qryafiempresastel_afiliado_lab: TStringField
      FieldName = 'tel_afiliado_lab'
      Origin = 'DBUNIMEC.afiliados_empresas.tel_afiliado_lab'
      FixedChar = True
    end
    object qryafiempresastel_afiliado_lab2: TStringField
      FieldName = 'tel_afiliado_lab2'
      Origin = 'DBUNIMEC.afiliados_empresas.tel_afiliado_lab2'
      FixedChar = True
    end
    object qryafiempresascod_tipo_sal: TStringField
      FieldName = 'cod_tipo_sal'
      Origin = 'DBUNIMEC.afiliados_empresas.cod_tipo_sal'
      FixedChar = True
      Size = 1
    end
    object qryafiempresascod_zona: TStringField
      FieldName = 'cod_zona'
      Origin = 'DBUNIMEC.afiliados_empresas.cod_zona'
      FixedChar = True
      Size = 3
    end
  end
  object qrymccartera1: TQuery
    DatabaseName = 'softeps'
    RequestLive = True
    SQL.Strings = (
      'SELECT * FROM CARTERA'
      'WHERE PER_COMPENSACION = :PERIODO')
    Left = 229
    Top = 10
    ParamData = <
      item
        DataType = ftString
        Name = 'PERIODO'
        ParamType = ptInputOutput
      end>
    object qrymccartera1tip_documento: TStringField
      FieldName = 'tip_documento'
      Origin = 'DBUNIMECODBC.cartera.tip_documento'
      FixedChar = True
      Size = 3
    end
    object qrymccartera1num_documento: TStringField
      FieldName = 'num_documento'
      Origin = 'DBUNIMECODBC.cartera.num_documento'
      Size = 18
    end
    object qrymccartera1tip_documento_emp: TStringField
      FieldName = 'tip_documento_emp'
      Origin = 'DBUNIMECODBC.cartera.tip_documento_emp'
      FixedChar = True
      Size = 3
    end
    object qrymccartera1num_documento_emp: TStringField
      FieldName = 'num_documento_emp'
      Origin = 'DBUNIMECODBC.cartera.num_documento_emp'
      Size = 18
    end
    object qrymccartera1cod_sucursal_emp: TStringField
      FieldName = 'cod_sucursal_emp'
      Origin = 'DBUNIMECODBC.cartera.cod_sucursal_emp'
      Size = 2
    end
    object qrymccartera1per_compensacion: TStringField
      FieldName = 'per_compensacion'
      Origin = 'DBUNIMECODBC.cartera.per_compensacion'
      FixedChar = True
      Size = 7
    end
    object qrymccartera1tipo_mora: TStringField
      FieldName = 'tipo_mora'
      Origin = 'DBUNIMECODBC.cartera.tipo_mora'
      FixedChar = True
      Size = 1
    end
    object qrymccartera1valor_mora: TFloatField
      FieldName = 'valor_mora'
      Origin = 'DBUNIMECODBC.cartera.valor_mora'
    end
    object qrymccartera1valor_upc: TFloatField
      FieldName = 'valor_upc'
      Origin = 'DBUNIMECODBC.cartera.valor_upc'
    end
    object qrymccartera1cod_tipo_afil: TStringField
      FieldName = 'cod_tipo_afil'
      Origin = 'DBUNIMECODBC.cartera.cod_tipo_afil'
      FixedChar = True
      Size = 1
    end
  end
  object qrymccartera2: TQuery
    DatabaseName = 'softeps'
    RequestLive = True
    SQL.Strings = (
      'SELECT * FROM CARTERA WHERE PER_COMPENSACION = :PERIODO')
    Left = 229
    Top = 10
    ParamData = <
      item
        DataType = ftString
        Name = 'PERIODO'
        ParamType = ptInputOutput
        Value = ''
      end>
    object qrymccartera2tip_documento: TStringField
      FieldName = 'tip_documento'
      Origin = 'DBUNIMECODBC.cartera.tip_documento'
      FixedChar = True
      Size = 3
    end
    object qrymccartera2num_documento: TStringField
      FieldName = 'num_documento'
      Origin = 'DBUNIMECODBC.cartera.num_documento'
      Size = 18
    end
    object qrymccartera2tip_documento_emp: TStringField
      FieldName = 'tip_documento_emp'
      Origin = 'DBUNIMECODBC.cartera.tip_documento_emp'
      FixedChar = True
      Size = 3
    end
    object qrymccartera2num_documento_emp: TStringField
      FieldName = 'num_documento_emp'
      Origin = 'DBUNIMECODBC.cartera.num_documento_emp'
      Size = 18
    end
    object qrymccartera2cod_sucursal_emp: TStringField
      FieldName = 'cod_sucursal_emp'
      Origin = 'DBUNIMECODBC.cartera.cod_sucursal_emp'
      Size = 2
    end
    object qrymccartera2per_compensacion: TStringField
      FieldName = 'per_compensacion'
      Origin = 'DBUNIMECODBC.cartera.per_compensacion'
      FixedChar = True
      Size = 7
    end
    object qrymccartera2tipo_mora: TStringField
      FieldName = 'tipo_mora'
      Origin = 'DBUNIMECODBC.cartera.tipo_mora'
      FixedChar = True
      Size = 1
    end
    object qrymccartera2valor_mora: TFloatField
      FieldName = 'valor_mora'
      Origin = 'DBUNIMECODBC.cartera.valor_mora'
    end
    object qrymccartera2valor_upc: TFloatField
      FieldName = 'valor_upc'
      Origin = 'DBUNIMECODBC.cartera.valor_upc'
    end
    object qrymccartera2cod_tipo_afil: TStringField
      FieldName = 'cod_tipo_afil'
      Origin = 'DBUNIMECODBC.cartera.cod_tipo_afil'
      FixedChar = True
      Size = 1
    end
  end
  object DataSource6: TDataSource
    Left = 98
    Top = 7
  end
  object DataSource7: TDataSource
    Left = 99
    Top = 7
  end
  object DataSource8: TDataSource
    Left = 96
    Top = 6
  end
  object DataSource9: TDataSource
    Left = 97
    Top = 6
  end
  object DataSource10: TDataSource
    Left = 101
    Top = 8
  end
  object DataSource11: TDataSource
    Left = 99
    Top = 6
  end
  object qrymcaficiu: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      'SELECT * FROM AFILIADOS,CIUDADES '
      'WHERE TIP_DOCUMENTO = :tip_documento '
      '          AND NUM_DOCUMENTO = :num_documento '
      
        '          AND CIUDADES.COD_DEPARTAMENTO = AFILIADOS.COD_DEPARTAM' +
        'ENTO_RES '
      '          AND CIUDADES.COD_CIUDAD = AFILIADOS.COD_CIUDAD_RES'
      '')
    Left = 229
    Top = 10
    ParamData = <
      item
        DataType = ftString
        Name = 'tip_documento'
        ParamType = ptInputOutput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'num_documento'
        ParamType = ptInputOutput
        Value = ''
      end>
    object qrymcaficiuTIP_DOCUMENTO: TStringField
      FieldName = 'TIP_DOCUMENTO'
      Origin = 'SOFTEPS.AFILIADOS.TIP_DOCUMENTO'
      Size = 3
    end
    object qrymcaficiuNUM_DOCUMENTO: TStringField
      FieldName = 'NUM_DOCUMENTO'
      Origin = 'SOFTEPS.AFILIADOS.NUM_DOCUMENTO'
      Size = 18
    end
    object qrymcaficiuCOD_SEXO: TStringField
      FieldName = 'COD_SEXO'
      Origin = 'SOFTEPS.AFILIADOS.COD_SEXO'
      Size = 1
    end
    object qrymcaficiuCOD_TIPO_AFIL: TStringField
      FieldName = 'COD_TIPO_AFIL'
      Origin = 'SOFTEPS.AFILIADOS.COD_TIPO_AFIL'
      Size = 1
    end
    object qrymcaficiuCOD_MODALIDAD_TRA: TStringField
      FieldName = 'COD_MODALIDAD_TRA'
      Origin = 'SOFTEPS.AFILIADOS.COD_MODALIDAD_TRA'
      Size = 1
    end
    object qrymcaficiuCOD_ESTADO_CIV: TStringField
      FieldName = 'COD_ESTADO_CIV'
      Origin = 'SOFTEPS.AFILIADOS.COD_ESTADO_CIV'
      Size = 1
    end
    object qrymcaficiuCOD_ESTRATO: TStringField
      FieldName = 'COD_ESTRATO'
      Origin = 'SOFTEPS.AFILIADOS.COD_ESTRATO'
      Size = 3
    end
    object qrymcaficiuCOD_ESCOLARIDAD: TStringField
      FieldName = 'COD_ESCOLARIDAD'
      Origin = 'SOFTEPS.AFILIADOS.COD_ESCOLARIDAD'
      Size = 3
    end
    object qrymcaficiuCOD_PROFESION: TStringField
      FieldName = 'COD_PROFESION'
      Origin = 'SOFTEPS.AFILIADOS.COD_PROFESION'
      Size = 3
    end
    object qrymcaficiuCOD_ESTADO: TStringField
      FieldName = 'COD_ESTADO'
      Origin = 'SOFTEPS.AFILIADOS.COD_ESTADO'
      Size = 2
    end
    object qrymcaficiuCOD_OFICINA: TStringField
      FieldName = 'COD_OFICINA'
      Origin = 'SOFTEPS.AFILIADOS.COD_OFICINA'
      Size = 3
    end
    object qrymcaficiuCOD_REGIONAL: TStringField
      FieldName = 'COD_REGIONAL'
      Origin = 'SOFTEPS.AFILIADOS.COD_REGIONAL'
      Size = 3
    end
    object qrymcaficiuPRI_NOMBRE: TStringField
      FieldName = 'PRI_NOMBRE'
      Origin = 'SOFTEPS.AFILIADOS.PRI_NOMBRE'
      Size = 25
    end
    object qrymcaficiuSEG_NOMBRE: TStringField
      FieldName = 'SEG_NOMBRE'
      Origin = 'SOFTEPS.AFILIADOS.SEG_NOMBRE'
      Size = 25
    end
    object qrymcaficiuPRI_APELLIDO: TStringField
      FieldName = 'PRI_APELLIDO'
      Origin = 'SOFTEPS.AFILIADOS.PRI_APELLIDO'
      Size = 25
    end
    object qrymcaficiuSEG_APELLIDO: TStringField
      FieldName = 'SEG_APELLIDO'
      Origin = 'SOFTEPS.AFILIADOS.SEG_APELLIDO'
      Size = 25
    end
    object qrymcaficiuFEC_NACIMIENTO: TDateTimeField
      FieldName = 'FEC_NACIMIENTO'
      Origin = 'SOFTEPS.AFILIADOS.FEC_NACIMIENTO'
    end
    object qrymcaficiuFEC_AFILIACION_SIS: TDateTimeField
      FieldName = 'FEC_AFILIACION_SIS'
      Origin = 'SOFTEPS.AFILIADOS.FEC_AFILIACION_SIS'
    end
    object qrymcaficiuFEC_AFILIACION_UNI: TDateTimeField
      FieldName = 'FEC_AFILIACION_UNI'
      Origin = 'SOFTEPS.AFILIADOS.FEC_AFILIACION_UNI'
    end
    object qrymcaficiuEPS_TIP_DOC: TStringField
      FieldName = 'EPS_TIP_DOC'
      Origin = 'SOFTEPS.AFILIADOS.EPS_TIP_DOC'
      Size = 3
    end
    object qrymcaficiuEPS_NUM_DOC: TStringField
      FieldName = 'EPS_NUM_DOC'
      Origin = 'SOFTEPS.AFILIADOS.EPS_NUM_DOC'
      Size = 18
    end
    object qrymcaficiuCOD_DEPARTAMENTO_RES: TStringField
      FieldName = 'COD_DEPARTAMENTO_RES'
      Origin = 'SOFTEPS.AFILIADOS.COD_DEPARTAMENTO_RES'
      Size = 2
    end
    object qrymcaficiuCOD_CIUDAD_RES: TStringField
      FieldName = 'COD_CIUDAD_RES'
      Origin = 'SOFTEPS.AFILIADOS.COD_CIUDAD_RES'
      Size = 3
    end
    object qrymcaficiuCOD_BARRIO_RES: TStringField
      FieldName = 'COD_BARRIO_RES'
      Origin = 'SOFTEPS.AFILIADOS.COD_BARRIO_RES'
      Size = 3
    end
    object qrymcaficiuCOD_ZONA: TStringField
      FieldName = 'COD_ZONA'
      Origin = 'SOFTEPS.AFILIADOS.COD_ZONA'
      Size = 3
    end
    object qrymcaficiuACE_TIP_DOC: TStringField
      FieldName = 'ACE_TIP_DOC'
      Origin = 'SOFTEPS.AFILIADOS.ACE_TIP_DOC'
      Size = 3
    end
    object qrymcaficiuACE_NUMERO_DOC: TStringField
      FieldName = 'ACE_NUMERO_DOC'
      Origin = 'SOFTEPS.AFILIADOS.ACE_NUMERO_DOC'
      Size = 18
    end
    object qrymcaficiuCOD_DISCAPACIDAD: TStringField
      FieldName = 'COD_DISCAPACIDAD'
      Origin = 'SOFTEPS.AFILIADOS.COD_DISCAPACIDAD'
      Size = 1
    end
    object qrymcaficiuNUM_SEMANA_COTIZA: TFloatField
      FieldName = 'NUM_SEMANA_COTIZA'
      Origin = 'SOFTEPS.AFILIADOS.NUM_SEMANA_COTIZA'
    end
    object qrymcaficiuFEC_RADICACION: TDateTimeField
      FieldName = 'FEC_RADICACION'
      Origin = 'SOFTEPS.AFILIADOS.FEC_RADICACION'
    end
    object qrymcaficiuNUM_FORMATO_AFIL: TStringField
      FieldName = 'NUM_FORMATO_AFIL'
      Origin = 'SOFTEPS.AFILIADOS.NUM_FORMATO_AFIL'
      Size = 10
    end
    object qrymcaficiuDIR_AFILIADO_RES: TStringField
      FieldName = 'DIR_AFILIADO_RES'
      Origin = 'SOFTEPS.AFILIADOS.DIR_AFILIADO_RES'
      Size = 50
    end
    object qrymcaficiuTEL_AFILIADO_RES: TStringField
      FieldName = 'TEL_AFILIADO_RES'
      Origin = 'SOFTEPS.AFILIADOS.TEL_AFILIADO_RES'
    end
    object qrymcaficiuTEL_AFILIADO_RES2: TStringField
      FieldName = 'TEL_AFILIADO_RES2'
      Origin = 'SOFTEPS.AFILIADOS.TEL_AFILIADO_RES2'
    end
    object qrymcaficiuCEL_AFILIADO: TStringField
      FieldName = 'CEL_AFILIADO'
      Origin = 'SOFTEPS.AFILIADOS.CEL_AFILIADO'
    end
    object qrymcaficiuEML_AFILIADO: TStringField
      FieldName = 'EML_AFILIADO'
      Origin = 'SOFTEPS.AFILIADOS.EML_AFILIADO'
      Size = 50
    end
    object qrymcaficiuFEC_ULTIMA_NOV: TDateTimeField
      FieldName = 'FEC_ULTIMA_NOV'
      Origin = 'SOFTEPS.AFILIADOS.FEC_ULTIMA_NOV'
    end
    object qrymcaficiuTIP_DOCUMENTO_IPS: TStringField
      FieldName = 'TIP_DOCUMENTO_IPS'
      Origin = 'SOFTEPS.AFILIADOS.TIP_DOCUMENTO_IPS'
      Size = 3
    end
    object qrymcaficiuNUM_DOCUMENTO_IPS: TStringField
      FieldName = 'NUM_DOCUMENTO_IPS'
      Origin = 'SOFTEPS.AFILIADOS.NUM_DOCUMENTO_IPS'
      Size = 18
    end
    object qrymcaficiuTIP_DOCUMENTO_MED: TStringField
      FieldName = 'TIP_DOCUMENTO_MED'
      Origin = 'SOFTEPS.AFILIADOS.TIP_DOCUMENTO_MED'
      Size = 3
    end
    object qrymcaficiuNUM_DOCUMENTO_MED: TStringField
      FieldName = 'NUM_DOCUMENTO_MED'
      Origin = 'SOFTEPS.AFILIADOS.NUM_DOCUMENTO_MED'
      Size = 18
    end
    object qrymcaficiuTIP_DOCUMENTO_ODO: TStringField
      FieldName = 'TIP_DOCUMENTO_ODO'
      Origin = 'SOFTEPS.AFILIADOS.TIP_DOCUMENTO_ODO'
      Size = 3
    end
    object qrymcaficiuNUM_DOCUMENTO_ODO: TStringField
      FieldName = 'NUM_DOCUMENTO_ODO'
      Origin = 'SOFTEPS.AFILIADOS.NUM_DOCUMENTO_ODO'
      Size = 18
    end
    object qrymcaficiuSEM_COTIZACION: TFloatField
      FieldName = 'SEM_COTIZACION'
      Origin = 'SOFTEPS.AFILIADOS.SEM_COTIZACION'
    end
    object qrymcaficiuCOD_DEPARTAMENTO: TStringField
      FieldName = 'COD_DEPARTAMENTO'
      Origin = 'SOFTEPS.AFILIADOS.SEM_COTIZACION'
      Size = 2
    end
    object qrymcaficiuCOD_CIUDAD: TStringField
      FieldName = 'COD_CIUDAD'
      Origin = 'SOFTEPS.AFILIADOS.SEM_COTIZACION'
      Size = 3
    end
    object qrymcaficiuNOM_CIUDAD: TStringField
      FieldName = 'NOM_CIUDAD'
      Origin = 'SOFTEPS.AFILIADOS.SEM_COTIZACION'
      Size = 35
    end
    object qrymcaficiuPOR_ALTO_RIE: TStringField
      FieldName = 'POR_ALTO_RIE'
      Origin = 'SOFTEPS.AFILIADOS.SEM_COTIZACION'
      Size = 3
    end
    object qrymcaficiuCOD_REGIONAL_1: TStringField
      FieldName = 'COD_REGIONAL_1'
      Origin = 'SOFTEPS.AFILIADOS.SEM_COTIZACION'
      Size = 3
    end
    object qrymcaficiuVALOR_UPC: TFloatField
      FieldName = 'VALOR_UPC'
      Origin = 'SOFTEPS.AFILIADOS.SEM_COTIZACION'
    end
    object qrymcaficiuCEN_COSTO: TStringField
      FieldName = 'CEN_COSTO'
      Origin = 'SOFTEPS.AFILIADOS.SEM_COTIZACION'
      Size = 6
    end
  end
  object qrymcpladet: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      'SELECT DISTINCT'
      ' DET_PLANILLA_AUTOLIQUIDACION.PER_COTIZACION,'
      ' DET_PLANILLA_AUTOLIQUIDACION.COT_OBLIGATORIA, '
      ' DET_PLANILLA_AUTOLIQUIDACION.DIA_COTIZADOS,'
      ' DET_PLANILLA_AUTOLIQUIDACION.ING_BASE_COT,'
      ' DET_PLANILLA_AUTOLIQUIDACION.NOV_SLN,'
      ' DET_PLANILLA_AUTOLIQUIDACION.NUM_PLANILLA,'
      ' DET_PLANILLA_AUTOLIQUIDACION.NOV_LMA,'
      ' DET_PLANILLA_AUTOLIQUIDACION.VAL_LICENCIA_MAT,'
      ' DET_PLANILLA_AUTOLIQUIDACION.NOV_IGE,'
      ' DET_PLANILLA_AUTOLIQUIDACION.VAL_INCAPACIDAD_EGR,'
      ' DET_PLANILLA_AUTOLIQUIDACION.VAL_UPC_ADI,'
      ' DET_PLANILLA_AUTOLIQUIDACION.AFI_TIPO_DOC,'
      ' DET_PLANILLA_AUTOLIQUIDACION.AFI_NUMERO_DOC,'
      ' AUTOLIQUIDACION.TIP_DECLARACION,'
      ' AUTOLIQUIDACION.FEC_PAGO,'
      ' AUTOLIQUIDACION.EMP_TIPO_DOC,'
      ' AUTOLIQUIDACION.EMP_NUMERO_DOC,'
      ' RELACION_AFILIADOS.TIP_DOCUMENTO_BEN,'
      ' RELACION_AFILIADOS.NUM_DOCUMENTO_BEN,'
      ' RELACION_AFILIADOS.FEC_INCLUSION_NOV,'
      ' RELACION_AFILIADOS.COD_PARENTESCO,'
      ' AFILIADOS.FEC_NACIMIENTO,'
      ' AFILIADOS.COD_SEXO,'
      ' AFILIADOS.COD_TIPO_AFIL,'
      ' AFILIADOS.COD_MODALIDAD_TRA,'
      ' CIUDADES.POR_ALTO_RIE'
      
        'FROM DET_PLANILLA_AUTOLIQUIDACION ,AUTOLIQUIDACION, RELACION_AFI' +
        'LIADOS, AFILIADOS, CIUDADES '
      
        'WHERE (DET_PLANILLA_AUTOLIQUIDACION.PER_PRESENTACION =:per_prese' +
        'ntacion) '
      '           AND (DET_ESTADO = '#39'CIE'#39') '
      '           AND (FEC_DIGITACION >=:fecha_inicio) '
      '           AND (FEC_DIGITACION <= :fecha_fin) '
      
        '           AND (DET_PLANILLA_AUTOLIQUIDACION.NUM_PLANILLA = AUTO' +
        'LIQUIDACION.NUM_PLANILLA) '
      '          AND (AFI_NUMERO_DOC = NUM_DOCUMENTO_COT)'
      
        '          AND (FEC_EXCLUSION_NOV > TO_DATE('#39'01/'#39'||DET_PLANILLA_A' +
        'UTOLIQUIDACION.PER_COTIZACION,'#39'DD/MM/YYYY'#39') OR FEC_EXCLUSION_NOV' +
        ' IS NULL) '
      
        '           AND (FEC_INCLUSION_NOV < TO_DATE('#39'28/'#39'||DET_PLANILLA_' +
        'AUTOLIQUIDACION.PER_COTIZACION,'#39'DD/MM/YYYY'#39') )'
      '          AND (NUM_DOCUMENTO_BEN = AFILIADOS.NUM_DOCUMENTO)'
      '          AND (COD_DEPARTAMENTO_RES = COD_DEPARTAMENTO)'
      '         AND (COD_CIUDAD_RES = COD_CIUDAD)'
      
        '         AND (COD_MODALIDAD_TRA <> '#39'N'#39' OR COD_MODALIDAD_TRA IS N' +
        'ULL)'
      ''
      
        '  ORDER BY TO_DATE(DET_PLANILLA_AUTOLIQUIDACION.PER_COTIZACION,'#39 +
        'MM/YYYY'#39') ASC')
    Left = 230
    Top = 12
    ParamData = <
      item
        DataType = ftString
        Name = 'per_presentacion'
        ParamType = ptInputOutput
        Value = ''
      end
      item
        DataType = ftDateTime
        Name = 'fecha_inicio'
        ParamType = ptInputOutput
        Value = 0d
      end
      item
        DataType = ftDateTime
        Name = 'fecha_fin'
        ParamType = ptInputOutput
        Value = 0d
      end>
    object qrymcpladetPER_COTIZACION: TStringField
      FieldName = 'PER_COTIZACION'
      Size = 7
    end
    object qrymcpladetCOT_OBLIGATORIA: TFloatField
      FieldName = 'COT_OBLIGATORIA'
    end
    object qrymcpladetDIA_COTIZADOS: TStringField
      FieldName = 'DIA_COTIZADOS'
      Size = 2
    end
    object qrymcpladetING_BASE_COT: TFloatField
      FieldName = 'ING_BASE_COT'
    end
    object qrymcpladetNOV_SLN: TStringField
      FieldName = 'NOV_SLN'
      Size = 1
    end
    object qrymcpladetNUM_PLANILLA: TStringField
      FieldName = 'NUM_PLANILLA'
      Size = 15
    end
    object qrymcpladetNOV_LMA: TStringField
      FieldName = 'NOV_LMA'
      Size = 1
    end
    object qrymcpladetVAL_LICENCIA_MAT: TFloatField
      FieldName = 'VAL_LICENCIA_MAT'
    end
    object qrymcpladetNOV_IGE: TStringField
      FieldName = 'NOV_IGE'
      Size = 1
    end
    object qrymcpladetVAL_INCAPACIDAD_EGR: TFloatField
      FieldName = 'VAL_INCAPACIDAD_EGR'
    end
    object qrymcpladetVAL_UPC_ADI: TFloatField
      FieldName = 'VAL_UPC_ADI'
    end
    object qrymcpladetAFI_TIPO_DOC: TStringField
      FieldName = 'AFI_TIPO_DOC'
      Size = 3
    end
    object qrymcpladetAFI_NUMERO_DOC: TStringField
      FieldName = 'AFI_NUMERO_DOC'
      Size = 18
    end
    object qrymcpladetTIP_DECLARACION: TStringField
      FieldName = 'TIP_DECLARACION'
      Size = 1
    end
    object qrymcpladetFEC_PAGO: TDateTimeField
      FieldName = 'FEC_PAGO'
    end
    object qrymcpladetEMP_TIPO_DOC: TStringField
      FieldName = 'EMP_TIPO_DOC'
      Size = 3
    end
    object qrymcpladetEMP_NUMERO_DOC: TStringField
      FieldName = 'EMP_NUMERO_DOC'
      Size = 18
    end
    object qrymcpladetTIP_DOCUMENTO_BEN: TStringField
      FieldName = 'TIP_DOCUMENTO_BEN'
      Size = 3
    end
    object qrymcpladetNUM_DOCUMENTO_BEN: TStringField
      FieldName = 'NUM_DOCUMENTO_BEN'
      Size = 18
    end
    object qrymcpladetFEC_INCLUSION_NOV: TDateTimeField
      FieldName = 'FEC_INCLUSION_NOV'
    end
    object qrymcpladetCOD_PARENTESCO: TStringField
      FieldName = 'COD_PARENTESCO'
      Size = 3
    end
    object qrymcpladetFEC_NACIMIENTO: TDateTimeField
      FieldName = 'FEC_NACIMIENTO'
    end
    object qrymcpladetCOD_SEXO: TStringField
      FieldName = 'COD_SEXO'
      Size = 1
    end
    object qrymcpladetCOD_TIPO_AFIL: TStringField
      FieldName = 'COD_TIPO_AFIL'
      Size = 1
    end
    object qrymcpladetCOD_MODALIDAD_TRA: TStringField
      FieldName = 'COD_MODALIDAD_TRA'
      Size = 1
    end
    object qrymcpladetPOR_ALTO_RIE: TStringField
      FieldName = 'POR_ALTO_RIE'
      Size = 3
    end
  end
  object qrymcdecaficom: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      'SELECT * FROM DECLARACIONES, AFILIADOS_COMPENSADOS '
      'WHERE FECHA_DECLARACION = :fecha_dec'
      
        '         AND DECLARACIONES.NUM_DECLARACION = AFILIADOS_COMPENSAD' +
        'OS.NUM_DECLARACION'
      '')
    Left = 229
    Top = 10
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'fecha_dec'
        ParamType = ptInputOutput
        Value = 0d
      end>
    object qrymcdecaficomnum_declaracion: TFloatField
      FieldName = 'num_declaracion'
      Origin = 'DBUNIMEC.declaraciones.num_declaracion'
    end
    object qrymcdecaficomcot_tipo_decla: TFloatField
      FieldName = 'cot_tipo_decla'
      Origin = 'DBUNIMEC.declaraciones.cot_tipo_decla'
    end
    object qrymcdecaficomperiodo_compensado: TStringField
      FieldName = 'periodo_compensado'
      Origin = 'DBUNIMEC.declaraciones.periodo_compensado'
      Size = 10
    end
    object qrymcdecaficomfecha_declaracion: TDateTimeField
      FieldName = 'fecha_declaracion'
      Origin = 'DBUNIMEC.declaraciones.fecha_declaracion'
    end
    object qrymcdecaficomtipo_cierre: TStringField
      FieldName = 'tipo_cierre'
      Origin = 'DBUNIMEC.declaraciones.tipo_cierre'
      Size = 1
    end
    object qrymcdecaficomnum_declarativa: TFloatField
      FieldName = 'num_declarativa'
      Origin = 'DBUNIMEC.declaraciones.num_declarativa'
    end
    object qrymcdecaficomafi_numero_doc: TStringField
      FieldName = 'afi_numero_doc'
      Origin = 'DBUNIMEC.declaraciones.num_declarativa'
      Size = 18
    end
    object qrymcdecaficomafi_tipo_doc: TStringField
      FieldName = 'afi_tipo_doc'
      Origin = 'DBUNIMEC.declaraciones.num_declarativa'
      FixedChar = True
      Size = 3
    end
    object qrymcdecaficomnum_declaracion_1: TFloatField
      FieldName = 'num_declaracion_1'
      Origin = 'DBUNIMEC.declaraciones.num_declarativa'
    end
    object qrymcdecaficomcod_grupo_etareo: TFloatField
      FieldName = 'cod_grupo_etareo'
      Origin = 'DBUNIMEC.declaraciones.num_declarativa'
    end
    object qrymcdecaficomtip_upc: TStringField
      FieldName = 'tip_upc'
      Origin = 'DBUNIMEC.declaraciones.num_declarativa'
      FixedChar = True
      Size = 1
    end
    object qrymcdecaficomtip_pago: TStringField
      FieldName = 'tip_pago'
      Origin = 'DBUNIMEC.declaraciones.num_declarativa'
      FixedChar = True
      Size = 1
    end
    object qrymcdecaficomtip_beneficiario: TStringField
      FieldName = 'tip_beneficiario'
      Origin = 'DBUNIMEC.declaraciones.num_declarativa'
      FixedChar = True
      Size = 1
    end
    object qrymcdecaficomdias: TStringField
      FieldName = 'dias'
      Origin = 'DBUNIMEC.declaraciones.num_declarativa'
      Size = 2
    end
    object qrymcdecaficomsalario: TFloatField
      FieldName = 'salario'
      Origin = 'DBUNIMEC.declaraciones.num_declarativa'
    end
    object qrymcdecaficomporcentaje: TStringField
      FieldName = 'porcentaje'
      Origin = 'DBUNIMEC.declaraciones.num_declarativa'
      Size = 2
    end
    object qrymcdecaficomcotizacion: TFloatField
      FieldName = 'cotizacion'
      Origin = 'DBUNIMEC.declaraciones.num_declarativa'
    end
    object qrymcdecaficomval_deduccion: TFloatField
      FieldName = 'val_deduccion'
      Origin = 'DBUNIMEC.declaraciones.num_declarativa'
    end
    object qrymcdecaficomtip_deduccion: TStringField
      FieldName = 'tip_deduccion'
      Origin = 'DBUNIMEC.declaraciones.num_declarativa'
      FixedChar = True
      Size = 3
    end
    object qrymcdecaficomvalor_upc: TFloatField
      FieldName = 'valor_upc'
      Origin = 'DBUNIMEC.declaraciones.num_declarativa'
    end
    object qrymcdecaficomtip_afiliado: TStringField
      FieldName = 'tip_afiliado'
      Origin = 'DBUNIMEC.declaraciones.num_declarativa'
      FixedChar = True
      Size = 1
    end
    object qrymcdecaficomfec_consignacion: TDateTimeField
      FieldName = 'fec_consignacion'
      Origin = 'DBUNIMEC.declaraciones.num_declarativa'
    end
    object qrymcdecaficomcod_parentesco: TStringField
      FieldName = 'cod_parentesco'
      Origin = 'DBUNIMEC.declaraciones.num_declarativa'
      Size = 3
    end
    object qrymcdecaficomnum_planilla: TStringField
      FieldName = 'num_planilla'
      Origin = 'DBUNIMEC.declaraciones.num_declarativa'
      Size = 15
    end
  end
  object qrymcupcs1: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      
        'select ano, upc, val_upc_dia_normal, val_upc_dia_especial,sal_mi' +
        'nimo from valoresanulescomp')
    Left = 229
    Top = 10
    object qrymcupcs1ano: TDateTimeField
      DisplayLabel = 'A'#241'o'
      FieldName = 'ano'
      Origin = 'DBUNIMEC.valoresanulescomp.ano'
    end
    object qrymcupcs1upc: TFloatField
      DisplayLabel = 'Valor UPC'
      FieldName = 'upc'
      Origin = 'DBUNIMEC.valoresanulescomp.upc'
    end
    object qrymcupcs1val_upc_dia_normal: TFloatField
      DisplayLabel = 'UPC dia normal'
      FieldName = 'val_upc_dia_normal'
      Origin = 'DBUNIMEC.valoresanulescomp.val_upc_dia_normal'
    end
    object qrymcupcs1val_upc_dia_especial: TFloatField
      DisplayLabel = 'UPC dia especial'
      FieldName = 'val_upc_dia_especial'
      Origin = 'DBUNIMEC.valoresanulescomp.val_upc_dia_especial'
    end
    object qrymcupcs1SAL_MINIMO: TFloatField
      DisplayLabel = 'Salario Minimo del A'#241'o'
      FieldName = 'SAL_MINIMO'
      Origin = 'DBUNIMEC.VALORESANULESCOMP.SAL_MINIMO'
    end
  end
  object qryupczon1: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      
        'select upc,riesgo,val_estructura_cost,cod_grupo_eta from valores' +
        'anulescomp,estructura_costos where ano = ano_val_estructura_cost' +
        ' and ano = "01/01/2001"')
    Left = 229
    Top = 10
    object qryupczon1upc: TFloatField
      FieldName = 'upc'
      Origin = 'DBUNIMEC.valoresanulescomp.upc'
    end
    object qryupczon1riesgo: TFloatField
      FieldName = 'riesgo'
      Origin = 'DBUNIMEC.valoresanulescomp.riesgo'
    end
    object qryupczon1val_estructura_cost: TFloatField
      FieldName = 'val_estructura_cost'
      Origin = 'DBUNIMEC.estructura_costos.val_estructura_cost'
    end
    object qryupczon1cod_grupo_eta: TFloatField
      FieldName = 'cod_grupo_eta'
      Origin = 'DBUNIMEC.estructura_costos.cod_grupo_eta'
    end
  end
  object qrymcafilcomp1: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      'SELECT * FROM AFILIADOS_COMPENSADOS, ESTRUCTURA_COSTOS '
      'WHERE NUM_DECLARACION =:num_declaracion'
      
        '          AND AFILIADOS_COMPENSADOS.COD_GRUPO_ETAREO = ESTRUCTUR' +
        'A_COSTOS.COD_GRUPO_ETA '
      '          AND ANO_VAL_ESTRUCTURA_COST = :ano'
      
        '          AND (ID_MULTIAFILIADO  IS NULL OR ID_MULTIAFILIADO = '#39 +
        'SOL'#39')')
    Left = 229
    Top = 10
    ParamData = <
      item
        DataType = ftString
        Name = 'num_declaracion'
        ParamType = ptInputOutput
        Value = ''
      end
      item
        DataType = ftDateTime
        Name = 'ano'
        ParamType = ptInputOutput
        Value = 0d
      end>
    object qrymcafilcomp1AFI_NUMERO_DOC: TStringField
      FieldName = 'AFI_NUMERO_DOC'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.AFI_NUMERO_DOC'
      Size = 18
    end
    object qrymcafilcomp1AFI_TIPO_DOC: TStringField
      FieldName = 'AFI_TIPO_DOC'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.AFI_TIPO_DOC'
      FixedChar = True
      Size = 3
    end
    object qrymcafilcomp1NUM_DECLARACION: TFloatField
      FieldName = 'NUM_DECLARACION'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.NUM_DECLARACION'
    end
    object qrymcafilcomp1COD_GRUPO_ETAREO: TFloatField
      FieldName = 'COD_GRUPO_ETAREO'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.COD_GRUPO_ETAREO'
    end
    object qrymcafilcomp1TIP_UPC: TStringField
      FieldName = 'TIP_UPC'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.TIP_UPC'
      FixedChar = True
      Size = 1
    end
    object qrymcafilcomp1TIP_PAGO: TStringField
      FieldName = 'TIP_PAGO'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.TIP_PAGO'
      FixedChar = True
      Size = 1
    end
    object qrymcafilcomp1TIP_BENEFICIARIO: TStringField
      FieldName = 'TIP_BENEFICIARIO'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.TIP_BENEFICIARIO'
      FixedChar = True
      Size = 1
    end
    object qrymcafilcomp1DIAS: TStringField
      FieldName = 'DIAS'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.DIAS'
      Size = 2
    end
    object qrymcafilcomp1SALARIO: TFloatField
      FieldName = 'SALARIO'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.SALARIO'
    end
    object qrymcafilcomp1PORCENTAJE: TStringField
      FieldName = 'PORCENTAJE'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.PORCENTAJE'
      Size = 2
    end
    object qrymcafilcomp1COTIZACION: TFloatField
      FieldName = 'COTIZACION'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.COTIZACION'
    end
    object qrymcafilcomp1VAL_DEDUCCION: TFloatField
      FieldName = 'VAL_DEDUCCION'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.VAL_DEDUCCION'
    end
    object qrymcafilcomp1TIP_DEDUCCION: TStringField
      FieldName = 'TIP_DEDUCCION'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.TIP_DEDUCCION'
      FixedChar = True
      Size = 3
    end
    object qrymcafilcomp1VALOR_UPC: TFloatField
      FieldName = 'VALOR_UPC'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.VALOR_UPC'
    end
    object qrymcafilcomp1TIP_AFILIADO: TStringField
      FieldName = 'TIP_AFILIADO'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.TIP_AFILIADO'
      FixedChar = True
      Size = 1
    end
    object qrymcafilcomp1FEC_CONSIGNACION: TDateTimeField
      FieldName = 'FEC_CONSIGNACION'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.FEC_CONSIGNACION'
    end
    object qrymcafilcomp1COD_PARENTESCO: TStringField
      FieldName = 'COD_PARENTESCO'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.COD_PARENTESCO'
      Size = 3
    end
    object qrymcafilcomp1NUM_PLANILLA: TStringField
      FieldName = 'NUM_PLANILLA'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.NUM_PLANILLA'
      Size = 15
    end
    object qrymcafilcomp1COD_GRUPO_ETA: TFloatField
      FieldName = 'COD_GRUPO_ETA'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.NUM_PLANILLA'
    end
    object qrymcafilcomp1VAL_ESTRUCTURA_COST: TFloatField
      FieldName = 'VAL_ESTRUCTURA_COST'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.NUM_PLANILLA'
    end
    object qrymcafilcomp1ANO_VAL_ESTRUCTURA_COST: TDateTimeField
      FieldName = 'ANO_VAL_ESTRUCTURA_COST'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.NUM_PLANILLA'
    end
  end
  object qrymcaficompla: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      'SELECT DISTINCT NUM_PLANILLA, AFI_NUMERO_DOC, AFI_TIPO_DOC '
      'FROM AFILIADOS_COMPENSADOS '
      'WHERE NUM_DECLARACION =:num_declaracion')
    Left = 229
    Top = 10
    ParamData = <
      item
        DataType = ftString
        Name = 'num_declaracion'
        ParamType = ptInputOutput
        Value = ''
      end>
    object qrymcaficomplaNUM_PLANILLA: TStringField
      FieldName = 'NUM_PLANILLA'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.NUM_PLANILLA'
      Size = 15
    end
    object qrymcaficomplaAFI_NUMERO_DOC: TStringField
      FieldName = 'AFI_NUMERO_DOC'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.AFI_NUMERO_DOC'
      Size = 18
    end
    object qrymcaficomplaAFI_TIPO_DOC: TStringField
      FieldName = 'AFI_TIPO_DOC'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.AFI_TIPO_DOC'
      FixedChar = True
      Size = 3
    end
  end
  object qrynumpla: TQuery
    DatabaseName = 'softeps'
    RequestLive = True
    SQL.Strings = (
      'select est_planilla from autoliquidacion'
      'where num_planilla = "1"')
    Left = 229
    Top = 10
    object qrynumplaest_planilla: TStringField
      FieldName = 'est_planilla'
      Origin = 'DBUNIMEC.autoliquidacion.est_planilla'
      FixedChar = True
      Size = 3
    end
  end
  object qrymcdnumpla: TQuery
    DatabaseName = 'softeps'
    RequestLive = True
    SQL.Strings = (
      'SELECT DET_ESTADO, NUM_DECLARACION '
      'FROM DET_PLANILLA_AUTOLIQUIDACION '
      'WHERE NUM_PLANILLA = :num_planilla'
      '           AND AFI_TIPO_DOC = :afi_tipo_doc'
      '           AND AFI_NUMERO_DOC = :afi_numero_doc')
    Left = 229
    Top = 10
    ParamData = <
      item
        DataType = ftString
        Name = 'num_planilla'
        ParamType = ptInputOutput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'afi_tipo_doc'
        ParamType = ptInputOutput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'afi_numero_doc'
        ParamType = ptInputOutput
        Value = ''
      end>
    object qrymcdnumplaDET_ESTADO: TStringField
      FieldName = 'DET_ESTADO'
      Origin = 'SOFTEPS.DET_PLANILLA_AUTOLIQUIDACION.DET_ESTADO'
      FixedChar = True
      Size = 3
    end
    object qrymcdnumplaNUM_DECLARACION: TFloatField
      FieldName = 'NUM_DECLARACION'
      Origin = 'SOFTEPS.DET_PLANILLA_AUTOLIQUIDACION.NUM_DECLARACION'
    end
  end
  object qrymccarafi: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      
        'SELECT TIP_DOCUMENTO, NUM_DOCUMENTO, TIP_DOCUMENTO_COT, NUM_DOCU' +
        'MENTO_COT '
      'FROM CARTERA '
      'WHERE PER_COMPENSACION = :periodo'
      '              AND COD_TIPO_AFIL = '#39'C'#39
      '              ')
    Left = 229
    Top = 10
    ParamData = <
      item
        DataType = ftString
        Name = 'periodo'
        ParamType = ptInputOutput
        Value = ''
      end>
    object qrymccarafiTIP_DOCUMENTO: TStringField
      FieldName = 'TIP_DOCUMENTO'
      Origin = 'DBUNIMEC.CARTERA.TIP_DOCUMENTO'
      FixedChar = True
      Size = 3
    end
    object qrymccarafiNUM_DOCUMENTO: TStringField
      FieldName = 'NUM_DOCUMENTO'
      Origin = 'DBUNIMEC.CARTERA.NUM_DOCUMENTO'
      Size = 18
    end
    object qrymccarafiTIP_DOCUMENTO_COT: TStringField
      FieldName = 'TIP_DOCUMENTO_COT'
      Origin = 'DBUNIMEC.CARTERA.TIP_DOCUMENTO_COT'
      FixedChar = True
      Size = 3
    end
    object qrymccarafiNUM_DOCUMENTO_COT: TStringField
      FieldName = 'NUM_DOCUMENTO_COT'
      Origin = 'DBUNIMEC.CARTERA.NUM_DOCUMENTO_COT'
      Size = 18
    end
  end
  object qrymcaficar: TQuery
    DatabaseName = 'softeps'
    RequestLive = True
    SQL.Strings = (
      'SELECT COD_ESTADO,FEC_ULTIMA_NOV '
      'FROM AFILIADOS '
      'WHERE TIP_DOCUMENTO = :tip_documento'
      '          AND NUM_DOCUMENTO = :num_documento'
      '          AND COD_ESTADO = '#39'A'#39
      '')
    Left = 229
    Top = 10
    ParamData = <
      item
        DataType = ftString
        Name = 'tip_documento'
        ParamType = ptInputOutput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'num_documento'
        ParamType = ptInputOutput
        Value = ''
      end>
    object qrymcaficarCOD_ESTADO: TStringField
      FieldName = 'COD_ESTADO'
      Origin = 'SOFTEPS.AFILIADOS.COD_ESTADO'
      FixedChar = True
      Size = 2
    end
    object qrymcaficarFEC_ULTIMA_NOV: TDateTimeField
      FieldName = 'FEC_ULTIMA_NOV'
      Origin = 'SOFTEPS.AFILIADOS.FEC_ULTIMA_NOV'
    end
  end
  object qrymcestcos: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      'SELECT * FROM ESTRUCTURA_COSTOS '
      'WHERE ANO_VAL_ESTRUCTURA_COST = :ano'
      '      AND COD_GRUPO_ETA = :etareo')
    Left = 229
    Top = 10
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'ano'
        ParamType = ptInputOutput
      end
      item
        DataType = ftString
        Name = 'etareo'
        ParamType = ptInputOutput
        Value = ''
      end>
    object qrymcestcosCOD_GRUPO_ETA: TFloatField
      DisplayLabel = 'Codigo'
      FieldName = 'COD_GRUPO_ETA'
      Origin = 'DBUNIMEC.ESTRUCTURA_COSTOS.COD_GRUPO_ETA'
    end
    object qrymcestcosVAL_ESTRUCTURA_COST: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'VAL_ESTRUCTURA_COST'
      Origin = 'DBUNIMEC.ESTRUCTURA_COSTOS.VAL_ESTRUCTURA_COST'
    end
    object qrymcestcosANO_VAL_ESTRUCTURA_COST: TDateTimeField
      DisplayLabel = 'A'#241'o'
      FieldName = 'ANO_VAL_ESTRUCTURA_COST'
      Origin = 'DBUNIMEC.ESTRUCTURA_COSTOS.ANO_VAL_ESTRUCTURA_COST'
    end
  end
  object qrymcvalores: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      'select * from valoresanulescomp where ano = :param1'
      '')
    Left = 229
    Top = 10
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'param1'
        ParamType = ptInputOutput
        Value = 0d
      end>
    object qrymcvaloresANO: TDateTimeField
      DisplayLabel = 'A'#241'o'
      FieldName = 'ANO'
      Origin = 'DBUNIMEC.VALORESANULESCOMP.ANO'
    end
    object qrymcvaloresSAL_MINIMO: TFloatField
      DisplayLabel = 'Salario Minimo'
      FieldName = 'SAL_MINIMO'
      Origin = 'DBUNIMEC.VALORESANULESCOMP.SAL_MINIMO'
    end
    object qrymcvaloresUPC: TFloatField
      DisplayLabel = 'Valor UPC'
      FieldName = 'UPC'
      Origin = 'DBUNIMEC.VALORESANULESCOMP.UPC'
    end
    object qrymcvaloresPYP: TFloatField
      DisplayLabel = 'Promocion y Prevencion'
      FieldName = 'PYP'
      Origin = 'DBUNIMEC.VALORESANULESCOMP.PYP'
    end
    object qrymcvaloresSOL: TFloatField
      DisplayLabel = 'Solidaridad'
      FieldName = 'SOL'
      Origin = 'DBUNIMEC.VALORESANULESCOMP.SOL'
    end
    object qrymcvaloresRIESGO: TFloatField
      DisplayLabel = 'Riesgo Zona Especial'
      FieldName = 'RIESGO'
      Origin = 'DBUNIMEC.VALORESANULESCOMP.RIESGO'
    end
    object qrymcvaloresVAL_UPC_DIA_NORMAL: TFloatField
      DisplayLabel = 'UPC dia normal'
      FieldName = 'VAL_UPC_DIA_NORMAL'
      Origin = 'DBUNIMEC.VALORESANULESCOMP.VAL_UPC_DIA_NORMAL'
    end
    object qrymcvaloresVAL_UPC_DIA_ESPECIAL: TFloatField
      DisplayLabel = 'UPC dia Especial'
      FieldName = 'VAL_UPC_DIA_ESPECIAL'
      Origin = 'DBUNIMEC.VALORESANULESCOMP.VAL_UPC_DIA_ESPECIAL'
    end
    object qrymcvaloresPOR_COTIZACION: TFloatField
      DisplayLabel = 'Cotizacion'
      FieldName = 'POR_COTIZACION'
      Origin = 'DBUNIMEC.VALORESANULESCOMP.POR_COTIZACION'
    end
    object qrymcvaloresPOR_ENFERMEDAD_GENERAL: TFloatField
      DisplayLabel = 'Porcentaje Enfermadad General'
      FieldName = 'POR_ENFERMEDAD_GENERAL'
      Origin = 'DBUNIMEC.VALORESANULESCOMP.POR_ENFERMEDAD_GENERAL'
    end
    object qrymcvaloresPOR_PROVISION_INC: TFloatField
      DisplayLabel = 'Porcentaje Provision Incapacidad'
      FieldName = 'POR_PROVISION_INC'
      Origin = 'DBUNIMEC.VALORESANULESCOMP.POR_PROVISION_INC'
    end
    object qrymcvaloresPOR_PYP_LIQUIDACION: TFloatField
      DisplayLabel = 'Promocion y Prevencion Liquidacion'
      FieldName = 'POR_PYP_LIQUIDACION'
      Origin = 'DBUNIMEC.VALORESANULESCOMP.POR_PYP_LIQUIDACION'
    end
    object qrymcvaloresPOR_SOLIDARIDAD_LIQUIDACION: TFloatField
      DisplayLabel = 'Porcentaje Solidaridad Liquidacion'
      FieldName = 'POR_SOLIDARIDAD_LIQUIDACION'
      Origin = 'DBUNIMEC.VALORESANULESCOMP.POR_SOLIDARIDAD_LIQUIDACION'
    end
  end
  object qrymcfecha: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      'SELECT SYSDATE FROM DUAL')
    Left = 229
    Top = 10
    object qrymcfechaSYSDATE: TDateTimeField
      FieldName = 'SYSDATE'
    end
  end
  object qrymcestplanillas: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      'SELECT * FROM ESTADO_PLANILLAS'
      'WHERE COD_ESTADO <> '#39'CIE'#39' AND COD_ESTADO <> '#39'COM'#39)
    Left = 229
    Top = 10
    object qrymcestplanillasCOD_ESTADO: TStringField
      FieldName = 'COD_ESTADO'
      Origin = 'SOFTEPS.ESTADO_PLANILLAS.COD_ESTADO'
      Size = 3
    end
    object qrymcestplanillasDES_ESTADO: TStringField
      FieldName = 'DES_ESTADO'
      Origin = 'SOFTEPS.ESTADO_PLANILLAS.DES_ESTADO'
      Size = 35
    end
  end
  object qrymcactperiodo: TQuery
    DatabaseName = 'softeps'
    RequestLive = True
    SQL.Strings = (
      'SELECT PER_PRESENTACION, NUM_PLANILLA'
      'FROM DET_PLANILLA_AUTOLIQUIDACION'
      'WHERE DET_ESTADO <> '#39'COM'#39)
    Left = 230
    Top = 12
    object qrymcactperiodoPER_PRESENTACION: TStringField
      FieldName = 'PER_PRESENTACION'
      Origin = 'DBUNIMEC.DET_PLANILLA_AUTOLIQUIDACION.PER_PRESENTACION'
      FixedChar = True
      Size = 7
    end
    object qrymcactperiodoNUM_PLANILLA: TStringField
      FieldName = 'NUM_PLANILLA'
      Origin = 'SOFTEPS.DET_PLANILLA_AUTOLIQUIDACION.NUM_PLANILLA'
      Size = 15
    end
  end
  object qrymcintereses: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      'SELECT * FROM INTERESES')
    Left = 229
    Top = 10
    object qrymcinteresesFEC_INTERESES: TDateTimeField
      FieldName = 'FEC_INTERESES'
      Origin = 'DBUNIMEC.INTERESES.FEC_INTERESES'
    end
    object qrymcinteresesVAL_ANUL: TFloatField
      FieldName = 'VAL_ANUL'
      Origin = 'DBUNIMEC.INTERESES.VAL_ANUL'
    end
    object qrymcinteresesVAL_MENSUAL: TFloatField
      FieldName = 'VAL_MENSUAL'
      Origin = 'DBUNIMEC.INTERESES.VAL_MENSUAL'
    end
    object qrymcinteresesDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Origin = 'DBUNIMEC.INTERESES.DESCRIPCION'
      FixedChar = True
      Size = 255
    end
  end
  object qrymcconplanillas: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      'SELECT DISTINCT  DET_PLANILLA_AUTOLIQUIDACION.NUM_PLANILLA '
      'FROM DET_PLANILLA_AUTOLIQUIDACION,AUTOLIQUIDACION '
      
        'WHERE      (DET_PLANILLA_AUTOLIQUIDACION.PER_PRESENTACION =:peri' +
        'odo)'
      '         AND (DET_ESTADO <>'#39'CIE'#39') '
      '         AND (DET_ESTADO <> '#39'COM'#39') '
      '      ')
    Left = 229
    Top = 10
    ParamData = <
      item
        DataType = ftString
        Name = 'periodo'
        ParamType = ptInputOutput
        Value = ''
      end>
    object qrymcconplanillasNUM_PLANILLA: TStringField
      FieldName = 'NUM_PLANILLA'
      Origin = 'SOFTEPS.DET_PLANILLA_AUTOLIQUIDACION.NUM_PLANILLA'
      Size = 15
    end
  end
  object qrymcnovegre: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      'SELECT FEC_EVENTO FROM NOVEDADES_AFILIADOS'
      'WHERE NOV_CODIGO = 66'
      '               AND TIP_DOCUMENTO = :tip_documento'
      '               AND NUM_DOCUMENTO = :num_documento'
      'ORDER BY FEC_EVENTO')
    Left = 229
    Top = 10
    ParamData = <
      item
        DataType = ftString
        Name = 'tip_documento'
        ParamType = ptInputOutput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'num_documento'
        ParamType = ptInputOutput
        Value = ''
      end>
    object qrymcnovegreFEC_EVENTO: TDateTimeField
      FieldName = 'FEC_EVENTO'
      Origin = 'DBUNIMEC.NOVEDADES_AFILIADOS.FEC_EVENTO'
    end
  end
  object qrymcnoving: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      'SELECT FEC_EVENTO FROM NOVEDADES_AFILIADOS'
      'WHERE NOV_CODIGO = 87'
      '               AND TIP_DOCUMENTO = :tip_documento'
      '               AND NUM_DOCUMENTO = :num_documento'
      'ORDER BY FEC_EVENTO'
      '')
    Left = 229
    Top = 10
    ParamData = <
      item
        DataType = ftString
        Name = 'tip_documento'
        ParamType = ptInputOutput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'num_documento'
        ParamType = ptInputOutput
        Value = ''
      end>
    object qrymcnovingFEC_EVENTO: TDateTimeField
      FieldName = 'FEC_EVENTO'
      Origin = 'DBUNIMEC.NOVEDADES_AFILIADOS.FEC_EVENTO'
    end
  end
  object qrymccierres1: TQuery
    DatabaseName = 'softeps'
    RequestLive = True
    SQL.Strings = (
      'SELECT * FROM CIERRES '
      'WHERE FEC_DIGITACION = :fecha_dec')
    Left = 229
    Top = 10
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'fecha_dec'
        ParamType = ptInputOutput
        Value = 0d
      end>
    object qrymccierres1TIP_CIERRE: TStringField
      FieldName = 'TIP_CIERRE'
      Origin = 'SOFTEPS.CIERRES.TIP_CIERRE'
      Size = 1
    end
    object qrymccierres1PER_COMPENSACION: TStringField
      FieldName = 'PER_COMPENSACION'
      Origin = 'SOFTEPS.CIERRES.PER_COMPENSACION'
      Size = 7
    end
    object qrymccierres1FEC_DIGITACION: TDateTimeField
      FieldName = 'FEC_DIGITACION'
      Origin = 'SOFTEPS.CIERRES.FEC_DIGITACION'
    end
  end
  object qrymcdeclaracion1: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      'SELECT * FROM DECLARACIONES ORDER BY NUM_DECLARACION')
    Left = 229
    Top = 10
    object qrymcdeclaracion1NUM_DECLARACION: TFloatField
      FieldName = 'NUM_DECLARACION'
      Origin = 'SOFTEPS.DECLARACIONES.NUM_DECLARACION'
    end
    object qrymcdeclaracion1COT_TIPO_DECLA: TFloatField
      FieldName = 'COT_TIPO_DECLA'
      Origin = 'SOFTEPS.DECLARACIONES.COT_TIPO_DECLA'
    end
    object qrymcdeclaracion1PERIODO_COMPENSADO: TStringField
      FieldName = 'PERIODO_COMPENSADO'
      Origin = 'SOFTEPS.DECLARACIONES.PERIODO_COMPENSADO'
      Size = 10
    end
    object qrymcdeclaracion1FECHA_DECLARACION: TDateTimeField
      FieldName = 'FECHA_DECLARACION'
      Origin = 'SOFTEPS.DECLARACIONES.FECHA_DECLARACION'
    end
    object qrymcdeclaracion1TIPO_CIERRE: TStringField
      FieldName = 'TIPO_CIERRE'
      Origin = 'SOFTEPS.DECLARACIONES.TIPO_CIERRE'
      Size = 1
    end
    object qrymcdeclaracion1NUM_DECLARATIVA: TFloatField
      FieldName = 'NUM_DECLARATIVA'
      Origin = 'SOFTEPS.DECLARACIONES.NUM_DECLARATIVA'
    end
  end
  object qrymcdeclaracion2: TQuery
    DatabaseName = 'softeps'
    RequestLive = True
    SQL.Strings = (
      'SELECT * FROM DECLARACIONES '
      'WHERE FECHA_DECLARACION = :fecha'
      'ORDER BY NUM_DECLARACION'
      '')
    Left = 229
    Top = 10
    ParamData = <
      item
        DataType = ftDate
        Name = 'fecha'
        ParamType = ptInputOutput
        Value = 0d
      end>
    object qrymcdeclaracion2NUM_DECLARACION: TFloatField
      FieldName = 'NUM_DECLARACION'
      Origin = 'SOFTEPS.DECLARACIONES.NUM_DECLARACION'
    end
    object qrymcdeclaracion2COT_TIPO_DECLA: TFloatField
      FieldName = 'COT_TIPO_DECLA'
      Origin = 'SOFTEPS.DECLARACIONES.COT_TIPO_DECLA'
    end
    object qrymcdeclaracion2PERIODO_COMPENSADO: TStringField
      FieldName = 'PERIODO_COMPENSADO'
      Origin = 'SOFTEPS.DECLARACIONES.PERIODO_COMPENSADO'
      Size = 10
    end
    object qrymcdeclaracion2FECHA_DECLARACION: TDateTimeField
      FieldName = 'FECHA_DECLARACION'
      Origin = 'SOFTEPS.DECLARACIONES.FECHA_DECLARACION'
    end
    object qrymcdeclaracion2TIPO_CIERRE: TStringField
      FieldName = 'TIPO_CIERRE'
      Origin = 'SOFTEPS.DECLARACIONES.TIPO_CIERRE'
      Size = 1
    end
    object qrymcdeclaracion2NUM_DECLARATIVA: TFloatField
      FieldName = 'NUM_DECLARATIVA'
      Origin = 'SOFTEPS.DECLARACIONES.NUM_DECLARATIVA'
    end
  end
  object qrymcdeclaracion3: TQuery
    DatabaseName = 'softeps'
    RequestLive = True
    SQL.Strings = (
      'SELECT * FROM DECLARACIONES '
      'WHERE NUM_DECLARACION = :NUM_DECLARACION'
      '')
    Left = 229
    Top = 10
    ParamData = <
      item
        DataType = ftString
        Name = 'NUM_DECLARACION'
        ParamType = ptInputOutput
        Value = ''
      end>
    object qrymcdeclaracion3NUM_DECLARACION: TFloatField
      FieldName = 'NUM_DECLARACION'
      Origin = 'SOFTEPS.DECLARACIONES.NUM_DECLARACION'
    end
    object qrymcdeclaracion3COT_TIPO_DECLA: TFloatField
      FieldName = 'COT_TIPO_DECLA'
      Origin = 'SOFTEPS.DECLARACIONES.COT_TIPO_DECLA'
    end
    object qrymcdeclaracion3PERIODO_COMPENSADO: TStringField
      FieldName = 'PERIODO_COMPENSADO'
      Origin = 'SOFTEPS.DECLARACIONES.PERIODO_COMPENSADO'
      Size = 10
    end
    object qrymcdeclaracion3FECHA_DECLARACION: TDateTimeField
      FieldName = 'FECHA_DECLARACION'
      Origin = 'SOFTEPS.DECLARACIONES.FECHA_DECLARACION'
    end
    object qrymcdeclaracion3TIPO_CIERRE: TStringField
      FieldName = 'TIPO_CIERRE'
      Origin = 'SOFTEPS.DECLARACIONES.TIPO_CIERRE'
      Size = 1
    end
    object qrymcdeclaracion3NUM_DECLARATIVA: TFloatField
      FieldName = 'NUM_DECLARATIVA'
      Origin = 'SOFTEPS.DECLARACIONES.NUM_DECLARATIVA'
    end
  end
  object qrymcbasesdecalculo1: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      'SELECT * FROM BASES_DE_CALCULO '
      '            WHERE NUM_DECLARACION =:num_declaracion')
    Left = 229
    Top = 10
    ParamData = <
      item
        DataType = ftString
        Name = 'num_declaracion'
        ParamType = ptInputOutput
        Value = ''
      end>
    object qrymcbasesdecalculo1NUM_DECLARACION: TFloatField
      FieldName = 'NUM_DECLARACION'
      Origin = 'SOFTEPS.BASES_DE_CALCULO.NUM_DECLARACION'
    end
    object qrymcbasesdecalculo1COD_GRUPO_ETA: TFloatField
      FieldName = 'COD_GRUPO_ETA'
      Origin = 'SOFTEPS.BASES_DE_CALCULO.COD_GRUPO_ETA'
    end
    object qrymcbasesdecalculo1TOT_COTIZANTES_MCN: TFloatField
      FieldName = 'TOT_COTIZANTES_MCN'
      Origin = 'SOFTEPS.BASES_DE_CALCULO.TOT_COTIZANTES_MCN'
    end
    object qrymcbasesdecalculo1TOT_COTIZANTES_MCE: TFloatField
      FieldName = 'TOT_COTIZANTES_MCE'
      Origin = 'SOFTEPS.BASES_DE_CALCULO.TOT_COTIZANTES_MCE'
    end
    object qrymcbasesdecalculo1TOT_COTIZANTES_MPN: TFloatField
      FieldName = 'TOT_COTIZANTES_MPN'
      Origin = 'SOFTEPS.BASES_DE_CALCULO.TOT_COTIZANTES_MPN'
    end
    object qrymcbasesdecalculo1TOT_COTIZANTES_MPE: TFloatField
      FieldName = 'TOT_COTIZANTES_MPE'
      Origin = 'SOFTEPS.BASES_DE_CALCULO.TOT_COTIZANTES_MPE'
    end
    object qrymcbasesdecalculo1TOT_BENEFICIARIOS_MCN: TFloatField
      FieldName = 'TOT_BENEFICIARIOS_MCN'
      Origin = 'SOFTEPS.BASES_DE_CALCULO.TOT_BENEFICIARIOS_MCN'
    end
    object qrymcbasesdecalculo1TOT_BENEFICIARIOS_MCE: TFloatField
      FieldName = 'TOT_BENEFICIARIOS_MCE'
      Origin = 'SOFTEPS.BASES_DE_CALCULO.TOT_BENEFICIARIOS_MCE'
    end
    object qrymcbasesdecalculo1TOT_BENEFICIARIOS_MPNL: TFloatField
      FieldName = 'TOT_BENEFICIARIOS_MPNL'
      Origin = 'SOFTEPS.BASES_DE_CALCULO.TOT_BENEFICIARIOS_MPNL'
    end
    object qrymcbasesdecalculo1TOT_BENEFICIARIOS_MPE: TFloatField
      FieldName = 'TOT_BENEFICIARIOS_MPE'
      Origin = 'SOFTEPS.BASES_DE_CALCULO.TOT_BENEFICIARIOS_MPE'
    end
    object qrymcbasesdecalculo1TOT_AFILIADOS_MCN: TFloatField
      FieldName = 'TOT_AFILIADOS_MCN'
      Origin = 'SOFTEPS.BASES_DE_CALCULO.TOT_AFILIADOS_MCN'
    end
    object qrymcbasesdecalculo1TOT_AFILIADOS_MCE: TFloatField
      FieldName = 'TOT_AFILIADOS_MCE'
      Origin = 'SOFTEPS.BASES_DE_CALCULO.TOT_AFILIADOS_MCE'
    end
    object qrymcbasesdecalculo1TOT_AFILIADOS_MPN: TFloatField
      FieldName = 'TOT_AFILIADOS_MPN'
      Origin = 'SOFTEPS.BASES_DE_CALCULO.TOT_AFILIADOS_MPN'
    end
    object qrymcbasesdecalculo1TOT_AFILIADOS_MPE: TFloatField
      FieldName = 'TOT_AFILIADOS_MPE'
      Origin = 'SOFTEPS.BASES_DE_CALCULO.TOT_AFILIADOS_MPE'
    end
    object qrymcbasesdecalculo1TOT_AFILIADOS_UPCNORMAL: TFloatField
      FieldName = 'TOT_AFILIADOS_UPCNORMAL'
      Origin = 'SOFTEPS.BASES_DE_CALCULO.TOT_AFILIADOS_UPCNORMAL'
    end
    object qrymcbasesdecalculo1TOT_AFILIADOS_UPCESPECIAL: TFloatField
      FieldName = 'TOT_AFILIADOS_UPCESPECIAL'
      Origin = 'SOFTEPS.BASES_DE_CALCULO.TOT_AFILIADOS_UPCESPECIAL'
    end
    object qrymcbasesdecalculo1TOT_DIAS_COTZNN: TFloatField
      FieldName = 'TOT_DIAS_COTZNN'
      Origin = 'SOFTEPS.BASES_DE_CALCULO.TOT_DIAS_COTZNN'
    end
    object qrymcbasesdecalculo1TOT_DIAS_COTIZE: TFloatField
      FieldName = 'TOT_DIAS_COTIZE'
      Origin = 'SOFTEPS.BASES_DE_CALCULO.TOT_DIAS_COTIZE'
    end
    object qrymcbasesdecalculo1TOT_UPC_DZN: TFloatField
      FieldName = 'TOT_UPC_DZN'
      Origin = 'SOFTEPS.BASES_DE_CALCULO.TOT_UPC_DZN'
    end
    object qrymcbasesdecalculo1TOT_UPC_DZE: TFloatField
      FieldName = 'TOT_UPC_DZE'
      Origin = 'SOFTEPS.BASES_DE_CALCULO.TOT_UPC_DZE'
    end
    object qrymcbasesdecalculo1TOT_VALOR_UPC: TFloatField
      FieldName = 'TOT_VALOR_UPC'
      Origin = 'SOFTEPS.BASES_DE_CALCULO.TOT_VALOR_UPC'
    end
  end
  object qrymcbasesdep2: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      'SELECT * FROM BASES_DE_CALCULO_DEP '
      'WHERE NUM_DECLARACION =:num_declaracion')
    Left = 229
    Top = 10
    ParamData = <
      item
        DataType = ftString
        Name = 'num_declaracion'
        ParamType = ptInputOutput
        Value = ''
      end>
    object qrymcbasesdep2NUM_DECLARACION: TFloatField
      FieldName = 'NUM_DECLARACION'
      Origin = 'SOFTEPS.BASES_DE_CALCULO_DEP.NUM_DECLARACION'
    end
    object qrymcbasesdep2COD_GRUPO_ETA: TFloatField
      FieldName = 'COD_GRUPO_ETA'
      Origin = 'SOFTEPS.BASES_DE_CALCULO_DEP.COD_GRUPO_ETA'
    end
    object qrymcbasesdep2TOT_DEPENDIENTES: TFloatField
      FieldName = 'TOT_DEPENDIENTES'
      Origin = 'SOFTEPS.BASES_DE_CALCULO_DEP.TOT_DEPENDIENTES'
    end
    object qrymcbasesdep2VAL_UPC_DEPENDIENTES: TFloatField
      FieldName = 'VAL_UPC_DEPENDIENTES'
      Origin = 'SOFTEPS.BASES_DE_CALCULO_DEP.VAL_UPC_DEPENDIENTES'
    end
    object qrymcbasesdep2VAL_PROMOCION: TFloatField
      FieldName = 'VAL_PROMOCION'
      Origin = 'SOFTEPS.BASES_DE_CALCULO_DEP.VAL_PROMOCION'
    end
    object qrymcbasesdep2VAL_SOLIDARIDAD: TFloatField
      FieldName = 'VAL_SOLIDARIDAD'
      Origin = 'SOFTEPS.BASES_DE_CALCULO_DEP.VAL_SOLIDARIDAD'
    end
  end
  object qrymcconplanillas2: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      'SELECT DISTINCT NUM_PLANILLA '
      'FROM AFILIADOS_COMPENSADOS '
      'WHERE NUM_DECLARACION = :num_declaracion')
    Left = 229
    Top = 10
    ParamData = <
      item
        DataType = ftString
        Name = 'num_declaracion'
        ParamType = ptInputOutput
        Value = ''
      end>
    object qrymcconplanillas2NUM_PLANILLA: TStringField
      FieldName = 'NUM_PLANILLA'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.NUM_PLANILLA'
      Size = 15
    end
  end
  object qrymcingupc: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      'SELECT * FROM AFILIADOS_COMPENSADOS, AFILIADOS '
      'WHERE NUM_DECLARACION >=:num_declaracion1'
      '      AND NUM_DECLARACION <=:num_declaracion2'
      
        '      AND AFILIADOS_COMPENSADOS.AFI_NUMERO_DOC = AFILIADOS.NUM_D' +
        'OCUMENTO '
      
        '      AND AFILIADOS_COMPENSADOS.AFI_TIPO_DOC = AFILIADOS.TIP_DOC' +
        'UMENTO'
      
        '      AND (ID_MULTIAFILIADO IS NULL OR EST_MULTIAFILIADO = '#39'COM'#39 +
        ')')
    Left = 229
    Top = 10
    ParamData = <
      item
        DataType = ftString
        Name = 'num_declaracion1'
        ParamType = ptInputOutput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'num_declaracion2'
        ParamType = ptInputOutput
        Value = ''
      end>
    object qrymcingupcAFI_NUMERO_DOC: TStringField
      FieldName = 'AFI_NUMERO_DOC'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.AFI_NUMERO_DOC'
      Size = 18
    end
    object qrymcingupcAFI_TIPO_DOC: TStringField
      FieldName = 'AFI_TIPO_DOC'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.AFI_TIPO_DOC'
      FixedChar = True
      Size = 3
    end
    object qrymcingupcNUM_DECLARACION: TFloatField
      FieldName = 'NUM_DECLARACION'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.NUM_DECLARACION'
    end
    object qrymcingupcCOD_GRUPO_ETAREO: TFloatField
      FieldName = 'COD_GRUPO_ETAREO'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.COD_GRUPO_ETAREO'
    end
    object qrymcingupcTIP_UPC: TStringField
      FieldName = 'TIP_UPC'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.TIP_UPC'
      FixedChar = True
      Size = 1
    end
    object qrymcingupcTIP_PAGO: TStringField
      FieldName = 'TIP_PAGO'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.TIP_PAGO'
      FixedChar = True
      Size = 1
    end
    object qrymcingupcTIP_BENEFICIARIO: TStringField
      FieldName = 'TIP_BENEFICIARIO'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.TIP_BENEFICIARIO'
      FixedChar = True
      Size = 1
    end
    object qrymcingupcDIAS: TStringField
      FieldName = 'DIAS'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.DIAS'
      Size = 2
    end
    object qrymcingupcSALARIO: TFloatField
      FieldName = 'SALARIO'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.SALARIO'
    end
    object qrymcingupcPORCENTAJE: TStringField
      FieldName = 'PORCENTAJE'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.PORCENTAJE'
      Size = 2
    end
    object qrymcingupcCOTIZACION: TFloatField
      FieldName = 'COTIZACION'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.COTIZACION'
    end
    object qrymcingupcVAL_DEDUCCION: TFloatField
      FieldName = 'VAL_DEDUCCION'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.VAL_DEDUCCION'
    end
    object qrymcingupcTIP_DEDUCCION: TStringField
      FieldName = 'TIP_DEDUCCION'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.TIP_DEDUCCION'
      FixedChar = True
      Size = 3
    end
    object qrymcingupcVALOR_UPC: TFloatField
      FieldName = 'VALOR_UPC'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.VALOR_UPC'
    end
    object qrymcingupcTIP_AFILIADO: TStringField
      FieldName = 'TIP_AFILIADO'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.TIP_AFILIADO'
      FixedChar = True
      Size = 1
    end
    object qrymcingupcFEC_CONSIGNACION: TDateTimeField
      FieldName = 'FEC_CONSIGNACION'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.FEC_CONSIGNACION'
    end
    object qrymcingupcCOD_PARENTESCO: TStringField
      FieldName = 'COD_PARENTESCO'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.COD_PARENTESCO'
      Size = 3
    end
    object qrymcingupcNUM_PLANILLA: TStringField
      FieldName = 'NUM_PLANILLA'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.NUM_PLANILLA'
      Size = 15
    end
    object qrymcingupcTIP_DOCUMENTO: TStringField
      FieldName = 'TIP_DOCUMENTO'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.NUM_PLANILLA'
      FixedChar = True
      Size = 3
    end
    object qrymcingupcNUM_DOCUMENTO: TStringField
      FieldName = 'NUM_DOCUMENTO'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.NUM_PLANILLA'
      Size = 18
    end
    object qrymcingupcCOD_SEXO: TStringField
      FieldName = 'COD_SEXO'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.NUM_PLANILLA'
      FixedChar = True
      Size = 1
    end
    object qrymcingupcCOD_TIPO_AFIL: TStringField
      FieldName = 'COD_TIPO_AFIL'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.NUM_PLANILLA'
      FixedChar = True
      Size = 1
    end
    object qrymcingupcCOD_MODALIDAD_TRA: TStringField
      FieldName = 'COD_MODALIDAD_TRA'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.NUM_PLANILLA'
      FixedChar = True
      Size = 1
    end
    object qrymcingupcCOD_ESTADO_CIV: TStringField
      FieldName = 'COD_ESTADO_CIV'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.NUM_PLANILLA'
      FixedChar = True
      Size = 1
    end
    object qrymcingupcCOD_ESTRATO: TStringField
      FieldName = 'COD_ESTRATO'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.NUM_PLANILLA'
      FixedChar = True
      Size = 3
    end
    object qrymcingupcCOD_ESCOLARIDAD: TStringField
      FieldName = 'COD_ESCOLARIDAD'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.NUM_PLANILLA'
      FixedChar = True
      Size = 3
    end
    object qrymcingupcCOD_PROFESION: TStringField
      FieldName = 'COD_PROFESION'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.NUM_PLANILLA'
      FixedChar = True
      Size = 3
    end
    object qrymcingupcCOD_ESTADO: TStringField
      FieldName = 'COD_ESTADO'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.NUM_PLANILLA'
      FixedChar = True
      Size = 2
    end
    object qrymcingupcCOD_OFICINA: TStringField
      FieldName = 'COD_OFICINA'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.NUM_PLANILLA'
      FixedChar = True
      Size = 3
    end
    object qrymcingupcCOD_REGIONAL: TStringField
      FieldName = 'COD_REGIONAL'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.NUM_PLANILLA'
      FixedChar = True
      Size = 3
    end
    object qrymcingupcPRI_NOMBRE: TStringField
      FieldName = 'PRI_NOMBRE'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.NUM_PLANILLA'
      Size = 25
    end
    object qrymcingupcSEG_NOMBRE: TStringField
      FieldName = 'SEG_NOMBRE'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.NUM_PLANILLA'
      Size = 25
    end
    object qrymcingupcPRI_APELLIDO: TStringField
      FieldName = 'PRI_APELLIDO'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.NUM_PLANILLA'
      Size = 25
    end
    object qrymcingupcSEG_APELLIDO: TStringField
      FieldName = 'SEG_APELLIDO'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.NUM_PLANILLA'
      Size = 25
    end
    object qrymcingupcFEC_NACIMIENTO: TDateTimeField
      FieldName = 'FEC_NACIMIENTO'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.NUM_PLANILLA'
    end
    object qrymcingupcFEC_AFILIACION_SIS: TDateTimeField
      FieldName = 'FEC_AFILIACION_SIS'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.NUM_PLANILLA'
    end
    object qrymcingupcFEC_AFILIACION_UNI: TDateTimeField
      FieldName = 'FEC_AFILIACION_UNI'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.NUM_PLANILLA'
    end
    object qrymcingupcEPS_TIP_DOC: TStringField
      FieldName = 'EPS_TIP_DOC'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.NUM_PLANILLA'
      FixedChar = True
      Size = 3
    end
    object qrymcingupcEPS_NUM_DOC: TStringField
      FieldName = 'EPS_NUM_DOC'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.NUM_PLANILLA'
      Size = 18
    end
    object qrymcingupcCOD_DEPARTAMENTO_RES: TStringField
      FieldName = 'COD_DEPARTAMENTO_RES'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.NUM_PLANILLA'
      Size = 2
    end
    object qrymcingupcCOD_CIUDAD_RES: TStringField
      FieldName = 'COD_CIUDAD_RES'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.NUM_PLANILLA'
      Size = 3
    end
    object qrymcingupcCOD_BARRIO_RES: TStringField
      FieldName = 'COD_BARRIO_RES'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.NUM_PLANILLA'
      FixedChar = True
      Size = 3
    end
    object qrymcingupcCOD_ZONA: TStringField
      FieldName = 'COD_ZONA'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.NUM_PLANILLA'
      Size = 3
    end
    object qrymcingupcACE_TIP_DOC: TStringField
      FieldName = 'ACE_TIP_DOC'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.NUM_PLANILLA'
      FixedChar = True
      Size = 3
    end
    object qrymcingupcACE_NUMERO_DOC: TStringField
      FieldName = 'ACE_NUMERO_DOC'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.NUM_PLANILLA'
      Size = 18
    end
    object qrymcingupcCOD_DISCAPACIDAD: TStringField
      FieldName = 'COD_DISCAPACIDAD'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.NUM_PLANILLA'
      FixedChar = True
      Size = 1
    end
    object qrymcingupcNUM_SEMANA_COTIZA: TFloatField
      FieldName = 'NUM_SEMANA_COTIZA'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.NUM_PLANILLA'
    end
    object qrymcingupcFEC_RADICACION: TDateTimeField
      FieldName = 'FEC_RADICACION'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.NUM_PLANILLA'
    end
    object qrymcingupcNUM_FORMATO_AFIL: TStringField
      FieldName = 'NUM_FORMATO_AFIL'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.NUM_PLANILLA'
      FixedChar = True
      Size = 10
    end
    object qrymcingupcDIR_AFILIADO_RES: TStringField
      FieldName = 'DIR_AFILIADO_RES'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.NUM_PLANILLA'
      FixedChar = True
      Size = 50
    end
    object qrymcingupcTEL_AFILIADO_RES: TStringField
      FieldName = 'TEL_AFILIADO_RES'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.NUM_PLANILLA'
      FixedChar = True
    end
    object qrymcingupcTEL_AFILIADO_RES2: TStringField
      FieldName = 'TEL_AFILIADO_RES2'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.NUM_PLANILLA'
      FixedChar = True
    end
    object qrymcingupcCEL_AFILIADO: TStringField
      FieldName = 'CEL_AFILIADO'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.NUM_PLANILLA'
      FixedChar = True
    end
    object qrymcingupcEML_AFILIADO: TStringField
      FieldName = 'EML_AFILIADO'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.NUM_PLANILLA'
      FixedChar = True
      Size = 50
    end
    object qrymcingupcFEC_ULTIMA_NOV: TDateTimeField
      FieldName = 'FEC_ULTIMA_NOV'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.NUM_PLANILLA'
    end
    object qrymcingupcTIP_DOCUMENTO_IPS: TStringField
      FieldName = 'TIP_DOCUMENTO_IPS'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.NUM_PLANILLA'
      Size = 3
    end
    object qrymcingupcNUM_DOCUMENTO_IPS: TStringField
      FieldName = 'NUM_DOCUMENTO_IPS'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.NUM_PLANILLA'
      FixedChar = True
      Size = 18
    end
    object qrymcingupcTIP_DOCUMENTO_MED: TStringField
      FieldName = 'TIP_DOCUMENTO_MED'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.NUM_PLANILLA'
      Size = 3
    end
    object qrymcingupcNUM_DOCUMENTO_MED: TStringField
      FieldName = 'NUM_DOCUMENTO_MED'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.NUM_PLANILLA'
      FixedChar = True
      Size = 18
    end
    object qrymcingupcTIP_DOCUMENTO_ODO: TStringField
      FieldName = 'TIP_DOCUMENTO_ODO'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.NUM_PLANILLA'
      Size = 3
    end
    object qrymcingupcNUM_DOCUMENTO_ODO: TStringField
      FieldName = 'NUM_DOCUMENTO_ODO'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.NUM_PLANILLA'
      FixedChar = True
      Size = 18
    end
    object qrymcingupcTIP_DOCUMENTO_COT: TStringField
      FieldName = 'TIP_DOCUMENTO_COT'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.TIP_DOCUMENTO_COT'
      Size = 3
    end
    object qrymcingupcNUM_DOCUMENTO_COT: TStringField
      FieldName = 'NUM_DOCUMENTO_COT'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.NUM_DOCUMENTO_COT'
      Size = 18
    end
    object qrymcingupcEMP_TIPO_DOC: TStringField
      FieldName = 'EMP_TIPO_DOC'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.EMP_TIPO_DOC'
      Size = 3
    end
    object qrymcingupcEMP_NUMERO_DOC: TStringField
      FieldName = 'EMP_NUMERO_DOC'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.EMP_NUMERO_DOC'
      Size = 15
    end
    object qrymcingupcID_MULTIAFILIADO: TStringField
      FieldName = 'ID_MULTIAFILIADO'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.ID_MULTIAFILIADO'
      Size = 9
    end
    object qrymcingupcCAUSA: TStringField
      FieldName = 'CAUSA'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.CAUSA'
      Size = 30
    end
    object qrymcingupcVAL_UPC: TFloatField
      FieldName = 'VAL_UPC'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.VAL_UPC'
    end
    object qrymcingupcEST_MULTIAFILIADO: TStringField
      FieldName = 'EST_MULTIAFILIADO'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.EST_MULTIAFILIADO'
      Size = 3
    end
    object qrymcingupcNUM_DECLARACION_ANT: TFloatField
      FieldName = 'NUM_DECLARACION_ANT'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.NUM_DECLARACION_ANT'
    end
    object qrymcingupcSEM_COTIZACION: TFloatField
      FieldName = 'SEM_COTIZACION'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.NUM_DECLARACION_ANT'
    end
  end
  object qrymcingciu: TQuery
    DatabaseName = 'softeps'
    RequestLive = True
    SQL.Strings = (
      'SELECT VALOR_UPC FROM CIUDADES '
      'WHERE COD_DEPARTAMENTO = :cod_departamento'
      '      AND COD_CIUDAD = :cod_ciudad')
    Left = 229
    Top = 10
    ParamData = <
      item
        DataType = ftString
        Name = 'cod_departamento'
        ParamType = ptInputOutput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'cod_ciudad'
        ParamType = ptInputOutput
        Value = ''
      end>
    object qrymcingciuVALOR_UPC: TFloatField
      FieldName = 'VALOR_UPC'
      Origin = 'SOFTEPS.CIUDADES.VALOR_UPC'
    end
  end
  object qrymcidduplica: TQuery
    DatabaseName = 'softeps'
    RequestLive = True
    SQL.Strings = (
      'SELECT * FROM AFILIADOS_COMPENSADOS '
      'WHERE AFI_TIPO_DOC = :tp_doc'
      '      AND AFI_NUMERO_DOC = :nm_doc'
      '      AND NUM_DECLARACION = :nm_dec'
      '')
    Left = 229
    Top = 10
    ParamData = <
      item
        DataType = ftString
        Name = 'tp_doc'
        ParamType = ptInputOutput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'nm_doc'
        ParamType = ptInputOutput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'nm_dec'
        ParamType = ptInputOutput
        Value = 0
      end>
    object qrymcidduplicaAFI_NUMERO_DOC: TStringField
      FieldName = 'AFI_NUMERO_DOC'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.AFI_NUMERO_DOC'
      Size = 18
    end
    object qrymcidduplicaAFI_TIPO_DOC: TStringField
      FieldName = 'AFI_TIPO_DOC'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.AFI_TIPO_DOC'
      Size = 3
    end
    object qrymcidduplicaNUM_DECLARACION: TFloatField
      FieldName = 'NUM_DECLARACION'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.NUM_DECLARACION'
    end
    object qrymcidduplicaCOD_GRUPO_ETAREO: TFloatField
      FieldName = 'COD_GRUPO_ETAREO'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.COD_GRUPO_ETAREO'
    end
    object qrymcidduplicaTIP_UPC: TStringField
      FieldName = 'TIP_UPC'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.TIP_UPC'
      Size = 1
    end
    object qrymcidduplicaTIP_PAGO: TStringField
      FieldName = 'TIP_PAGO'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.TIP_PAGO'
      Size = 1
    end
    object qrymcidduplicaTIP_BENEFICIARIO: TStringField
      FieldName = 'TIP_BENEFICIARIO'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.TIP_BENEFICIARIO'
      Size = 1
    end
    object qrymcidduplicaDIAS: TStringField
      FieldName = 'DIAS'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.DIAS'
      Size = 2
    end
    object qrymcidduplicaSALARIO: TFloatField
      FieldName = 'SALARIO'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.SALARIO'
    end
    object qrymcidduplicaPORCENTAJE: TStringField
      FieldName = 'PORCENTAJE'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.PORCENTAJE'
      Size = 2
    end
    object qrymcidduplicaCOTIZACION: TFloatField
      FieldName = 'COTIZACION'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.COTIZACION'
    end
    object qrymcidduplicaVAL_DEDUCCION: TFloatField
      FieldName = 'VAL_DEDUCCION'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.VAL_DEDUCCION'
    end
    object qrymcidduplicaTIP_DEDUCCION: TStringField
      FieldName = 'TIP_DEDUCCION'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.TIP_DEDUCCION'
      Size = 3
    end
    object qrymcidduplicaVALOR_UPC: TFloatField
      FieldName = 'VALOR_UPC'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.VALOR_UPC'
    end
    object qrymcidduplicaTIP_AFILIADO: TStringField
      FieldName = 'TIP_AFILIADO'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.TIP_AFILIADO'
      Size = 1
    end
    object qrymcidduplicaFEC_CONSIGNACION: TDateTimeField
      FieldName = 'FEC_CONSIGNACION'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.FEC_CONSIGNACION'
    end
    object qrymcidduplicaCOD_PARENTESCO: TStringField
      FieldName = 'COD_PARENTESCO'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.COD_PARENTESCO'
      Size = 3
    end
    object qrymcidduplicaNUM_PLANILLA: TStringField
      FieldName = 'NUM_PLANILLA'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.NUM_PLANILLA'
      Size = 15
    end
    object qrymcidduplicaTIP_DOCUMENTO_COT: TStringField
      FieldName = 'TIP_DOCUMENTO_COT'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.TIP_DOCUMENTO_COT'
      Size = 3
    end
    object qrymcidduplicaNUM_DOCUMENTO_COT: TStringField
      FieldName = 'NUM_DOCUMENTO_COT'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.NUM_DOCUMENTO_COT'
      Size = 18
    end
    object qrymcidduplicaEMP_TIPO_DOC: TStringField
      FieldName = 'EMP_TIPO_DOC'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.EMP_TIPO_DOC'
      Size = 3
    end
    object qrymcidduplicaEMP_NUMERO_DOC: TStringField
      FieldName = 'EMP_NUMERO_DOC'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.EMP_NUMERO_DOC'
      Size = 15
    end
    object qrymcidduplicaID_MULTIAFILIADO: TStringField
      FieldName = 'ID_MULTIAFILIADO'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.ID_MULTIAFILIADO'
      Size = 9
    end
    object qrymcidduplicaCAUSA: TStringField
      FieldName = 'CAUSA'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.CAUSA'
      Size = 30
    end
    object qrymcidduplicaVAL_UPC: TFloatField
      FieldName = 'VAL_UPC'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.VAL_UPC'
    end
  end
  object qrymcvalupc: TQuery
    DatabaseName = 'softeps'
    RequestLive = True
    SQL.Strings = (
      'SELECT VAL_UPC FROM AFILIADOS_COMPENSADOS '
      'WHERE NUM_DECLARACION = :dec'
      '      AND AFI_TIPO_DOC = :tp_doc '
      '      AND AFI_NUMERO_DOC = :nm_doc '
      '')
    Left = 229
    Top = 10
    ParamData = <
      item
        DataType = ftString
        Name = 'dec'
        ParamType = ptInputOutput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'tp_doc'
        ParamType = ptInputOutput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'nm_doc'
        ParamType = ptInputOutput
        Value = ''
      end>
    object qrymcvalupcVAL_UPC: TFloatField
      FieldName = 'VAL_UPC'
      Origin = 'DBO.AFILIADOS_COMPENSADOS.VAL_UPC'
    end
  end
  object qrymcbasesdecalculo3: TQuery
    DatabaseName = 'softeps'
    RequestLive = True
    SQL.Strings = (
      'SELECT * FROM BASES_DE_CALCULO'
      'WHERE NUM_DECLARACION >= :dec1'
      '  AND NUM_DECLARACION <= :dec2')
    Left = 229
    Top = 10
    ParamData = <
      item
        DataType = ftString
        Name = 'dec1'
        ParamType = ptInputOutput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'dec2'
        ParamType = ptInputOutput
        Value = ''
      end>
    object qrymcbasesdecalculo3NUM_DECLARACION: TFloatField
      FieldName = 'NUM_DECLARACION'
      Origin = 'SOFTEPS.BASES_DE_CALCULO.NUM_DECLARACION'
    end
    object qrymcbasesdecalculo3COD_GRUPO_ETA: TFloatField
      FieldName = 'COD_GRUPO_ETA'
      Origin = 'SOFTEPS.BASES_DE_CALCULO.COD_GRUPO_ETA'
    end
    object qrymcbasesdecalculo3TOT_COTIZANTES_MCN: TFloatField
      FieldName = 'TOT_COTIZANTES_MCN'
      Origin = 'SOFTEPS.BASES_DE_CALCULO.TOT_COTIZANTES_MCN'
    end
    object qrymcbasesdecalculo3TOT_COTIZANTES_MCE: TFloatField
      FieldName = 'TOT_COTIZANTES_MCE'
      Origin = 'SOFTEPS.BASES_DE_CALCULO.TOT_COTIZANTES_MCE'
    end
    object qrymcbasesdecalculo3TOT_COTIZANTES_MPN: TFloatField
      FieldName = 'TOT_COTIZANTES_MPN'
      Origin = 'SOFTEPS.BASES_DE_CALCULO.TOT_COTIZANTES_MPN'
    end
    object qrymcbasesdecalculo3TOT_COTIZANTES_MPE: TFloatField
      FieldName = 'TOT_COTIZANTES_MPE'
      Origin = 'SOFTEPS.BASES_DE_CALCULO.TOT_COTIZANTES_MPE'
    end
    object qrymcbasesdecalculo3TOT_BENEFICIARIOS_MCN: TFloatField
      FieldName = 'TOT_BENEFICIARIOS_MCN'
      Origin = 'SOFTEPS.BASES_DE_CALCULO.TOT_BENEFICIARIOS_MCN'
    end
    object qrymcbasesdecalculo3TOT_BENEFICIARIOS_MCE: TFloatField
      FieldName = 'TOT_BENEFICIARIOS_MCE'
      Origin = 'SOFTEPS.BASES_DE_CALCULO.TOT_BENEFICIARIOS_MCE'
    end
    object qrymcbasesdecalculo3TOT_BENEFICIARIOS_MPNL: TFloatField
      FieldName = 'TOT_BENEFICIARIOS_MPNL'
      Origin = 'SOFTEPS.BASES_DE_CALCULO.TOT_BENEFICIARIOS_MPNL'
    end
    object qrymcbasesdecalculo3TOT_BENEFICIARIOS_MPE: TFloatField
      FieldName = 'TOT_BENEFICIARIOS_MPE'
      Origin = 'SOFTEPS.BASES_DE_CALCULO.TOT_BENEFICIARIOS_MPE'
    end
    object qrymcbasesdecalculo3TOT_AFILIADOS_MCN: TFloatField
      FieldName = 'TOT_AFILIADOS_MCN'
      Origin = 'SOFTEPS.BASES_DE_CALCULO.TOT_AFILIADOS_MCN'
    end
    object qrymcbasesdecalculo3TOT_AFILIADOS_MCE: TFloatField
      FieldName = 'TOT_AFILIADOS_MCE'
      Origin = 'SOFTEPS.BASES_DE_CALCULO.TOT_AFILIADOS_MCE'
    end
    object qrymcbasesdecalculo3TOT_AFILIADOS_MPN: TFloatField
      FieldName = 'TOT_AFILIADOS_MPN'
      Origin = 'SOFTEPS.BASES_DE_CALCULO.TOT_AFILIADOS_MPN'
    end
    object qrymcbasesdecalculo3TOT_AFILIADOS_MPE: TFloatField
      FieldName = 'TOT_AFILIADOS_MPE'
      Origin = 'SOFTEPS.BASES_DE_CALCULO.TOT_AFILIADOS_MPE'
    end
    object qrymcbasesdecalculo3TOT_AFILIADOS_UPCNORMAL: TFloatField
      FieldName = 'TOT_AFILIADOS_UPCNORMAL'
      Origin = 'SOFTEPS.BASES_DE_CALCULO.TOT_AFILIADOS_UPCNORMAL'
    end
    object qrymcbasesdecalculo3TOT_AFILIADOS_UPCESPECIAL: TFloatField
      FieldName = 'TOT_AFILIADOS_UPCESPECIAL'
      Origin = 'SOFTEPS.BASES_DE_CALCULO.TOT_AFILIADOS_UPCESPECIAL'
    end
    object qrymcbasesdecalculo3TOT_DIAS_COTZNN: TFloatField
      FieldName = 'TOT_DIAS_COTZNN'
      Origin = 'SOFTEPS.BASES_DE_CALCULO.TOT_DIAS_COTZNN'
    end
    object qrymcbasesdecalculo3TOT_DIAS_COTIZE: TFloatField
      FieldName = 'TOT_DIAS_COTIZE'
      Origin = 'SOFTEPS.BASES_DE_CALCULO.TOT_DIAS_COTIZE'
    end
    object qrymcbasesdecalculo3TOT_UPC_DZN: TFloatField
      FieldName = 'TOT_UPC_DZN'
      Origin = 'SOFTEPS.BASES_DE_CALCULO.TOT_UPC_DZN'
    end
    object qrymcbasesdecalculo3TOT_UPC_DZE: TFloatField
      FieldName = 'TOT_UPC_DZE'
      Origin = 'SOFTEPS.BASES_DE_CALCULO.TOT_UPC_DZE'
    end
    object qrymcbasesdecalculo3TOT_VALOR_UPC: TFloatField
      FieldName = 'TOT_VALOR_UPC'
      Origin = 'SOFTEPS.BASES_DE_CALCULO.TOT_VALOR_UPC'
    end
  end
  object qrymcbasesdep3: TQuery
    DatabaseName = 'softeps'
    RequestLive = True
    SQL.Strings = (
      'SELECT * FROM BASES_DE_CALCULO_DEP'
      'WHERE NUM_DECLARACION >= :dec1'
      'AND NUM_DECLARACION <= :dec2'
      '')
    Left = 229
    Top = 10
    ParamData = <
      item
        DataType = ftString
        Name = 'dec1'
        ParamType = ptInputOutput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'dec2'
        ParamType = ptInputOutput
        Value = ''
      end>
    object qrymcbasesdep3NUM_DECLARACION: TFloatField
      FieldName = 'NUM_DECLARACION'
      Origin = 'SOFTEPS.BASES_DE_CALCULO_DEP.NUM_DECLARACION'
    end
    object qrymcbasesdep3COD_GRUPO_ETA: TFloatField
      FieldName = 'COD_GRUPO_ETA'
      Origin = 'SOFTEPS.BASES_DE_CALCULO_DEP.COD_GRUPO_ETA'
    end
    object qrymcbasesdep3TOT_DEPENDIENTES: TFloatField
      FieldName = 'TOT_DEPENDIENTES'
      Origin = 'SOFTEPS.BASES_DE_CALCULO_DEP.TOT_DEPENDIENTES'
    end
    object qrymcbasesdep3VAL_UPC_DEPENDIENTES: TFloatField
      FieldName = 'VAL_UPC_DEPENDIENTES'
      Origin = 'SOFTEPS.BASES_DE_CALCULO_DEP.VAL_UPC_DEPENDIENTES'
    end
    object qrymcbasesdep3VAL_PROMOCION: TFloatField
      FieldName = 'VAL_PROMOCION'
      Origin = 'SOFTEPS.BASES_DE_CALCULO_DEP.VAL_PROMOCION'
    end
    object qrymcbasesdep3VAL_SOLIDARIDAD: TFloatField
      FieldName = 'VAL_SOLIDARIDAD'
      Origin = 'SOFTEPS.BASES_DE_CALCULO_DEP.VAL_SOLIDARIDAD'
    end
  end
  object qrymcliquidacion3: TQuery
    DatabaseName = 'softeps'
    RequestLive = True
    SQL.Strings = (
      'SELECT * FROM LIQUIDACION_COMPENSACION'
      'WHERE NUM_DECLARACION >= :dec1'
      'AND NUM_DECLARACION <= :dec2')
    Left = 229
    Top = 10
    ParamData = <
      item
        DataType = ftString
        Name = 'dec1'
        ParamType = ptInputOutput
        Value = 0
      end
      item
        DataType = ftString
        Name = 'dec2'
        ParamType = ptInputOutput
        Value = 0
      end>
    object qrymcliquidacion3NUM_DECLARACION: TFloatField
      FieldName = 'NUM_DECLARACION'
      Origin = 'SOFTEPS.LIQUIDACION_COMPENSACION.NUM_DECLARACION'
    end
    object qrymcliquidacion3ING_SALBASE_COTIZ12: TFloatField
      FieldName = 'ING_SALBASE_COTIZ12'
      Origin = 'SOFTEPS.LIQUIDACION_COMPENSACION.ING_SALBASE_COTIZ12'
    end
    object qrymcliquidacion3ING_SALBASE_COTIZ8: TFloatField
      FieldName = 'ING_SALBASE_COTIZ8'
      Origin = 'SOFTEPS.LIQUIDACION_COMPENSACION.ING_SALBASE_COTIZ8'
    end
    object qrymcliquidacion3VAL_TOTAL_RECA12: TFloatField
      FieldName = 'VAL_TOTAL_RECA12'
      Origin = 'SOFTEPS.LIQUIDACION_COMPENSACION.VAL_TOTAL_RECA12'
    end
    object qrymcliquidacion3VAL_TOTAL_RECA8: TFloatField
      FieldName = 'VAL_TOTAL_RECA8'
      Origin = 'SOFTEPS.LIQUIDACION_COMPENSACION.VAL_TOTAL_RECA8'
    end
    object qrymcliquidacion3VAL_DEDUCIDO_AUT12: TFloatField
      FieldName = 'VAL_DEDUCIDO_AUT12'
      Origin = 'SOFTEPS.LIQUIDACION_COMPENSACION.VAL_DEDUCIDO_AUT12'
    end
    object qrymcliquidacion3VAL_DEDUCIDO_AUT8: TFloatField
      FieldName = 'VAL_DEDUCIDO_AUT8'
      Origin = 'SOFTEPS.LIQUIDACION_COMPENSACION.VAL_DEDUCIDO_AUT8'
    end
    object qrymcliquidacion3VAL_TOTAL_COTIZ12: TFloatField
      FieldName = 'VAL_TOTAL_COTIZ12'
      Origin = 'SOFTEPS.LIQUIDACION_COMPENSACION.VAL_TOTAL_COTIZ12'
    end
    object qrymcliquidacion3VAL_TOTAL_COTIZ8: TFloatField
      FieldName = 'VAL_TOTAL_COTIZ8'
      Origin = 'SOFTEPS.LIQUIDACION_COMPENSACION.VAL_TOTAL_COTIZ8'
    end
    object qrymcliquidacion3VAL_SOLIDARIDAD_12: TFloatField
      FieldName = 'VAL_SOLIDARIDAD_12'
      Origin = 'SOFTEPS.LIQUIDACION_COMPENSACION.VAL_SOLIDARIDAD_12'
    end
    object qrymcliquidacion3VAL_SOLIDARIDAD_8: TFloatField
      FieldName = 'VAL_SOLIDARIDAD_8'
      Origin = 'SOFTEPS.LIQUIDACION_COMPENSACION.VAL_SOLIDARIDAD_8'
    end
    object qrymcliquidacion3VAL_PYP12: TFloatField
      FieldName = 'VAL_PYP12'
      Origin = 'SOFTEPS.LIQUIDACION_COMPENSACION.VAL_PYP12'
    end
    object qrymcliquidacion3VAL_PYP8: TFloatField
      FieldName = 'VAL_PYP8'
      Origin = 'SOFTEPS.LIQUIDACION_COMPENSACION.VAL_PYP8'
    end
    object qrymcliquidacion3PRO_INCAPACIDADES12: TFloatField
      FieldName = 'PRO_INCAPACIDADES12'
      Origin = 'SOFTEPS.LIQUIDACION_COMPENSACION.PRO_INCAPACIDADES12'
    end
    object qrymcliquidacion3PRO_INCAPACIDADES8: TFloatField
      FieldName = 'PRO_INCAPACIDADES8'
      Origin = 'SOFTEPS.LIQUIDACION_COMPENSACION.PRO_INCAPACIDADES8'
    end
    object qrymcliquidacion3VAL_COTIZACION_NET12: TFloatField
      FieldName = 'VAL_COTIZACION_NET12'
      Origin = 'SOFTEPS.LIQUIDACION_COMPENSACION.VAL_COTIZACION_NET12'
    end
    object qrymcliquidacion3VAL_COTIZACION_NET8: TFloatField
      FieldName = 'VAL_COTIZACION_NET8'
      Origin = 'SOFTEPS.LIQUIDACION_COMPENSACION.VAL_COTIZACION_NET8'
    end
    object qrymcliquidacion3VAL_LINCENCIAS_MAT12: TFloatField
      FieldName = 'VAL_LINCENCIAS_MAT12'
      Origin = 'SOFTEPS.LIQUIDACION_COMPENSACION.VAL_LINCENCIAS_MAT12'
    end
    object qrymcliquidacion3VAL_LICENCIAS_MAT8: TFloatField
      FieldName = 'VAL_LICENCIAS_MAT8'
      Origin = 'SOFTEPS.LIQUIDACION_COMPENSACION.VAL_LICENCIAS_MAT8'
    end
    object qrymcliquidacion3VAL_RECONOCER_UPC12: TFloatField
      FieldName = 'VAL_RECONOCER_UPC12'
      Origin = 'SOFTEPS.LIQUIDACION_COMPENSACION.VAL_RECONOCER_UPC12'
    end
    object qrymcliquidacion3VAL_RECONOCER_UPC8: TFloatField
      FieldName = 'VAL_RECONOCER_UPC8'
      Origin = 'SOFTEPS.LIQUIDACION_COMPENSACION.VAL_RECONOCER_UPC8'
    end
    object qrymcliquidacion3VAL_PAGCOBRAR_FSG12: TFloatField
      FieldName = 'VAL_PAGCOBRAR_FSG12'
      Origin = 'SOFTEPS.LIQUIDACION_COMPENSACION.VAL_PAGCOBRAR_FSG12'
    end
    object qrymcliquidacion3VAL_PAGCOBRAR_FSG8: TFloatField
      FieldName = 'VAL_PAGCOBRAR_FSG8'
      Origin = 'SOFTEPS.LIQUIDACION_COMPENSACION.VAL_PAGCOBRAR_FSG8'
    end
    object qrymcliquidacion3TOT_SUBCUENTA_COMP12: TFloatField
      FieldName = 'TOT_SUBCUENTA_COMP12'
      Origin = 'SOFTEPS.LIQUIDACION_COMPENSACION.TOT_SUBCUENTA_COMP12'
    end
    object qrymcliquidacion3TOT_SUBCUENTA_COMP8: TFloatField
      FieldName = 'TOT_SUBCUENTA_COMP8'
      Origin = 'SOFTEPS.LIQUIDACION_COMPENSACION.TOT_SUBCUENTA_COMP8'
    end
    object qrymcliquidacion3VAL_PROMOCION: TFloatField
      FieldName = 'VAL_PROMOCION'
      Origin = 'SOFTEPS.LIQUIDACION_COMPENSACION.VAL_PROMOCION'
    end
    object qrymcliquidacion3REC_PROMOCION: TFloatField
      FieldName = 'REC_PROMOCION'
      Origin = 'SOFTEPS.LIQUIDACION_COMPENSACION.REC_PROMOCION'
    end
    object qrymcliquidacion3SAL_COMPENSAR_PROM: TFloatField
      FieldName = 'SAL_COMPENSAR_PROM'
      Origin = 'SOFTEPS.LIQUIDACION_COMPENSACION.SAL_COMPENSAR_PROM'
    end
    object qrymcliquidacion3FEC_CONSIGNACION_SOLID: TDateTimeField
      FieldName = 'FEC_CONSIGNACION_SOLID'
      Origin = 'SOFTEPS.LIQUIDACION_COMPENSACION.FEC_CONSIGNACION_SOLID'
    end
    object qrymcliquidacion3VAL_CONSIGNACION_SOLID: TFloatField
      FieldName = 'VAL_CONSIGNACION_SOLID'
      Origin = 'SOFTEPS.LIQUIDACION_COMPENSACION.VAL_CONSIGNACION_SOLID'
    end
    object qrymcliquidacion3FEC_CONSIGNACION_PRO: TDateTimeField
      FieldName = 'FEC_CONSIGNACION_PRO'
      Origin = 'SOFTEPS.LIQUIDACION_COMPENSACION.FEC_CONSIGNACION_PRO'
    end
    object qrymcliquidacion3VAL_CONSIGNACION_PROMOCION: TFloatField
      FieldName = 'VAL_CONSIGNACION_PROMOCION'
      Origin = 'SOFTEPS.LIQUIDACION_COMPENSACION.VAL_CONSIGNACION_PROMOCION'
    end
    object qrymcliquidacion3FEC_CONSIGNACION_COMP: TDateTimeField
      FieldName = 'FEC_CONSIGNACION_COMP'
      Origin = 'SOFTEPS.LIQUIDACION_COMPENSACION.FEC_CONSIGNACION_COMP'
    end
    object qrymcliquidacion3VAL_CONSIGNADO_COMP: TFloatField
      FieldName = 'VAL_CONSIGNADO_COMP'
      Origin = 'SOFTEPS.LIQUIDACION_COMPENSACION.VAL_CONSIGNADO_COMP'
    end
    object qrymcliquidacion3NUM_AGREGADOS: TFloatField
      FieldName = 'NUM_AGREGADOS'
      Origin = 'SOFTEPS.LIQUIDACION_COMPENSACION.NUM_AGREGADOS'
    end
    object qrymcliquidacion3VAL_UPC_AGREG: TFloatField
      FieldName = 'VAL_UPC_AGREG'
      Origin = 'SOFTEPS.LIQUIDACION_COMPENSACION.VAL_UPC_AGREG'
    end
    object qrymcliquidacion3VAL_PROMOCION_AGREG: TFloatField
      FieldName = 'VAL_PROMOCION_AGREG'
      Origin = 'SOFTEPS.LIQUIDACION_COMPENSACION.VAL_PROMOCION_AGREG'
    end
    object qrymcliquidacion3VA_SOLID_AGREG: TFloatField
      FieldName = 'VA_SOLID_AGREG'
      Origin = 'SOFTEPS.LIQUIDACION_COMPENSACION.VA_SOLID_AGREG'
    end
    object qrymcliquidacion3NUM_AUTOLIQUIDACIONES: TFloatField
      FieldName = 'NUM_AUTOLIQUIDACIONES'
      Origin = 'SOFTEPS.LIQUIDACION_COMPENSACION.NUM_AUTOLIQUIDACIONES'
    end
    object qrymcliquidacion3VAL_PAGO_INCAP: TFloatField
      FieldName = 'VAL_PAGO_INCAP'
      Origin = 'SOFTEPS.LIQUIDACION_COMPENSACION.VAL_PAGO_INCAP'
    end
    object qrymcliquidacion3TOT_COTIZACIONES_NOIDENT: TFloatField
      FieldName = 'TOT_COTIZACIONES_NOIDENT'
      Origin = 'SOFTEPS.LIQUIDACION_COMPENSACION.TOT_COTIZACIONES_NOIDENT'
    end
    object qrymcliquidacion3NUM_TOT_AFIL: TFloatField
      FieldName = 'NUM_TOT_AFIL'
      Origin = 'SOFTEPS.LIQUIDACION_COMPENSACION.NUM_TOT_AFIL'
    end
    object qrymcliquidacion3NUM_TOTAL_COTIZ8: TFloatField
      FieldName = 'NUM_TOTAL_COTIZ8'
      Origin = 'SOFTEPS.LIQUIDACION_COMPENSACION.NUM_TOTAL_COTIZ8'
    end
    object qrymcliquidacion3TOT_AFILIADOS_IND: TFloatField
      FieldName = 'TOT_AFILIADOS_IND'
      Origin = 'SOFTEPS.LIQUIDACION_COMPENSACION.TOT_AFILIADOS_IND'
    end
    object qrymcliquidacion3IBC_AFILIADOS_IND: TFloatField
      FieldName = 'IBC_AFILIADOS_IND'
      Origin = 'SOFTEPS.LIQUIDACION_COMPENSACION.IBC_AFILIADOS_IND'
    end
    object qrymcliquidacion3TOT_MADRES_COMU: TFloatField
      FieldName = 'TOT_MADRES_COMU'
      Origin = 'SOFTEPS.LIQUIDACION_COMPENSACION.TOT_MADRES_COMU'
    end
    object qrymcliquidacion3IBC_MADRES_COMU: TFloatField
      FieldName = 'IBC_MADRES_COMU'
      Origin = 'SOFTEPS.LIQUIDACION_COMPENSACION.IBC_MADRES_COMU'
    end
    object qrymcliquidacion3TOT_MADRESCOMU_COMP: TFloatField
      FieldName = 'TOT_MADRESCOMU_COMP'
      Origin = 'SOFTEPS.LIQUIDACION_COMPENSACION.TOT_MADRESCOMU_COMP'
    end
    object qrymcliquidacion3IBC_MADRESCOMU_COMP: TFloatField
      FieldName = 'IBC_MADRESCOMU_COMP'
      Origin = 'SOFTEPS.LIQUIDACION_COMPENSACION.IBC_MADRESCOMU_COMP'
    end
    object qrymcliquidacion3TOT_MIEMBROS_ADICDEP: TFloatField
      FieldName = 'TOT_MIEMBROS_ADICDEP'
      Origin = 'SOFTEPS.LIQUIDACION_COMPENSACION.TOT_MIEMBROS_ADICDEP'
    end
    object qrymcliquidacion3REC_MIEMBROS_ADICDEP: TFloatField
      FieldName = 'REC_MIEMBROS_ADICDEP'
      Origin = 'SOFTEPS.LIQUIDACION_COMPENSACION.REC_MIEMBROS_ADICDEP'
    end
    object qrymcliquidacion3TOT_INCAPACIDADES_PAG: TFloatField
      FieldName = 'TOT_INCAPACIDADES_PAG'
      Origin = 'SOFTEPS.LIQUIDACION_COMPENSACION.TOT_INCAPACIDADES_PAG'
    end
    object qrymcliquidacion3VAL_RECAUDO_BRUT: TFloatField
      FieldName = 'VAL_RECAUDO_BRUT'
      Origin = 'SOFTEPS.LIQUIDACION_COMPENSACION.VAL_RECAUDO_BRUT'
    end
    object qrymcliquidacion3VAL_LICENCIAAS_PAG: TFloatField
      FieldName = 'VAL_LICENCIAAS_PAG'
      Origin = 'SOFTEPS.LIQUIDACION_COMPENSACION.VAL_LICENCIAAS_PAG'
    end
    object qrymcliquidacion3VAL_APORTES_NETO: TFloatField
      FieldName = 'VAL_APORTES_NETO'
      Origin = 'SOFTEPS.LIQUIDACION_COMPENSACION.VAL_APORTES_NETO'
    end
    object qrymcliquidacion3REC_ACUMULADO_PER_COMP: TFloatField
      FieldName = 'REC_ACUMULADO_PER_COMP'
      Origin = 'SOFTEPS.LIQUIDACION_COMPENSACION.REC_ACUMULADO_PER_COMP'
    end
    object qrymcliquidacion3VAL_RECONOCER_PYP: TFloatField
      FieldName = 'VAL_RECONOCER_PYP'
      Origin = 'SOFTEPS.LIQUIDACION_COMPENSACION.VAL_RECONOCER_PYP'
    end
  end
  object qrymcdecaficom1: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      'SELECT * FROM DECLARACIONES, AFILIADOS_COMPENSADOS '
      'WHERE FECHA_DECLARACION = :fecha_dec'
      
        'AND DECLARACIONES.NUM_DECLARACION = AFILIADOS_COMPENSADOS.NUM_DE' +
        'CLARACION'
      
        'AND (AFILIADOS_COMPENSADOS.ID_MULTIAFILIADO IS NULL OR AFILIADOS' +
        '_COMPENSADOS.ID_MULTIAFILIADO = '#39'SOL'#39')'
      'ORDER BY DECLARACIONES.NUM_DECLARACION')
    Left = 229
    Top = 10
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'fecha_dec'
        ParamType = ptInputOutput
        Value = 0d
      end>
    object qrymcdecaficom1NUM_DECLARACION: TFloatField
      FieldName = 'NUM_DECLARACION'
      Origin = 'SOFTEPS.DECLARACIONES.NUM_DECLARACION'
    end
    object qrymcdecaficom1COT_TIPO_DECLA: TFloatField
      FieldName = 'COT_TIPO_DECLA'
      Origin = 'SOFTEPS.DECLARACIONES.COT_TIPO_DECLA'
    end
    object qrymcdecaficom1PERIODO_COMPENSADO: TStringField
      FieldName = 'PERIODO_COMPENSADO'
      Origin = 'SOFTEPS.DECLARACIONES.PERIODO_COMPENSADO'
      Size = 10
    end
    object qrymcdecaficom1FECHA_DECLARACION: TDateTimeField
      FieldName = 'FECHA_DECLARACION'
      Origin = 'SOFTEPS.DECLARACIONES.FECHA_DECLARACION'
    end
    object qrymcdecaficom1TIPO_CIERRE: TStringField
      FieldName = 'TIPO_CIERRE'
      Origin = 'SOFTEPS.DECLARACIONES.TIPO_CIERRE'
      Size = 1
    end
    object qrymcdecaficom1NUM_DECLARATIVA: TFloatField
      FieldName = 'NUM_DECLARATIVA'
      Origin = 'SOFTEPS.DECLARACIONES.NUM_DECLARATIVA'
    end
    object qrymcdecaficom1AFI_NUMERO_DOC: TStringField
      FieldName = 'AFI_NUMERO_DOC'
      Origin = 'SOFTEPS.DECLARACIONES.NUM_DECLARATIVA'
      Size = 18
    end
    object qrymcdecaficom1AFI_TIPO_DOC: TStringField
      FieldName = 'AFI_TIPO_DOC'
      Origin = 'SOFTEPS.DECLARACIONES.NUM_DECLARATIVA'
      Size = 3
    end
    object qrymcdecaficom1NUM_DECLARACION_1: TFloatField
      FieldName = 'NUM_DECLARACION_1'
      Origin = 'SOFTEPS.DECLARACIONES.NUM_DECLARATIVA'
    end
    object qrymcdecaficom1COD_GRUPO_ETAREO: TFloatField
      FieldName = 'COD_GRUPO_ETAREO'
      Origin = 'SOFTEPS.DECLARACIONES.NUM_DECLARATIVA'
    end
    object qrymcdecaficom1TIP_UPC: TStringField
      FieldName = 'TIP_UPC'
      Origin = 'SOFTEPS.DECLARACIONES.NUM_DECLARATIVA'
      Size = 1
    end
    object qrymcdecaficom1TIP_PAGO: TStringField
      FieldName = 'TIP_PAGO'
      Origin = 'SOFTEPS.DECLARACIONES.NUM_DECLARATIVA'
      Size = 1
    end
    object qrymcdecaficom1TIP_BENEFICIARIO: TStringField
      FieldName = 'TIP_BENEFICIARIO'
      Origin = 'SOFTEPS.DECLARACIONES.NUM_DECLARATIVA'
      Size = 1
    end
    object qrymcdecaficom1DIAS: TStringField
      FieldName = 'DIAS'
      Origin = 'SOFTEPS.DECLARACIONES.NUM_DECLARATIVA'
      Size = 2
    end
    object qrymcdecaficom1SALARIO: TFloatField
      FieldName = 'SALARIO'
      Origin = 'SOFTEPS.DECLARACIONES.NUM_DECLARATIVA'
    end
    object qrymcdecaficom1PORCENTAJE: TStringField
      FieldName = 'PORCENTAJE'
      Origin = 'SOFTEPS.DECLARACIONES.NUM_DECLARATIVA'
      Size = 2
    end
    object qrymcdecaficom1COTIZACION: TFloatField
      FieldName = 'COTIZACION'
      Origin = 'SOFTEPS.DECLARACIONES.NUM_DECLARATIVA'
    end
    object qrymcdecaficom1VAL_DEDUCCION: TFloatField
      FieldName = 'VAL_DEDUCCION'
      Origin = 'SOFTEPS.DECLARACIONES.NUM_DECLARATIVA'
    end
    object qrymcdecaficom1TIP_DEDUCCION: TStringField
      FieldName = 'TIP_DEDUCCION'
      Origin = 'SOFTEPS.DECLARACIONES.NUM_DECLARATIVA'
      Size = 3
    end
    object qrymcdecaficom1VALOR_UPC: TFloatField
      FieldName = 'VALOR_UPC'
      Origin = 'SOFTEPS.DECLARACIONES.NUM_DECLARATIVA'
    end
    object qrymcdecaficom1TIP_AFILIADO: TStringField
      FieldName = 'TIP_AFILIADO'
      Origin = 'SOFTEPS.DECLARACIONES.NUM_DECLARATIVA'
      Size = 1
    end
    object qrymcdecaficom1FEC_CONSIGNACION: TDateTimeField
      FieldName = 'FEC_CONSIGNACION'
      Origin = 'SOFTEPS.DECLARACIONES.NUM_DECLARATIVA'
    end
    object qrymcdecaficom1COD_PARENTESCO: TStringField
      FieldName = 'COD_PARENTESCO'
      Origin = 'SOFTEPS.DECLARACIONES.NUM_DECLARATIVA'
      Size = 3
    end
    object qrymcdecaficom1NUM_PLANILLA: TStringField
      FieldName = 'NUM_PLANILLA'
      Origin = 'SOFTEPS.DECLARACIONES.NUM_DECLARATIVA'
      Size = 15
    end
    object qrymcdecaficom1TIP_DOCUMENTO_COT: TStringField
      FieldName = 'TIP_DOCUMENTO_COT'
      Origin = 'SOFTEPS.DECLARACIONES.NUM_DECLARATIVA'
      Size = 3
    end
    object qrymcdecaficom1NUM_DOCUMENTO_COT: TStringField
      FieldName = 'NUM_DOCUMENTO_COT'
      Origin = 'SOFTEPS.DECLARACIONES.NUM_DECLARATIVA'
      Size = 18
    end
    object qrymcdecaficom1EMP_TIPO_DOC: TStringField
      FieldName = 'EMP_TIPO_DOC'
      Origin = 'SOFTEPS.DECLARACIONES.NUM_DECLARATIVA'
      Size = 3
    end
    object qrymcdecaficom1EMP_NUMERO_DOC: TStringField
      FieldName = 'EMP_NUMERO_DOC'
      Origin = 'SOFTEPS.DECLARACIONES.NUM_DECLARATIVA'
      Size = 15
    end
    object qrymcdecaficom1ID_MULTIAFILIADO: TStringField
      FieldName = 'ID_MULTIAFILIADO'
      Origin = 'SOFTEPS.DECLARACIONES.NUM_DECLARATIVA'
      Size = 9
    end
    object qrymcdecaficom1CAUSA: TStringField
      FieldName = 'CAUSA'
      Origin = 'SOFTEPS.DECLARACIONES.NUM_DECLARATIVA'
      Size = 30
    end
    object qrymcdecaficom1VAL_UPC: TFloatField
      FieldName = 'VAL_UPC'
      Origin = 'SOFTEPS.DECLARACIONES.NUM_DECLARATIVA'
    end
  end
  object qrymcliquidacion: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      'SELECT * FROM LIQUIDACION_COMPENSACION'
      'WHERE NUM_DECLARACION = :dec')
    Left = 229
    Top = 10
    ParamData = <
      item
        DataType = ftString
        Name = 'dec'
        ParamType = ptInputOutput
        Value = ''
      end>
    object qrymcliquidacionNUM_DECLARACION: TFloatField
      FieldName = 'NUM_DECLARACION'
      Origin = 'SOFTEPS.LIQUIDACION_COMPENSACION.NUM_DECLARACION'
    end
    object qrymcliquidacionING_SALBASE_COTIZ12: TFloatField
      FieldName = 'ING_SALBASE_COTIZ12'
      Origin = 'SOFTEPS.LIQUIDACION_COMPENSACION.ING_SALBASE_COTIZ12'
    end
    object qrymcliquidacionING_SALBASE_COTIZ8: TFloatField
      FieldName = 'ING_SALBASE_COTIZ8'
      Origin = 'SOFTEPS.LIQUIDACION_COMPENSACION.ING_SALBASE_COTIZ8'
    end
    object qrymcliquidacionVAL_TOTAL_RECA12: TFloatField
      FieldName = 'VAL_TOTAL_RECA12'
      Origin = 'SOFTEPS.LIQUIDACION_COMPENSACION.VAL_TOTAL_RECA12'
    end
    object qrymcliquidacionVAL_TOTAL_RECA8: TFloatField
      FieldName = 'VAL_TOTAL_RECA8'
      Origin = 'SOFTEPS.LIQUIDACION_COMPENSACION.VAL_TOTAL_RECA8'
    end
    object qrymcliquidacionVAL_DEDUCIDO_AUT12: TFloatField
      FieldName = 'VAL_DEDUCIDO_AUT12'
      Origin = 'SOFTEPS.LIQUIDACION_COMPENSACION.VAL_DEDUCIDO_AUT12'
    end
    object qrymcliquidacionVAL_DEDUCIDO_AUT8: TFloatField
      FieldName = 'VAL_DEDUCIDO_AUT8'
      Origin = 'SOFTEPS.LIQUIDACION_COMPENSACION.VAL_DEDUCIDO_AUT8'
    end
    object qrymcliquidacionVAL_TOTAL_COTIZ12: TFloatField
      FieldName = 'VAL_TOTAL_COTIZ12'
      Origin = 'SOFTEPS.LIQUIDACION_COMPENSACION.VAL_TOTAL_COTIZ12'
    end
    object qrymcliquidacionVAL_TOTAL_COTIZ8: TFloatField
      FieldName = 'VAL_TOTAL_COTIZ8'
      Origin = 'SOFTEPS.LIQUIDACION_COMPENSACION.VAL_TOTAL_COTIZ8'
    end
    object qrymcliquidacionVAL_SOLIDARIDAD_12: TFloatField
      FieldName = 'VAL_SOLIDARIDAD_12'
      Origin = 'SOFTEPS.LIQUIDACION_COMPENSACION.VAL_SOLIDARIDAD_12'
    end
    object qrymcliquidacionVAL_SOLIDARIDAD_8: TFloatField
      FieldName = 'VAL_SOLIDARIDAD_8'
      Origin = 'SOFTEPS.LIQUIDACION_COMPENSACION.VAL_SOLIDARIDAD_8'
    end
    object qrymcliquidacionVAL_PYP12: TFloatField
      FieldName = 'VAL_PYP12'
      Origin = 'SOFTEPS.LIQUIDACION_COMPENSACION.VAL_PYP12'
    end
    object qrymcliquidacionVAL_PYP8: TFloatField
      FieldName = 'VAL_PYP8'
      Origin = 'SOFTEPS.LIQUIDACION_COMPENSACION.VAL_PYP8'
    end
    object qrymcliquidacionPRO_INCAPACIDADES12: TFloatField
      FieldName = 'PRO_INCAPACIDADES12'
      Origin = 'SOFTEPS.LIQUIDACION_COMPENSACION.PRO_INCAPACIDADES12'
    end
    object qrymcliquidacionPRO_INCAPACIDADES8: TFloatField
      FieldName = 'PRO_INCAPACIDADES8'
      Origin = 'SOFTEPS.LIQUIDACION_COMPENSACION.PRO_INCAPACIDADES8'
    end
    object qrymcliquidacionVAL_COTIZACION_NET12: TFloatField
      FieldName = 'VAL_COTIZACION_NET12'
      Origin = 'SOFTEPS.LIQUIDACION_COMPENSACION.VAL_COTIZACION_NET12'
    end
    object qrymcliquidacionVAL_COTIZACION_NET8: TFloatField
      FieldName = 'VAL_COTIZACION_NET8'
      Origin = 'SOFTEPS.LIQUIDACION_COMPENSACION.VAL_COTIZACION_NET8'
    end
    object qrymcliquidacionVAL_LINCENCIAS_MAT12: TFloatField
      FieldName = 'VAL_LINCENCIAS_MAT12'
      Origin = 'SOFTEPS.LIQUIDACION_COMPENSACION.VAL_LINCENCIAS_MAT12'
    end
    object qrymcliquidacionVAL_LICENCIAS_MAT8: TFloatField
      FieldName = 'VAL_LICENCIAS_MAT8'
      Origin = 'SOFTEPS.LIQUIDACION_COMPENSACION.VAL_LICENCIAS_MAT8'
    end
    object qrymcliquidacionVAL_RECONOCER_UPC12: TFloatField
      FieldName = 'VAL_RECONOCER_UPC12'
      Origin = 'SOFTEPS.LIQUIDACION_COMPENSACION.VAL_RECONOCER_UPC12'
    end
    object qrymcliquidacionVAL_RECONOCER_UPC8: TFloatField
      FieldName = 'VAL_RECONOCER_UPC8'
      Origin = 'SOFTEPS.LIQUIDACION_COMPENSACION.VAL_RECONOCER_UPC8'
    end
    object qrymcliquidacionVAL_PAGCOBRAR_FSG12: TFloatField
      FieldName = 'VAL_PAGCOBRAR_FSG12'
      Origin = 'SOFTEPS.LIQUIDACION_COMPENSACION.VAL_PAGCOBRAR_FSG12'
    end
    object qrymcliquidacionVAL_PAGCOBRAR_FSG8: TFloatField
      FieldName = 'VAL_PAGCOBRAR_FSG8'
      Origin = 'SOFTEPS.LIQUIDACION_COMPENSACION.VAL_PAGCOBRAR_FSG8'
    end
    object qrymcliquidacionTOT_SUBCUENTA_COMP12: TFloatField
      FieldName = 'TOT_SUBCUENTA_COMP12'
      Origin = 'SOFTEPS.LIQUIDACION_COMPENSACION.TOT_SUBCUENTA_COMP12'
    end
    object qrymcliquidacionTOT_SUBCUENTA_COMP8: TFloatField
      FieldName = 'TOT_SUBCUENTA_COMP8'
      Origin = 'SOFTEPS.LIQUIDACION_COMPENSACION.TOT_SUBCUENTA_COMP8'
    end
    object qrymcliquidacionVAL_PROMOCION: TFloatField
      FieldName = 'VAL_PROMOCION'
      Origin = 'SOFTEPS.LIQUIDACION_COMPENSACION.VAL_PROMOCION'
    end
    object qrymcliquidacionREC_PROMOCION: TFloatField
      FieldName = 'REC_PROMOCION'
      Origin = 'SOFTEPS.LIQUIDACION_COMPENSACION.REC_PROMOCION'
    end
    object qrymcliquidacionSAL_COMPENSAR_PROM: TFloatField
      FieldName = 'SAL_COMPENSAR_PROM'
      Origin = 'SOFTEPS.LIQUIDACION_COMPENSACION.SAL_COMPENSAR_PROM'
    end
    object qrymcliquidacionFEC_CONSIGNACION_SOLID: TDateTimeField
      FieldName = 'FEC_CONSIGNACION_SOLID'
      Origin = 'SOFTEPS.LIQUIDACION_COMPENSACION.FEC_CONSIGNACION_SOLID'
    end
    object qrymcliquidacionVAL_CONSIGNACION_SOLID: TFloatField
      FieldName = 'VAL_CONSIGNACION_SOLID'
      Origin = 'SOFTEPS.LIQUIDACION_COMPENSACION.VAL_CONSIGNACION_SOLID'
    end
    object qrymcliquidacionFEC_CONSIGNACION_PRO: TDateTimeField
      FieldName = 'FEC_CONSIGNACION_PRO'
      Origin = 'SOFTEPS.LIQUIDACION_COMPENSACION.FEC_CONSIGNACION_PRO'
    end
    object qrymcliquidacionVAL_CONSIGNACION_PROMOCION: TFloatField
      FieldName = 'VAL_CONSIGNACION_PROMOCION'
      Origin = 'SOFTEPS.LIQUIDACION_COMPENSACION.VAL_CONSIGNACION_PROMOCION'
    end
    object qrymcliquidacionFEC_CONSIGNACION_COMP: TDateTimeField
      FieldName = 'FEC_CONSIGNACION_COMP'
      Origin = 'SOFTEPS.LIQUIDACION_COMPENSACION.FEC_CONSIGNACION_COMP'
    end
    object qrymcliquidacionVAL_CONSIGNADO_COMP: TFloatField
      FieldName = 'VAL_CONSIGNADO_COMP'
      Origin = 'SOFTEPS.LIQUIDACION_COMPENSACION.VAL_CONSIGNADO_COMP'
    end
    object qrymcliquidacionNUM_AGREGADOS: TFloatField
      FieldName = 'NUM_AGREGADOS'
      Origin = 'SOFTEPS.LIQUIDACION_COMPENSACION.NUM_AGREGADOS'
    end
    object qrymcliquidacionVAL_UPC_AGREG: TFloatField
      FieldName = 'VAL_UPC_AGREG'
      Origin = 'SOFTEPS.LIQUIDACION_COMPENSACION.VAL_UPC_AGREG'
    end
    object qrymcliquidacionVAL_PROMOCION_AGREG: TFloatField
      FieldName = 'VAL_PROMOCION_AGREG'
      Origin = 'SOFTEPS.LIQUIDACION_COMPENSACION.VAL_PROMOCION_AGREG'
    end
    object qrymcliquidacionVA_SOLID_AGREG: TFloatField
      FieldName = 'VA_SOLID_AGREG'
      Origin = 'SOFTEPS.LIQUIDACION_COMPENSACION.VA_SOLID_AGREG'
    end
    object qrymcliquidacionNUM_AUTOLIQUIDACIONES: TFloatField
      FieldName = 'NUM_AUTOLIQUIDACIONES'
      Origin = 'SOFTEPS.LIQUIDACION_COMPENSACION.NUM_AUTOLIQUIDACIONES'
    end
    object qrymcliquidacionVAL_PAGO_INCAP: TFloatField
      FieldName = 'VAL_PAGO_INCAP'
      Origin = 'SOFTEPS.LIQUIDACION_COMPENSACION.VAL_PAGO_INCAP'
    end
    object qrymcliquidacionTOT_COTIZACIONES_NOIDENT: TFloatField
      FieldName = 'TOT_COTIZACIONES_NOIDENT'
      Origin = 'SOFTEPS.LIQUIDACION_COMPENSACION.TOT_COTIZACIONES_NOIDENT'
    end
    object qrymcliquidacionNUM_TOT_AFIL: TFloatField
      FieldName = 'NUM_TOT_AFIL'
      Origin = 'SOFTEPS.LIQUIDACION_COMPENSACION.NUM_TOT_AFIL'
    end
    object qrymcliquidacionNUM_TOTAL_COTIZ8: TFloatField
      FieldName = 'NUM_TOTAL_COTIZ8'
      Origin = 'SOFTEPS.LIQUIDACION_COMPENSACION.NUM_TOTAL_COTIZ8'
    end
    object qrymcliquidacionTOT_AFILIADOS_IND: TFloatField
      FieldName = 'TOT_AFILIADOS_IND'
      Origin = 'SOFTEPS.LIQUIDACION_COMPENSACION.TOT_AFILIADOS_IND'
    end
    object qrymcliquidacionIBC_AFILIADOS_IND: TFloatField
      FieldName = 'IBC_AFILIADOS_IND'
      Origin = 'SOFTEPS.LIQUIDACION_COMPENSACION.IBC_AFILIADOS_IND'
    end
    object qrymcliquidacionTOT_MADRES_COMU: TFloatField
      FieldName = 'TOT_MADRES_COMU'
      Origin = 'SOFTEPS.LIQUIDACION_COMPENSACION.TOT_MADRES_COMU'
    end
    object qrymcliquidacionIBC_MADRES_COMU: TFloatField
      FieldName = 'IBC_MADRES_COMU'
      Origin = 'SOFTEPS.LIQUIDACION_COMPENSACION.IBC_MADRES_COMU'
    end
    object qrymcliquidacionTOT_MADRESCOMU_COMP: TFloatField
      FieldName = 'TOT_MADRESCOMU_COMP'
      Origin = 'SOFTEPS.LIQUIDACION_COMPENSACION.TOT_MADRESCOMU_COMP'
    end
    object qrymcliquidacionIBC_MADRESCOMU_COMP: TFloatField
      FieldName = 'IBC_MADRESCOMU_COMP'
      Origin = 'SOFTEPS.LIQUIDACION_COMPENSACION.IBC_MADRESCOMU_COMP'
    end
    object qrymcliquidacionTOT_MIEMBROS_ADICDEP: TFloatField
      FieldName = 'TOT_MIEMBROS_ADICDEP'
      Origin = 'SOFTEPS.LIQUIDACION_COMPENSACION.TOT_MIEMBROS_ADICDEP'
    end
    object qrymcliquidacionREC_MIEMBROS_ADICDEP: TFloatField
      FieldName = 'REC_MIEMBROS_ADICDEP'
      Origin = 'SOFTEPS.LIQUIDACION_COMPENSACION.REC_MIEMBROS_ADICDEP'
    end
    object qrymcliquidacionTOT_INCAPACIDADES_PAG: TFloatField
      FieldName = 'TOT_INCAPACIDADES_PAG'
      Origin = 'SOFTEPS.LIQUIDACION_COMPENSACION.TOT_INCAPACIDADES_PAG'
    end
    object qrymcliquidacionVAL_RECAUDO_BRUT: TFloatField
      FieldName = 'VAL_RECAUDO_BRUT'
      Origin = 'SOFTEPS.LIQUIDACION_COMPENSACION.VAL_RECAUDO_BRUT'
    end
    object qrymcliquidacionVAL_LICENCIAAS_PAG: TFloatField
      FieldName = 'VAL_LICENCIAAS_PAG'
      Origin = 'SOFTEPS.LIQUIDACION_COMPENSACION.VAL_LICENCIAAS_PAG'
    end
    object qrymcliquidacionVAL_APORTES_NETO: TFloatField
      FieldName = 'VAL_APORTES_NETO'
      Origin = 'SOFTEPS.LIQUIDACION_COMPENSACION.VAL_APORTES_NETO'
    end
    object qrymcliquidacionREC_ACUMULADO_PER_COMP: TFloatField
      FieldName = 'REC_ACUMULADO_PER_COMP'
      Origin = 'SOFTEPS.LIQUIDACION_COMPENSACION.REC_ACUMULADO_PER_COMP'
    end
    object qrymcliquidacionVAL_RECONOCER_PYP: TFloatField
      FieldName = 'VAL_RECONOCER_PYP'
      Origin = 'SOFTEPS.LIQUIDACION_COMPENSACION.VAL_RECONOCER_PYP'
    end
  end
  object qrymcdeclaracion4: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      'SELECT * FROM DECLARACIONES'
      'WHERE NUM_DECLARACION >= :dec'
      'AND NUM_DECLARACION <= :dec1')
    Left = 229
    Top = 10
    ParamData = <
      item
        DataType = ftString
        Name = 'dec'
        ParamType = ptInputOutput
        Value = 0
      end
      item
        DataType = ftString
        Name = 'dec1'
        ParamType = ptInputOutput
        Value = 0
      end>
    object qrymcdeclaracion4NUM_DECLARACION: TFloatField
      FieldName = 'NUM_DECLARACION'
      Origin = 'SOFTEPS.DECLARACIONES.NUM_DECLARACION'
    end
    object qrymcdeclaracion4COT_TIPO_DECLA: TFloatField
      FieldName = 'COT_TIPO_DECLA'
      Origin = 'SOFTEPS.DECLARACIONES.COT_TIPO_DECLA'
    end
    object qrymcdeclaracion4PERIODO_COMPENSADO: TStringField
      FieldName = 'PERIODO_COMPENSADO'
      Origin = 'SOFTEPS.DECLARACIONES.PERIODO_COMPENSADO'
      Size = 10
    end
    object qrymcdeclaracion4FECHA_DECLARACION: TDateTimeField
      FieldName = 'FECHA_DECLARACION'
      Origin = 'SOFTEPS.DECLARACIONES.FECHA_DECLARACION'
    end
    object qrymcdeclaracion4TIPO_CIERRE: TStringField
      FieldName = 'TIPO_CIERRE'
      Origin = 'SOFTEPS.DECLARACIONES.TIPO_CIERRE'
      Size = 1
    end
    object qrymcdeclaracion4NUM_DECLARATIVA: TFloatField
      FieldName = 'NUM_DECLARATIVA'
      Origin = 'SOFTEPS.DECLARACIONES.NUM_DECLARATIVA'
    end
  end
  object tblmultiafiliados: TTable
    DatabaseName = 'softeps'
    TableName = 'MULTIAFILIADOS'
    Left = 179
    Top = 5
    object tblmultiafiliadosEPS: TStringField
      FieldName = 'EPS'
      Size = 30
    end
    object tblmultiafiliadosCOD_EPS: TStringField
      FieldName = 'COD_EPS'
      Size = 7
    end
    object tblmultiafiliadosNUM_DECLARACION: TFloatField
      FieldName = 'NUM_DECLARACION'
    end
    object tblmultiafiliadosPER_COMPENSADO: TStringField
      FieldName = 'PER_COMPENSADO'
      Size = 7
    end
    object tblmultiafiliadosAFI_NUMERO_DOC: TStringField
      FieldName = 'AFI_NUMERO_DOC'
      Size = 18
    end
    object tblmultiafiliadosPRI_APELLIDO: TStringField
      FieldName = 'PRI_APELLIDO'
      Size = 15
    end
    object tblmultiafiliadosSEG_APELLIDO: TStringField
      FieldName = 'SEG_APELLIDO'
      Size = 15
    end
    object tblmultiafiliadosPRI_NOMBRE: TStringField
      FieldName = 'PRI_NOMBRE'
      Size = 15
    end
    object tblmultiafiliadosSEG_NOMBRE: TStringField
      FieldName = 'SEG_NOMBRE'
      Size = 15
    end
    object tblmultiafiliadosDIGITO: TStringField
      FieldName = 'DIGITO'
      Size = 2
    end
    object tblmultiafiliadosCOD_EPS_MULTIAFILIADO: TStringField
      FieldName = 'COD_EPS_MULTIAFILIADO'
      Size = 7
    end
    object tblmultiafiliadosFECHA: TStringField
      FieldName = 'FECHA'
      Size = 10
    end
    object tblmultiafiliadosDIGITO2: TStringField
      FieldName = 'DIGITO2'
      Size = 2
    end
    object tblmultiafiliadosDIGITO3: TStringField
      FieldName = 'DIGITO3'
      Size = 2
    end
    object tblmultiafiliadosAFI_TIPO_DOC: TStringField
      FieldName = 'AFI_TIPO_DOC'
      Size = 3
    end
    object tblmultiafiliadosCAUSA: TStringField
      FieldName = 'CAUSA'
      Size = 30
    end
    object tblmultiafiliadosCAMPO1: TStringField
      FieldName = 'CAMPO1'
      Size = 15
    end
    object tblmultiafiliadosCAMPO2: TStringField
      FieldName = 'CAMPO2'
      Size = 15
    end
    object tblmultiafiliadosCAUSA2: TStringField
      FieldName = 'CAUSA2'
      Size = 30
    end
  end
  object qrymcmulti: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      'SELECT * FROM MULTIAFILIADOS'
      'WHERE NUM_DECLARACION >= :dec1'
      'AND NUM_DECLARACION <= :dec2')
    Left = 230
    Top = 12
    ParamData = <
      item
        DataType = ftFloat
        Name = 'dec1'
        ParamType = ptUnknown
        Value = 0
      end
      item
        DataType = ftFloat
        Name = 'dec2'
        ParamType = ptUnknown
        Value = 0
      end>
    object qrymcmultiEPS: TStringField
      FieldName = 'EPS'
      Origin = 'SOFTEPS.MULTIAFILIADOS.EPS'
      Size = 30
    end
    object qrymcmultiCOD_EPS: TStringField
      FieldName = 'COD_EPS'
      Origin = 'SOFTEPS.MULTIAFILIADOS.COD_EPS'
      Size = 7
    end
    object qrymcmultiNUM_DECLARACION: TFloatField
      FieldName = 'NUM_DECLARACION'
      Origin = 'SOFTEPS.MULTIAFILIADOS.NUM_DECLARACION'
    end
    object qrymcmultiPER_COMPENSADO: TStringField
      FieldName = 'PER_COMPENSADO'
      Origin = 'SOFTEPS.MULTIAFILIADOS.PER_COMPENSADO'
      Size = 7
    end
    object qrymcmultiAFI_NUMERO_DOC: TStringField
      FieldName = 'AFI_NUMERO_DOC'
      Origin = 'SOFTEPS.MULTIAFILIADOS.AFI_NUMERO_DOC'
      Size = 18
    end
    object qrymcmultiPRI_APELLIDO: TStringField
      FieldName = 'PRI_APELLIDO'
      Origin = 'SOFTEPS.MULTIAFILIADOS.PRI_APELLIDO'
      Size = 15
    end
    object qrymcmultiSEG_APELLIDO: TStringField
      FieldName = 'SEG_APELLIDO'
      Origin = 'SOFTEPS.MULTIAFILIADOS.SEG_APELLIDO'
      Size = 15
    end
    object qrymcmultiPRI_NOMBRE: TStringField
      FieldName = 'PRI_NOMBRE'
      Origin = 'SOFTEPS.MULTIAFILIADOS.PRI_NOMBRE'
      Size = 15
    end
    object qrymcmultiSEG_NOMBRE: TStringField
      FieldName = 'SEG_NOMBRE'
      Origin = 'SOFTEPS.MULTIAFILIADOS.SEG_NOMBRE'
      Size = 15
    end
    object qrymcmultiDIGITO: TStringField
      FieldName = 'DIGITO'
      Origin = 'SOFTEPS.MULTIAFILIADOS.DIGITO'
      Size = 2
    end
    object qrymcmultiCOD_EPS_MULTIAFILIADO: TStringField
      FieldName = 'COD_EPS_MULTIAFILIADO'
      Origin = 'SOFTEPS.MULTIAFILIADOS.COD_EPS_MULTIAFILIADO'
      Size = 7
    end
    object qrymcmultiFECHA: TStringField
      FieldName = 'FECHA'
      Origin = 'SOFTEPS.MULTIAFILIADOS.FECHA'
      Size = 10
    end
    object qrymcmultiDIGITO2: TStringField
      FieldName = 'DIGITO2'
      Origin = 'SOFTEPS.MULTIAFILIADOS.DIGITO2'
      Size = 2
    end
    object qrymcmultiDIGITO3: TStringField
      FieldName = 'DIGITO3'
      Origin = 'SOFTEPS.MULTIAFILIADOS.DIGITO3'
      Size = 2
    end
    object qrymcmultiAFI_TIPO_DOC: TStringField
      FieldName = 'AFI_TIPO_DOC'
      Origin = 'SOFTEPS.MULTIAFILIADOS.AFI_TIPO_DOC'
      Size = 3
    end
    object qrymcmultiCAUSA: TStringField
      FieldName = 'CAUSA'
      Origin = 'SOFTEPS.MULTIAFILIADOS.CAUSA'
      Size = 30
    end
    object qrymcmultiCAMPO1: TStringField
      FieldName = 'CAMPO1'
      Origin = 'SOFTEPS.MULTIAFILIADOS.CAMPO1'
      Size = 15
    end
    object qrymcmultiCAMPO2: TStringField
      FieldName = 'CAMPO2'
      Origin = 'SOFTEPS.MULTIAFILIADOS.CAMPO2'
      Size = 15
    end
    object qrymcmultiCAUSA2: TStringField
      FieldName = 'CAUSA2'
      Origin = 'SOFTEPS.MULTIAFILIADOS.CAUSA2'
      Size = 30
    end
  end
  object qrymcafilcomp2: TQuery
    DatabaseName = 'softeps'
    RequestLive = True
    SQL.Strings = (
      'SELECT * FROM AFILIADOS_COMPENSADOS '
      'WHERE (NUM_DECLARACION = :dec) AND '
      '       ((TIP_DOCUMENTO_COT = :tp1 '
      'AND NUM_DOCUMENTO_COT = :nm1) '
      'OR (AFI_TIPO_DOC = :tp2 '
      ' AND AFI_NUMERO_DOC = :nm2))'
      ''
      '')
    Left = 229
    Top = 10
    ParamData = <
      item
        DataType = ftString
        Name = 'dec'
        ParamType = ptInputOutput
        Value = 0
      end
      item
        DataType = ftString
        Name = 'tp1'
        ParamType = ptInputOutput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'nm1'
        ParamType = ptInputOutput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'tp2'
        ParamType = ptInputOutput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'nm2'
        ParamType = ptInputOutput
        Value = ''
      end>
    object qrymcafilcomp2AFI_NUMERO_DOC: TStringField
      FieldName = 'AFI_NUMERO_DOC'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.AFI_NUMERO_DOC'
      Size = 18
    end
    object qrymcafilcomp2AFI_TIPO_DOC: TStringField
      FieldName = 'AFI_TIPO_DOC'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.AFI_TIPO_DOC'
      Size = 3
    end
    object qrymcafilcomp2NUM_DECLARACION: TFloatField
      FieldName = 'NUM_DECLARACION'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.NUM_DECLARACION'
    end
    object qrymcafilcomp2COD_GRUPO_ETAREO: TFloatField
      FieldName = 'COD_GRUPO_ETAREO'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.COD_GRUPO_ETAREO'
    end
    object qrymcafilcomp2TIP_UPC: TStringField
      FieldName = 'TIP_UPC'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.TIP_UPC'
      Size = 1
    end
    object qrymcafilcomp2TIP_PAGO: TStringField
      FieldName = 'TIP_PAGO'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.TIP_PAGO'
      Size = 1
    end
    object qrymcafilcomp2TIP_BENEFICIARIO: TStringField
      FieldName = 'TIP_BENEFICIARIO'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.TIP_BENEFICIARIO'
      Size = 1
    end
    object qrymcafilcomp2DIAS: TStringField
      FieldName = 'DIAS'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.DIAS'
      Size = 2
    end
    object qrymcafilcomp2SALARIO: TFloatField
      FieldName = 'SALARIO'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.SALARIO'
    end
    object qrymcafilcomp2PORCENTAJE: TStringField
      FieldName = 'PORCENTAJE'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.PORCENTAJE'
      Size = 2
    end
    object qrymcafilcomp2COTIZACION: TFloatField
      FieldName = 'COTIZACION'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.COTIZACION'
    end
    object qrymcafilcomp2VAL_DEDUCCION: TFloatField
      FieldName = 'VAL_DEDUCCION'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.VAL_DEDUCCION'
    end
    object qrymcafilcomp2TIP_DEDUCCION: TStringField
      FieldName = 'TIP_DEDUCCION'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.TIP_DEDUCCION'
      Size = 3
    end
    object qrymcafilcomp2VALOR_UPC: TFloatField
      FieldName = 'VALOR_UPC'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.VALOR_UPC'
    end
    object qrymcafilcomp2TIP_AFILIADO: TStringField
      FieldName = 'TIP_AFILIADO'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.TIP_AFILIADO'
      Size = 1
    end
    object qrymcafilcomp2FEC_CONSIGNACION: TDateTimeField
      FieldName = 'FEC_CONSIGNACION'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.FEC_CONSIGNACION'
    end
    object qrymcafilcomp2COD_PARENTESCO: TStringField
      FieldName = 'COD_PARENTESCO'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.COD_PARENTESCO'
      Size = 3
    end
    object qrymcafilcomp2NUM_PLANILLA: TStringField
      FieldName = 'NUM_PLANILLA'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.NUM_PLANILLA'
      Size = 15
    end
    object qrymcafilcomp2TIP_DOCUMENTO_COT: TStringField
      FieldName = 'TIP_DOCUMENTO_COT'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.TIP_DOCUMENTO_COT'
      Size = 3
    end
    object qrymcafilcomp2NUM_DOCUMENTO_COT: TStringField
      FieldName = 'NUM_DOCUMENTO_COT'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.NUM_DOCUMENTO_COT'
      Size = 18
    end
    object qrymcafilcomp2EMP_TIPO_DOC: TStringField
      FieldName = 'EMP_TIPO_DOC'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.EMP_TIPO_DOC'
      Size = 3
    end
    object qrymcafilcomp2EMP_NUMERO_DOC: TStringField
      FieldName = 'EMP_NUMERO_DOC'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.EMP_NUMERO_DOC'
      Size = 15
    end
    object qrymcafilcomp2ID_MULTIAFILIADO: TStringField
      FieldName = 'ID_MULTIAFILIADO'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.ID_MULTIAFILIADO'
      Size = 9
    end
    object qrymcafilcomp2CAUSA: TStringField
      FieldName = 'CAUSA'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.CAUSA'
      Size = 30
    end
    object qrymcafilcomp2VAL_UPC: TFloatField
      FieldName = 'VAL_UPC'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.VAL_UPC'
    end
    object qrymcafilcomp2EST_MULTIAFILIADO: TStringField
      FieldName = 'EST_MULTIAFILIADO'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.EST_MULTIAFILIADO'
      Size = 3
    end
  end
  object qrymcgrpeta1: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      'SELECT * FROM GRUPOS_ETAREOS ORDER BY COD_GRUPO_ETA')
    Left = 229
    Top = 10
    object qrymcgrpeta1COD_GRUPO_ETA: TFloatField
      FieldName = 'COD_GRUPO_ETA'
      Origin = 'SOFTEPS.GRUPOS_ETAREOS.COD_GRUPO_ETA'
    end
    object qrymcgrpeta1INI_GRUPO_ETA: TFloatField
      FieldName = 'INI_GRUPO_ETA'
      Origin = 'SOFTEPS.GRUPOS_ETAREOS.INI_GRUPO_ETA'
    end
    object qrymcgrpeta1FIN_GRUPO_ETA: TFloatField
      FieldName = 'FIN_GRUPO_ETA'
      Origin = 'SOFTEPS.GRUPOS_ETAREOS.FIN_GRUPO_ETA'
    end
    object qrymcgrpeta1SEXO_GRUPO_ETA: TStringField
      FieldName = 'SEXO_GRUPO_ETA'
      Origin = 'SOFTEPS.GRUPOS_ETAREOS.SEXO_GRUPO_ETA'
      Size = 1
    end
  end
  object qrymcvalidacion: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      'SELECT * FROM DET_PLANILLA_AUTOLIQUIDACION, AUTOLIQUIDACION'
      'WHERE DET_ESTADO = :estado'
      
        '           AND DET_PLANILLA_AUTOLIQUIDACION.NUM_PLANILLA = AUTOL' +
        'IQUIDACION.NUM_PLANILLA'
      '')
    Left = 229
    Top = 10
    ParamData = <
      item
        DataType = ftString
        Name = 'estado'
        ParamType = ptInputOutput
        Value = ''
      end>
    object qrymcvalidacionNUM_PLANILLA: TStringField
      FieldName = 'NUM_PLANILLA'
      Origin = 'SOFTEPS.DET_PLANILLA_AUTOLIQUIDACION.NUM_PLANILLA'
      Size = 15
    end
    object qrymcvalidacionAFI_TIPO_DOC: TStringField
      FieldName = 'AFI_TIPO_DOC'
      Origin = 'SOFTEPS.DET_PLANILLA_AUTOLIQUIDACION.AFI_TIPO_DOC'
      Size = 3
    end
    object qrymcvalidacionAFI_NUMERO_DOC: TStringField
      FieldName = 'AFI_NUMERO_DOC'
      Origin = 'SOFTEPS.DET_PLANILLA_AUTOLIQUIDACION.AFI_NUMERO_DOC'
      Size = 18
    end
    object qrymcvalidacionNOV_ING: TStringField
      FieldName = 'NOV_ING'
      Origin = 'SOFTEPS.DET_PLANILLA_AUTOLIQUIDACION.NOV_ING'
      Size = 1
    end
    object qrymcvalidacionNOV_RET: TStringField
      FieldName = 'NOV_RET'
      Origin = 'SOFTEPS.DET_PLANILLA_AUTOLIQUIDACION.NOV_RET'
      Size = 1
    end
    object qrymcvalidacionNOV_TDA: TStringField
      FieldName = 'NOV_TDA'
      Origin = 'SOFTEPS.DET_PLANILLA_AUTOLIQUIDACION.NOV_TDA'
      Size = 1
    end
    object qrymcvalidacionNOV_TAA: TStringField
      FieldName = 'NOV_TAA'
      Origin = 'SOFTEPS.DET_PLANILLA_AUTOLIQUIDACION.NOV_TAA'
      Size = 1
    end
    object qrymcvalidacionNOV_VSP: TStringField
      FieldName = 'NOV_VSP'
      Origin = 'SOFTEPS.DET_PLANILLA_AUTOLIQUIDACION.NOV_VSP'
      Size = 1
    end
    object qrymcvalidacionNOV_VST: TStringField
      FieldName = 'NOV_VST'
      Origin = 'SOFTEPS.DET_PLANILLA_AUTOLIQUIDACION.NOV_VST'
      Size = 1
    end
    object qrymcvalidacionNOV_SLN: TStringField
      FieldName = 'NOV_SLN'
      Origin = 'SOFTEPS.DET_PLANILLA_AUTOLIQUIDACION.NOV_SLN'
      Size = 1
    end
    object qrymcvalidacionNOV_IGE: TStringField
      FieldName = 'NOV_IGE'
      Origin = 'SOFTEPS.DET_PLANILLA_AUTOLIQUIDACION.NOV_IGE'
      Size = 1
    end
    object qrymcvalidacionNOV_LMA: TStringField
      FieldName = 'NOV_LMA'
      Origin = 'SOFTEPS.DET_PLANILLA_AUTOLIQUIDACION.NOV_LMA'
      Size = 1
    end
    object qrymcvalidacionNOV_VAC: TStringField
      FieldName = 'NOV_VAC'
      Origin = 'SOFTEPS.DET_PLANILLA_AUTOLIQUIDACION.NOV_VAC'
      Size = 1
    end
    object qrymcvalidacionDIA_COTIZADOS: TStringField
      FieldName = 'DIA_COTIZADOS'
      Origin = 'SOFTEPS.DET_PLANILLA_AUTOLIQUIDACION.DIA_COTIZADOS'
      Size = 2
    end
    object qrymcvalidacionSAL_BASE: TFloatField
      FieldName = 'SAL_BASE'
      Origin = 'SOFTEPS.DET_PLANILLA_AUTOLIQUIDACION.SAL_BASE'
    end
    object qrymcvalidacionVAL_NETO_NOV: TFloatField
      FieldName = 'VAL_NETO_NOV'
      Origin = 'SOFTEPS.DET_PLANILLA_AUTOLIQUIDACION.VAL_NETO_NOV'
    end
    object qrymcvalidacionING_BASE_COT: TFloatField
      FieldName = 'ING_BASE_COT'
      Origin = 'SOFTEPS.DET_PLANILLA_AUTOLIQUIDACION.ING_BASE_COT'
    end
    object qrymcvalidacionCOT_OBLIGATORIA: TFloatField
      FieldName = 'COT_OBLIGATORIA'
      Origin = 'SOFTEPS.DET_PLANILLA_AUTOLIQUIDACION.COT_OBLIGATORIA'
    end
    object qrymcvalidacionNUM_INCAPACIDAD_EGR: TStringField
      FieldName = 'NUM_INCAPACIDAD_EGR'
      Origin = 'SOFTEPS.DET_PLANILLA_AUTOLIQUIDACION.NUM_INCAPACIDAD_EGR'
      Size = 10
    end
    object qrymcvalidacionVAL_INCAPACIDAD_EGR: TFloatField
      FieldName = 'VAL_INCAPACIDAD_EGR'
      Origin = 'SOFTEPS.DET_PLANILLA_AUTOLIQUIDACION.VAL_INCAPACIDAD_EGR'
    end
    object qrymcvalidacionNUM_LICENCIA_MAT: TStringField
      FieldName = 'NUM_LICENCIA_MAT'
      Origin = 'SOFTEPS.DET_PLANILLA_AUTOLIQUIDACION.NUM_LICENCIA_MAT'
      Size = 10
    end
    object qrymcvalidacionVAL_LICENCIA_MAT: TFloatField
      FieldName = 'VAL_LICENCIA_MAT'
      Origin = 'SOFTEPS.DET_PLANILLA_AUTOLIQUIDACION.VAL_LICENCIA_MAT'
    end
    object qrymcvalidacionVAL_UPC_ADI: TFloatField
      FieldName = 'VAL_UPC_ADI'
      Origin = 'SOFTEPS.DET_PLANILLA_AUTOLIQUIDACION.VAL_UPC_ADI'
    end
    object qrymcvalidacionVAL_TOTAL_COT: TFloatField
      FieldName = 'VAL_TOTAL_COT'
      Origin = 'SOFTEPS.DET_PLANILLA_AUTOLIQUIDACION.VAL_TOTAL_COT'
    end
    object qrymcvalidacionDET_ESTADO: TStringField
      FieldName = 'DET_ESTADO'
      Origin = 'SOFTEPS.DET_PLANILLA_AUTOLIQUIDACION.DET_ESTADO'
      Size = 3
    end
    object qrymcvalidacionPER_COTIZACION: TStringField
      FieldName = 'PER_COTIZACION'
      Origin = 'SOFTEPS.DET_PLANILLA_AUTOLIQUIDACION.PER_COTIZACION'
      Size = 7
    end
    object qrymcvalidacionPER_PRESENTACION: TStringField
      FieldName = 'PER_PRESENTACION'
      Origin = 'SOFTEPS.DET_PLANILLA_AUTOLIQUIDACION.PER_PRESENTACION'
      Size = 7
    end
    object qrymcvalidacionCOD_OFICINA: TStringField
      FieldName = 'COD_OFICINA'
      Origin = 'SOFTEPS.DET_PLANILLA_AUTOLIQUIDACION.COD_OFICINA'
      Size = 3
    end
    object qrymcvalidacionNUM_DECLARACION: TFloatField
      FieldName = 'NUM_DECLARACION'
      Origin = 'SOFTEPS.DET_PLANILLA_AUTOLIQUIDACION.NUM_DECLARACION'
    end
    object qrymcvalidacionNUM_PLANILLA_1: TStringField
      FieldName = 'NUM_PLANILLA_1'
      Origin = 'SOFTEPS.DET_PLANILLA_AUTOLIQUIDACION.NUM_DECLARACION'
      Size = 15
    end
    object qrymcvalidacionEMP_TIPO_DOC: TStringField
      FieldName = 'EMP_TIPO_DOC'
      Origin = 'SOFTEPS.DET_PLANILLA_AUTOLIQUIDACION.NUM_DECLARACION'
      Size = 3
    end
    object qrymcvalidacionEMP_NUMERO_DOC: TStringField
      FieldName = 'EMP_NUMERO_DOC'
      Origin = 'SOFTEPS.DET_PLANILLA_AUTOLIQUIDACION.NUM_DECLARACION'
      Size = 18
    end
    object qrymcvalidacionCOD_SUCURSAL: TStringField
      FieldName = 'COD_SUCURSAL'
      Origin = 'SOFTEPS.DET_PLANILLA_AUTOLIQUIDACION.NUM_DECLARACION'
      Size = 2
    end
    object qrymcvalidacionTIP_DECLARACION: TStringField
      FieldName = 'TIP_DECLARACION'
      Origin = 'SOFTEPS.DET_PLANILLA_AUTOLIQUIDACION.NUM_DECLARACION'
      Size = 1
    end
    object qrymcvalidacionFEC_PAGO: TDateTimeField
      FieldName = 'FEC_PAGO'
      Origin = 'SOFTEPS.DET_PLANILLA_AUTOLIQUIDACION.NUM_DECLARACION'
    end
    object qrymcvalidacionNUM_PLANILLA_CORR: TStringField
      FieldName = 'NUM_PLANILLA_CORR'
      Origin = 'SOFTEPS.DET_PLANILLA_AUTOLIQUIDACION.NUM_DECLARACION'
      Size = 15
    end
    object qrymcvalidacionPER_COTIZACION_1: TStringField
      FieldName = 'PER_COTIZACION_1'
      Origin = 'SOFTEPS.DET_PLANILLA_AUTOLIQUIDACION.NUM_DECLARACION'
      Size = 7
    end
    object qrymcvalidacionPER_PRESENTACION_1: TStringField
      FieldName = 'PER_PRESENTACION_1'
      Origin = 'SOFTEPS.DET_PLANILLA_AUTOLIQUIDACION.NUM_DECLARACION'
      Size = 7
    end
    object qrymcvalidacionTOT_PLANILLA: TFloatField
      FieldName = 'TOT_PLANILLA'
      Origin = 'SOFTEPS.DET_PLANILLA_AUTOLIQUIDACION.NUM_DECLARACION'
    end
    object qrymcvalidacionTOT_APORTE_PER: TFloatField
      FieldName = 'TOT_APORTE_PER'
      Origin = 'SOFTEPS.DET_PLANILLA_AUTOLIQUIDACION.NUM_DECLARACION'
    end
    object qrymcvalidacionTOT_INCAPACIDAD: TFloatField
      FieldName = 'TOT_INCAPACIDAD'
      Origin = 'SOFTEPS.DET_PLANILLA_AUTOLIQUIDACION.NUM_DECLARACION'
    end
    object qrymcvalidacionTOT_LICENCIAS: TFloatField
      FieldName = 'TOT_LICENCIAS'
      Origin = 'SOFTEPS.DET_PLANILLA_AUTOLIQUIDACION.NUM_DECLARACION'
    end
    object qrymcvalidacionTOT_APORTE: TFloatField
      FieldName = 'TOT_APORTE'
      Origin = 'SOFTEPS.DET_PLANILLA_AUTOLIQUIDACION.NUM_DECLARACION'
    end
    object qrymcvalidacionINT_MORA: TFloatField
      FieldName = 'INT_MORA'
      Origin = 'SOFTEPS.DET_PLANILLA_AUTOLIQUIDACION.NUM_DECLARACION'
    end
    object qrymcvalidacionTOT_APORTE_MMORA: TFloatField
      FieldName = 'TOT_APORTE_MMORA'
      Origin = 'SOFTEPS.DET_PLANILLA_AUTOLIQUIDACION.NUM_DECLARACION'
    end
    object qrymcvalidacionTOT_SALDO_FAV: TFloatField
      FieldName = 'TOT_SALDO_FAV'
      Origin = 'SOFTEPS.DET_PLANILLA_AUTOLIQUIDACION.NUM_DECLARACION'
    end
    object qrymcvalidacionTOT_UPC: TFloatField
      FieldName = 'TOT_UPC'
      Origin = 'SOFTEPS.DET_PLANILLA_AUTOLIQUIDACION.NUM_DECLARACION'
    end
    object qrymcvalidacionTOT_PAGADO: TFloatField
      FieldName = 'TOT_PAGADO'
      Origin = 'SOFTEPS.DET_PLANILLA_AUTOLIQUIDACION.NUM_DECLARACION'
    end
    object qrymcvalidacionCOD_BANCO: TStringField
      FieldName = 'COD_BANCO'
      Origin = 'SOFTEPS.DET_PLANILLA_AUTOLIQUIDACION.NUM_DECLARACION'
      Size = 3
    end
    object qrymcvalidacionNUM_CUENTA: TStringField
      FieldName = 'NUM_CUENTA'
      Origin = 'SOFTEPS.DET_PLANILLA_AUTOLIQUIDACION.NUM_DECLARACION'
    end
    object qrymcvalidacionVAL_EFECTIVO: TFloatField
      FieldName = 'VAL_EFECTIVO'
      Origin = 'SOFTEPS.DET_PLANILLA_AUTOLIQUIDACION.NUM_DECLARACION'
    end
    object qrymcvalidacionVAL_CHEQUE: TFloatField
      FieldName = 'VAL_CHEQUE'
      Origin = 'SOFTEPS.DET_PLANILLA_AUTOLIQUIDACION.NUM_DECLARACION'
    end
    object qrymcvalidacionEST_PLANILLA: TStringField
      FieldName = 'EST_PLANILLA'
      Origin = 'SOFTEPS.DET_PLANILLA_AUTOLIQUIDACION.NUM_DECLARACION'
      Size = 3
    end
    object qrymcvalidacionCOD_REGIONAL: TStringField
      FieldName = 'COD_REGIONAL'
      Origin = 'SOFTEPS.DET_PLANILLA_AUTOLIQUIDACION.NUM_DECLARACION'
      Size = 3
    end
    object qrymcvalidacionCOD_OFICINA_1: TStringField
      FieldName = 'COD_OFICINA_1'
      Origin = 'SOFTEPS.DET_PLANILLA_AUTOLIQUIDACION.NUM_DECLARACION'
      Size = 3
    end
    object qrymcvalidacionNUM_DECLARACION_1: TFloatField
      FieldName = 'NUM_DECLARACION_1'
      Origin = 'SOFTEPS.DET_PLANILLA_AUTOLIQUIDACION.NUM_DECLARACION'
    end
    object qrymcvalidacionCRU_CONCILIACION: TStringField
      FieldName = 'CRU_CONCILIACION'
      Origin = 'SOFTEPS.DET_PLANILLA_AUTOLIQUIDACION.NUM_DECLARACION'
      Size = 1
    end
    object qrymcvalidacionFEC_DIGITACION: TDateTimeField
      FieldName = 'FEC_DIGITACION'
      Origin = 'SOFTEPS.DET_PLANILLA_AUTOLIQUIDACION.NUM_DECLARACION'
    end
    object qrymcvalidacionTIP_DOC_USUARIO: TStringField
      FieldName = 'TIP_DOC_USUARIO'
      Origin = 'SOFTEPS.DET_PLANILLA_AUTOLIQUIDACION.NUM_DECLARACION'
      Size = 3
    end
    object qrymcvalidacionNUM_DOC_USUARIO: TStringField
      FieldName = 'NUM_DOC_USUARIO'
      Origin = 'SOFTEPS.DET_PLANILLA_AUTOLIQUIDACION.NUM_DECLARACION'
      Size = 18
    end
    object qrymcvalidacionFEC_MODIFICACION: TDateTimeField
      FieldName = 'FEC_MODIFICACION'
      Origin = 'SOFTEPS.DET_PLANILLA_AUTOLIQUIDACION.NUM_DECLARACION'
    end
  end
  object qrymcdeclaracion5: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      'SELECT * FROM DECLARACIONES '
      'WHERE FECHA_DECLARACION = :fecha'
      'ORDER BY NUM_DECLARACION DESC'
      '')
    Left = 229
    Top = 10
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'fecha'
        ParamType = ptInputOutput
        Value = 0d
      end>
    object qrymcdeclaracion5NUM_DECLARACION: TFloatField
      FieldName = 'NUM_DECLARACION'
      Origin = 'SOFTEPS.DECLARACIONES.NUM_DECLARACION'
    end
    object qrymcdeclaracion5COT_TIPO_DECLA: TFloatField
      FieldName = 'COT_TIPO_DECLA'
      Origin = 'SOFTEPS.DECLARACIONES.COT_TIPO_DECLA'
    end
    object qrymcdeclaracion5PERIODO_COMPENSADO: TStringField
      FieldName = 'PERIODO_COMPENSADO'
      Origin = 'SOFTEPS.DECLARACIONES.PERIODO_COMPENSADO'
      Size = 10
    end
    object qrymcdeclaracion5FECHA_DECLARACION: TDateTimeField
      FieldName = 'FECHA_DECLARACION'
      Origin = 'SOFTEPS.DECLARACIONES.FECHA_DECLARACION'
    end
    object qrymcdeclaracion5TIPO_CIERRE: TStringField
      FieldName = 'TIPO_CIERRE'
      Origin = 'SOFTEPS.DECLARACIONES.TIPO_CIERRE'
      Size = 1
    end
    object qrymcdeclaracion5NUM_DECLARATIVA: TFloatField
      FieldName = 'NUM_DECLARATIVA'
      Origin = 'SOFTEPS.DECLARACIONES.NUM_DECLARATIVA'
    end
  end
  object qrymccuentas: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      'SELECT * FROM CUENTAS_CONTABLES_COMPENSACION')
    Left = 229
    Top = 10
    object qrymccuentasNOM_CUENTA_CONTABLE: TStringField
      FieldName = 'NOM_CUENTA_CONTABLE'
      Origin = 'SOFTEPS.CUENTAS_CONTABLES_COMPENSACION.NOM_CUENTA_CONTABLE'
      Size = 200
    end
    object qrymccuentasNUM_CUENTA_CONTABLE: TFloatField
      FieldName = 'NUM_CUENTA_CONTABLE'
      Origin = 'SOFTEPS.CUENTAS_CONTABLES_COMPENSACION.NUM_CUENTA_CONTABLE'
    end
    object qrymccuentasCENTRO_DE_COSTO: TStringField
      FieldName = 'CENTRO_DE_COSTO'
      Origin = 'SOFTEPS.CUENTAS_CONTABLES_COMPENSACION.CENTRO_DE_COSTO'
      Size = 8
    end
    object qrymccuentasTIPO_ASIENTP: TStringField
      FieldName = 'TIPO_ASIENTP'
      Origin = 'SOFTEPS.CUENTAS_CONTABLES_COMPENSACION.TIPO_ASIENTP'
      Size = 1
    end
  end
  object qrymcrafilcomp: TQuery
    DatabaseName = 'softeps'
    RequestLive = True
    SQL.Strings = (
      'SELECT * FROM AFILIADOS_COMPENSADOS'
      'WHERE NUM_DECLARACION >= :dec1 '
      '   AND NUM_DECLARACION <= :dec2')
    Left = 229
    Top = 10
    ParamData = <
      item
        DataType = ftString
        Name = 'dec1'
        ParamType = ptInputOutput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'dec2'
        ParamType = ptInputOutput
        Value = ''
      end>
    object qrymcrafilcompAFI_NUMERO_DOC: TStringField
      FieldName = 'AFI_NUMERO_DOC'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.AFI_NUMERO_DOC'
      Size = 18
    end
    object qrymcrafilcompAFI_TIPO_DOC: TStringField
      FieldName = 'AFI_TIPO_DOC'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.AFI_TIPO_DOC'
      Size = 3
    end
    object qrymcrafilcompNUM_DECLARACION: TFloatField
      FieldName = 'NUM_DECLARACION'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.NUM_DECLARACION'
    end
    object qrymcrafilcompCOD_GRUPO_ETAREO: TFloatField
      FieldName = 'COD_GRUPO_ETAREO'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.COD_GRUPO_ETAREO'
    end
    object qrymcrafilcompTIP_UPC: TStringField
      FieldName = 'TIP_UPC'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.TIP_UPC'
      Size = 1
    end
    object qrymcrafilcompTIP_PAGO: TStringField
      FieldName = 'TIP_PAGO'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.TIP_PAGO'
      Size = 1
    end
    object qrymcrafilcompTIP_BENEFICIARIO: TStringField
      FieldName = 'TIP_BENEFICIARIO'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.TIP_BENEFICIARIO'
      Size = 1
    end
    object qrymcrafilcompDIAS: TStringField
      FieldName = 'DIAS'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.DIAS'
      Size = 2
    end
    object qrymcrafilcompSALARIO: TFloatField
      FieldName = 'SALARIO'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.SALARIO'
    end
    object qrymcrafilcompPORCENTAJE: TStringField
      FieldName = 'PORCENTAJE'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.PORCENTAJE'
      Size = 2
    end
    object qrymcrafilcompCOTIZACION: TFloatField
      FieldName = 'COTIZACION'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.COTIZACION'
    end
    object qrymcrafilcompVAL_DEDUCCION: TFloatField
      FieldName = 'VAL_DEDUCCION'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.VAL_DEDUCCION'
    end
    object qrymcrafilcompTIP_DEDUCCION: TStringField
      FieldName = 'TIP_DEDUCCION'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.TIP_DEDUCCION'
      Size = 3
    end
    object qrymcrafilcompVALOR_UPC: TFloatField
      FieldName = 'VALOR_UPC'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.VALOR_UPC'
    end
    object qrymcrafilcompTIP_AFILIADO: TStringField
      FieldName = 'TIP_AFILIADO'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.TIP_AFILIADO'
      Size = 1
    end
    object qrymcrafilcompFEC_CONSIGNACION: TDateTimeField
      FieldName = 'FEC_CONSIGNACION'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.FEC_CONSIGNACION'
    end
    object qrymcrafilcompCOD_PARENTESCO: TStringField
      FieldName = 'COD_PARENTESCO'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.COD_PARENTESCO'
      Size = 3
    end
    object qrymcrafilcompNUM_PLANILLA: TStringField
      FieldName = 'NUM_PLANILLA'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.NUM_PLANILLA'
      Size = 15
    end
    object qrymcrafilcompTIP_DOCUMENTO_COT: TStringField
      FieldName = 'TIP_DOCUMENTO_COT'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.TIP_DOCUMENTO_COT'
      Size = 3
    end
    object qrymcrafilcompNUM_DOCUMENTO_COT: TStringField
      FieldName = 'NUM_DOCUMENTO_COT'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.NUM_DOCUMENTO_COT'
      Size = 18
    end
    object qrymcrafilcompEMP_TIPO_DOC: TStringField
      FieldName = 'EMP_TIPO_DOC'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.EMP_TIPO_DOC'
      Size = 3
    end
    object qrymcrafilcompEMP_NUMERO_DOC: TStringField
      FieldName = 'EMP_NUMERO_DOC'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.EMP_NUMERO_DOC'
      Size = 15
    end
    object qrymcrafilcompID_MULTIAFILIADO: TStringField
      FieldName = 'ID_MULTIAFILIADO'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.ID_MULTIAFILIADO'
      Size = 9
    end
    object qrymcrafilcompCAUSA: TStringField
      FieldName = 'CAUSA'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.CAUSA'
      Size = 30
    end
    object qrymcrafilcompVAL_UPC: TFloatField
      FieldName = 'VAL_UPC'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.VAL_UPC'
    end
  end
  object qrymcafi890: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      'SELECT * FROM AFILIADOS'
      'WHERE (FEC_AFILIACION_UNI <= :FEC1)')
    Left = 230
    Top = 12
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'FEC1'
        ParamType = ptInputOutput
        Value = 0d
      end>
    object qrymcafi890TIP_DOCUMENTO: TStringField
      FieldName = 'TIP_DOCUMENTO'
      Origin = 'SOFTEPS.AFILIADOS.TIP_DOCUMENTO'
      Size = 3
    end
    object qrymcafi890NUM_DOCUMENTO: TStringField
      FieldName = 'NUM_DOCUMENTO'
      Origin = 'SOFTEPS.AFILIADOS.NUM_DOCUMENTO'
      Size = 18
    end
    object qrymcafi890COD_SEXO: TStringField
      FieldName = 'COD_SEXO'
      Origin = 'SOFTEPS.AFILIADOS.COD_SEXO'
      Size = 1
    end
    object qrymcafi890COD_TIPO_AFIL: TStringField
      FieldName = 'COD_TIPO_AFIL'
      Origin = 'SOFTEPS.AFILIADOS.COD_TIPO_AFIL'
      Size = 1
    end
    object qrymcafi890COD_MODALIDAD_TRA: TStringField
      FieldName = 'COD_MODALIDAD_TRA'
      Origin = 'SOFTEPS.AFILIADOS.COD_MODALIDAD_TRA'
      Size = 1
    end
    object qrymcafi890COD_ESTADO_CIV: TStringField
      FieldName = 'COD_ESTADO_CIV'
      Origin = 'SOFTEPS.AFILIADOS.COD_ESTADO_CIV'
      Size = 1
    end
    object qrymcafi890COD_ESTRATO: TStringField
      FieldName = 'COD_ESTRATO'
      Origin = 'SOFTEPS.AFILIADOS.COD_ESTRATO'
      Size = 3
    end
    object qrymcafi890COD_ESCOLARIDAD: TStringField
      FieldName = 'COD_ESCOLARIDAD'
      Origin = 'SOFTEPS.AFILIADOS.COD_ESCOLARIDAD'
      Size = 3
    end
    object qrymcafi890COD_PROFESION: TStringField
      FieldName = 'COD_PROFESION'
      Origin = 'SOFTEPS.AFILIADOS.COD_PROFESION'
      Size = 3
    end
    object qrymcafi890COD_ESTADO: TStringField
      FieldName = 'COD_ESTADO'
      Origin = 'SOFTEPS.AFILIADOS.COD_ESTADO'
      Size = 2
    end
    object qrymcafi890COD_OFICINA: TStringField
      FieldName = 'COD_OFICINA'
      Origin = 'SOFTEPS.AFILIADOS.COD_OFICINA'
      Size = 3
    end
    object qrymcafi890COD_REGIONAL: TStringField
      FieldName = 'COD_REGIONAL'
      Origin = 'SOFTEPS.AFILIADOS.COD_REGIONAL'
      Size = 3
    end
    object qrymcafi890PRI_NOMBRE: TStringField
      FieldName = 'PRI_NOMBRE'
      Origin = 'SOFTEPS.AFILIADOS.PRI_NOMBRE'
      Size = 25
    end
    object qrymcafi890SEG_NOMBRE: TStringField
      FieldName = 'SEG_NOMBRE'
      Origin = 'SOFTEPS.AFILIADOS.SEG_NOMBRE'
      Size = 25
    end
    object qrymcafi890PRI_APELLIDO: TStringField
      FieldName = 'PRI_APELLIDO'
      Origin = 'SOFTEPS.AFILIADOS.PRI_APELLIDO'
      Size = 25
    end
    object qrymcafi890SEG_APELLIDO: TStringField
      FieldName = 'SEG_APELLIDO'
      Origin = 'SOFTEPS.AFILIADOS.SEG_APELLIDO'
      Size = 25
    end
    object qrymcafi890FEC_NACIMIENTO: TDateTimeField
      FieldName = 'FEC_NACIMIENTO'
      Origin = 'SOFTEPS.AFILIADOS.FEC_NACIMIENTO'
    end
    object qrymcafi890FEC_AFILIACION_SIS: TDateTimeField
      FieldName = 'FEC_AFILIACION_SIS'
      Origin = 'SOFTEPS.AFILIADOS.FEC_AFILIACION_SIS'
    end
    object qrymcafi890FEC_AFILIACION_UNI: TDateTimeField
      FieldName = 'FEC_AFILIACION_UNI'
      Origin = 'SOFTEPS.AFILIADOS.FEC_AFILIACION_UNI'
    end
    object qrymcafi890EPS_TIP_DOC: TStringField
      FieldName = 'EPS_TIP_DOC'
      Origin = 'SOFTEPS.AFILIADOS.EPS_TIP_DOC'
      Size = 3
    end
    object qrymcafi890EPS_NUM_DOC: TStringField
      FieldName = 'EPS_NUM_DOC'
      Origin = 'SOFTEPS.AFILIADOS.EPS_NUM_DOC'
      Size = 18
    end
    object qrymcafi890COD_DEPARTAMENTO_RES: TStringField
      FieldName = 'COD_DEPARTAMENTO_RES'
      Origin = 'SOFTEPS.AFILIADOS.COD_DEPARTAMENTO_RES'
      Size = 2
    end
    object qrymcafi890COD_CIUDAD_RES: TStringField
      FieldName = 'COD_CIUDAD_RES'
      Origin = 'SOFTEPS.AFILIADOS.COD_CIUDAD_RES'
      Size = 3
    end
    object qrymcafi890COD_BARRIO_RES: TStringField
      FieldName = 'COD_BARRIO_RES'
      Origin = 'SOFTEPS.AFILIADOS.COD_BARRIO_RES'
      Size = 3
    end
    object qrymcafi890COD_ZONA: TStringField
      FieldName = 'COD_ZONA'
      Origin = 'SOFTEPS.AFILIADOS.COD_ZONA'
      Size = 3
    end
    object qrymcafi890ACE_TIP_DOC: TStringField
      FieldName = 'ACE_TIP_DOC'
      Origin = 'SOFTEPS.AFILIADOS.ACE_TIP_DOC'
      Size = 3
    end
    object qrymcafi890ACE_NUMERO_DOC: TStringField
      FieldName = 'ACE_NUMERO_DOC'
      Origin = 'SOFTEPS.AFILIADOS.ACE_NUMERO_DOC'
      Size = 18
    end
    object qrymcafi890COD_DISCAPACIDAD: TStringField
      FieldName = 'COD_DISCAPACIDAD'
      Origin = 'SOFTEPS.AFILIADOS.COD_DISCAPACIDAD'
      Size = 1
    end
    object qrymcafi890NUM_SEMANA_COTIZA: TFloatField
      FieldName = 'NUM_SEMANA_COTIZA'
      Origin = 'SOFTEPS.AFILIADOS.NUM_SEMANA_COTIZA'
    end
    object qrymcafi890FEC_RADICACION: TDateTimeField
      FieldName = 'FEC_RADICACION'
      Origin = 'SOFTEPS.AFILIADOS.FEC_RADICACION'
    end
    object qrymcafi890NUM_FORMATO_AFIL: TStringField
      FieldName = 'NUM_FORMATO_AFIL'
      Origin = 'SOFTEPS.AFILIADOS.NUM_FORMATO_AFIL'
      Size = 10
    end
    object qrymcafi890DIR_AFILIADO_RES: TStringField
      FieldName = 'DIR_AFILIADO_RES'
      Origin = 'SOFTEPS.AFILIADOS.DIR_AFILIADO_RES'
      Size = 50
    end
    object qrymcafi890TEL_AFILIADO_RES: TStringField
      FieldName = 'TEL_AFILIADO_RES'
      Origin = 'SOFTEPS.AFILIADOS.TEL_AFILIADO_RES'
    end
    object qrymcafi890TEL_AFILIADO_RES2: TStringField
      FieldName = 'TEL_AFILIADO_RES2'
      Origin = 'SOFTEPS.AFILIADOS.TEL_AFILIADO_RES2'
    end
    object qrymcafi890CEL_AFILIADO: TStringField
      FieldName = 'CEL_AFILIADO'
      Origin = 'SOFTEPS.AFILIADOS.CEL_AFILIADO'
    end
    object qrymcafi890EML_AFILIADO: TStringField
      FieldName = 'EML_AFILIADO'
      Origin = 'SOFTEPS.AFILIADOS.EML_AFILIADO'
      Size = 50
    end
    object qrymcafi890FEC_ULTIMA_NOV: TDateTimeField
      FieldName = 'FEC_ULTIMA_NOV'
      Origin = 'SOFTEPS.AFILIADOS.FEC_ULTIMA_NOV'
    end
    object qrymcafi890TIP_DOCUMENTO_IPS: TStringField
      FieldName = 'TIP_DOCUMENTO_IPS'
      Origin = 'SOFTEPS.AFILIADOS.TIP_DOCUMENTO_IPS'
      Size = 3
    end
    object qrymcafi890NUM_DOCUMENTO_IPS: TStringField
      FieldName = 'NUM_DOCUMENTO_IPS'
      Origin = 'SOFTEPS.AFILIADOS.NUM_DOCUMENTO_IPS'
      Size = 18
    end
    object qrymcafi890TIP_DOCUMENTO_MED: TStringField
      FieldName = 'TIP_DOCUMENTO_MED'
      Origin = 'SOFTEPS.AFILIADOS.TIP_DOCUMENTO_MED'
      Size = 3
    end
    object qrymcafi890NUM_DOCUMENTO_MED: TStringField
      FieldName = 'NUM_DOCUMENTO_MED'
      Origin = 'SOFTEPS.AFILIADOS.NUM_DOCUMENTO_MED'
      Size = 18
    end
    object qrymcafi890TIP_DOCUMENTO_ODO: TStringField
      FieldName = 'TIP_DOCUMENTO_ODO'
      Origin = 'SOFTEPS.AFILIADOS.TIP_DOCUMENTO_ODO'
      Size = 3
    end
    object qrymcafi890NUM_DOCUMENTO_ODO: TStringField
      FieldName = 'NUM_DOCUMENTO_ODO'
      Origin = 'SOFTEPS.AFILIADOS.NUM_DOCUMENTO_ODO'
      Size = 18
    end
    object qrymcafi890SEM_COTIZACION: TFloatField
      FieldName = 'SEM_COTIZACION'
      Origin = 'SOFTEPS.AFILIADOS.SEM_COTIZACION'
    end
  end
  object qrymcrelafiliados1: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      'SELECT * FROM RELACION_AFILIADOS '
      'WHERE TIP_DOCUMENTO_BEN =  :tip_documento'
      '          AND NUM_DOCUMENTO_BEN = :num_documento'
      '          AND FEC_INCLUSION_NOV <= :fec_fin'
      
        '          AND ((FEC_EXCLUSION_NOV IS NULL) OR (FEC_EXCLUSION_NOV' +
        ' >= :fec_ini)) '
      'ORDER BY NUM_DOCUMENTO_BEN'
      '')
    Left = 229
    Top = 10
    ParamData = <
      item
        DataType = ftString
        Name = 'tip_documento'
        ParamType = ptInputOutput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'num_documento'
        ParamType = ptInputOutput
        Value = ''
      end
      item
        DataType = ftDateTime
        Name = 'fec_fin'
        ParamType = ptInputOutput
        Value = 0d
      end
      item
        DataType = ftDateTime
        Name = 'fec_ini'
        ParamType = ptInputOutput
        Value = 0d
      end>
    object qrymcrelafiliados1TIP_DOCUMENTO_COT: TStringField
      FieldName = 'TIP_DOCUMENTO_COT'
      Origin = 'SOFTEPS.RELACION_AFILIADOS.TIP_DOCUMENTO_COT'
      Size = 3
    end
    object qrymcrelafiliados1NUM_DOCUMENTO_COT: TStringField
      FieldName = 'NUM_DOCUMENTO_COT'
      Origin = 'SOFTEPS.RELACION_AFILIADOS.NUM_DOCUMENTO_COT'
      Size = 18
    end
    object qrymcrelafiliados1TIP_DOCUMENTO_BEN: TStringField
      FieldName = 'TIP_DOCUMENTO_BEN'
      Origin = 'SOFTEPS.RELACION_AFILIADOS.TIP_DOCUMENTO_BEN'
      Size = 3
    end
    object qrymcrelafiliados1NUM_DOCUMENTO_BEN: TStringField
      FieldName = 'NUM_DOCUMENTO_BEN'
      Origin = 'SOFTEPS.RELACION_AFILIADOS.NUM_DOCUMENTO_BEN'
      Size = 18
    end
    object qrymcrelafiliados1FEC_INCLUSION_NOV: TDateTimeField
      FieldName = 'FEC_INCLUSION_NOV'
      Origin = 'SOFTEPS.RELACION_AFILIADOS.FEC_INCLUSION_NOV'
    end
    object qrymcrelafiliados1COD_PARENTESCO: TStringField
      FieldName = 'COD_PARENTESCO'
      Origin = 'SOFTEPS.RELACION_AFILIADOS.COD_PARENTESCO'
      Size = 3
    end
    object qrymcrelafiliados1FEC_EXCLUSION_NOV: TDateTimeField
      FieldName = 'FEC_EXCLUSION_NOV'
      Origin = 'SOFTEPS.RELACION_AFILIADOS.FEC_EXCLUSION_NOV'
    end
    object qrymcrelafiliados1COD_ESTADO: TStringField
      FieldName = 'COD_ESTADO'
      Origin = 'SOFTEPS.RELACION_AFILIADOS.COD_ESTADO'
      Size = 2
    end
    object qrymcrelafiliados1COD_RELACION_ADI: TStringField
      FieldName = 'COD_RELACION_ADI'
      Origin = 'SOFTEPS.RELACION_AFILIADOS.COD_RELACION_ADI'
      Size = 2
    end
  end
  object qrymcemp890: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      'SELECT * FROM EMPRESAS'
      'WHERE FEC_AFILIACION <= :fecha')
    Left = 229
    Top = 10
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'fecha'
        ParamType = ptInputOutput
        Value = 0d
      end>
    object qrymcemp890TIP_DOCUMENTO: TStringField
      FieldName = 'TIP_DOCUMENTO'
      Origin = 'SOFTEPS.EMPRESAS.TIP_DOCUMENTO'
      Size = 3
    end
    object qrymcemp890NUM_DOCUMENTO: TStringField
      FieldName = 'NUM_DOCUMENTO'
      Origin = 'SOFTEPS.EMPRESAS.NUM_DOCUMENTO'
      Size = 18
    end
    object qrymcemp890COD_SUCURSAL: TStringField
      FieldName = 'COD_SUCURSAL'
      Origin = 'SOFTEPS.EMPRESAS.COD_SUCURSAL'
      Size = 2
    end
    object qrymcemp890COD_ACTIVIDAD_ECO: TStringField
      FieldName = 'COD_ACTIVIDAD_ECO'
      Origin = 'SOFTEPS.EMPRESAS.COD_ACTIVIDAD_ECO'
      Size = 4
    end
    object qrymcemp890COD_ESTADO: TStringField
      FieldName = 'COD_ESTADO'
      Origin = 'SOFTEPS.EMPRESAS.COD_ESTADO'
      Size = 2
    end
    object qrymcemp890COD_OFICINA: TStringField
      FieldName = 'COD_OFICINA'
      Origin = 'SOFTEPS.EMPRESAS.COD_OFICINA'
      Size = 3
    end
    object qrymcemp890COD_REGIONAL: TStringField
      FieldName = 'COD_REGIONAL'
      Origin = 'SOFTEPS.EMPRESAS.COD_REGIONAL'
      Size = 3
    end
    object qrymcemp890TIP_DOCUMENTO_ARP: TStringField
      FieldName = 'TIP_DOCUMENTO_ARP'
      Origin = 'SOFTEPS.EMPRESAS.TIP_DOCUMENTO_ARP'
      Size = 3
    end
    object qrymcemp890NUM_DOCUMENTO_ARP: TStringField
      FieldName = 'NUM_DOCUMENTO_ARP'
      Origin = 'SOFTEPS.EMPRESAS.NUM_DOCUMENTO_ARP'
      Size = 18
    end
    object qrymcemp890COD_DEPARTAMENTO: TStringField
      FieldName = 'COD_DEPARTAMENTO'
      Origin = 'SOFTEPS.EMPRESAS.COD_DEPARTAMENTO'
      Size = 2
    end
    object qrymcemp890COD_CIUDAD: TStringField
      FieldName = 'COD_CIUDAD'
      Origin = 'SOFTEPS.EMPRESAS.COD_CIUDAD'
      Size = 3
    end
    object qrymcemp890TIP_APORTANTE: TStringField
      FieldName = 'TIP_APORTANTE'
      Origin = 'SOFTEPS.EMPRESAS.TIP_APORTANTE'
      Size = 1
    end
    object qrymcemp890NOM_EMPRESA: TStringField
      FieldName = 'NOM_EMPRESA'
      Origin = 'SOFTEPS.EMPRESAS.NOM_EMPRESA'
      Size = 100
    end
    object qrymcemp890FEC_AFILIACION: TDateTimeField
      FieldName = 'FEC_AFILIACION'
      Origin = 'SOFTEPS.EMPRESAS.FEC_AFILIACION'
    end
    object qrymcemp890DIR_EMPRESA: TStringField
      FieldName = 'DIR_EMPRESA'
      Origin = 'SOFTEPS.EMPRESAS.DIR_EMPRESA'
      Size = 50
    end
    object qrymcemp890TEL_EMPRESA: TStringField
      FieldName = 'TEL_EMPRESA'
      Origin = 'SOFTEPS.EMPRESAS.TEL_EMPRESA'
    end
    object qrymcemp890TEL_EMPRESA2: TStringField
      FieldName = 'TEL_EMPRESA2'
      Origin = 'SOFTEPS.EMPRESAS.TEL_EMPRESA2'
    end
    object qrymcemp890URL_EMPRESA: TStringField
      FieldName = 'URL_EMPRESA'
      Origin = 'SOFTEPS.EMPRESAS.URL_EMPRESA'
    end
    object qrymcemp890EML_EMPRESA: TStringField
      FieldName = 'EML_EMPRESA'
      Origin = 'SOFTEPS.EMPRESAS.EML_EMPRESA'
      Size = 50
    end
    object qrymcemp890TOT_EMPLEADOS: TStringField
      FieldName = 'TOT_EMPLEADOS'
      Origin = 'SOFTEPS.EMPRESAS.TOT_EMPLEADOS'
      Size = 10
    end
    object qrymcemp890COD_TIPO_PER: TStringField
      FieldName = 'COD_TIPO_PER'
      Origin = 'SOFTEPS.EMPRESAS.COD_TIPO_PER'
      Size = 1
    end
    object qrymcemp890COD_ZONA: TStringField
      FieldName = 'COD_ZONA'
      Origin = 'SOFTEPS.EMPRESAS.COD_ZONA'
      Size = 3
    end
    object qrymcemp890COD_DEPARTAMENTO_PAG: TStringField
      FieldName = 'COD_DEPARTAMENTO_PAG'
      Origin = 'SOFTEPS.EMPRESAS.COD_DEPARTAMENTO_PAG'
      Size = 2
    end
    object qrymcemp890COD_CIUDAD_PAG: TStringField
      FieldName = 'COD_CIUDAD_PAG'
      Origin = 'SOFTEPS.EMPRESAS.COD_CIUDAD_PAG'
      Size = 3
    end
    object qrymcemp890COD_PRESENTACION_COM: TStringField
      FieldName = 'COD_PRESENTACION_COM'
      Origin = 'SOFTEPS.EMPRESAS.COD_PRESENTACION_COM'
      Size = 1
    end
    object qrymcemp890COD_TIP_EMPRESA: TStringField
      FieldName = 'COD_TIP_EMPRESA'
      Origin = 'SOFTEPS.EMPRESAS.COD_TIP_EMPRESA'
      Size = 1
    end
    object qrymcemp890TIP_DOCUMENTO_PEN: TStringField
      FieldName = 'TIP_DOCUMENTO_PEN'
      Origin = 'SOFTEPS.EMPRESAS.TIP_DOCUMENTO_PEN'
      Size = 3
    end
    object qrymcemp890NUM_DOCUMENTO_PEN: TStringField
      FieldName = 'NUM_DOCUMENTO_PEN'
      Origin = 'SOFTEPS.EMPRESAS.NUM_DOCUMENTO_PEN'
      Size = 18
    end
  end
  object qrycapita: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      
        'select * from declaraciones,afiliados_compensados,afiliados,pres' +
        'tadores,ciudades,departamentos'
      'where declaraciones.periodo_compensado = :periodo'
      'and   declaraciones.fecha_declaracion <= :fec_corte'
      'and   afiliados.num_documento_ips = :ips'
      'and  prestadores.cod_reginal = :reg'
      
        'and   declaraciones.num_declaracion=afiliados_compensados.num_de' +
        'claracion'
      
        'and   afiliados_compensados.afi_tipo_doc = afiliados.tip_documen' +
        'to'
      
        'and   afiliados_compensados.afi_numero_doc = afiliados.num_docum' +
        'ento'
      
        'and   afiliados.tip_documento_ips = prestadores.tip_identificaci' +
        'on'
      
        'and   afiliados.num_documento_ips = prestadores.num_identificaci' +
        'on'
      'and   afiliados.cod_departamento_res = ciudades.cod_departamento'
      'and   afiliados.cod_ciudad_res = ciudades.cod_ciudad'
      
        'and   afiliados.cod_departamento_res = departamentos.cod_departa' +
        'mento'
      'order by afiliados.tip_documento_ips,afiliados.num_documento_ips')
    Left = 229
    Top = 10
    ParamData = <
      item
        DataType = ftString
        Name = 'periodo'
        ParamType = ptInputOutput
        Value = ''
      end
      item
        DataType = ftDateTime
        Name = 'fec_corte'
        ParamType = ptInputOutput
        Value = 0d
      end
      item
        DataType = ftString
        Name = 'ips'
        ParamType = ptInputOutput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'reg'
        ParamType = ptInputOutput
        Value = ''
      end>
    object qrycapitaNUM_DECLARACION: TFloatField
      FieldName = 'NUM_DECLARACION'
      Origin = 'SOFTEPS.DECLARACIONES.NUM_DECLARACION'
    end
    object qrycapitaCOT_TIPO_DECLA: TFloatField
      FieldName = 'COT_TIPO_DECLA'
      Origin = 'SOFTEPS.DECLARACIONES.COT_TIPO_DECLA'
    end
    object qrycapitaPERIODO_COMPENSADO: TStringField
      FieldName = 'PERIODO_COMPENSADO'
      Origin = 'SOFTEPS.DECLARACIONES.PERIODO_COMPENSADO'
      Size = 10
    end
    object qrycapitaFECHA_DECLARACION: TDateTimeField
      FieldName = 'FECHA_DECLARACION'
      Origin = 'SOFTEPS.DECLARACIONES.FECHA_DECLARACION'
    end
    object qrycapitaTIPO_CIERRE: TStringField
      FieldName = 'TIPO_CIERRE'
      Origin = 'SOFTEPS.DECLARACIONES.TIPO_CIERRE'
      Size = 1
    end
    object qrycapitaNUM_DECLARATIVA: TFloatField
      FieldName = 'NUM_DECLARATIVA'
      Origin = 'SOFTEPS.DECLARACIONES.NUM_DECLARATIVA'
    end
    object qrycapitaAFI_NUMERO_DOC: TStringField
      FieldName = 'AFI_NUMERO_DOC'
      Origin = 'SOFTEPS.DECLARACIONES.NUM_DECLARATIVA'
      Size = 18
    end
    object qrycapitaAFI_TIPO_DOC: TStringField
      FieldName = 'AFI_TIPO_DOC'
      Origin = 'SOFTEPS.DECLARACIONES.NUM_DECLARATIVA'
      Size = 3
    end
    object qrycapitaNUM_DECLARACION_1: TFloatField
      FieldName = 'NUM_DECLARACION_1'
      Origin = 'SOFTEPS.DECLARACIONES.NUM_DECLARATIVA'
    end
    object qrycapitaCOD_GRUPO_ETAREO: TFloatField
      FieldName = 'COD_GRUPO_ETAREO'
      Origin = 'SOFTEPS.DECLARACIONES.NUM_DECLARATIVA'
    end
    object qrycapitaTIP_UPC: TStringField
      FieldName = 'TIP_UPC'
      Origin = 'SOFTEPS.DECLARACIONES.NUM_DECLARATIVA'
      Size = 1
    end
    object qrycapitaTIP_PAGO: TStringField
      FieldName = 'TIP_PAGO'
      Origin = 'SOFTEPS.DECLARACIONES.NUM_DECLARATIVA'
      Size = 1
    end
    object qrycapitaTIP_BENEFICIARIO: TStringField
      FieldName = 'TIP_BENEFICIARIO'
      Origin = 'SOFTEPS.DECLARACIONES.NUM_DECLARATIVA'
      Size = 1
    end
    object qrycapitaDIAS: TStringField
      FieldName = 'DIAS'
      Origin = 'SOFTEPS.DECLARACIONES.NUM_DECLARATIVA'
      Size = 2
    end
    object qrycapitaSALARIO: TFloatField
      FieldName = 'SALARIO'
      Origin = 'SOFTEPS.DECLARACIONES.NUM_DECLARATIVA'
    end
    object qrycapitaPORCENTAJE: TStringField
      FieldName = 'PORCENTAJE'
      Origin = 'SOFTEPS.DECLARACIONES.NUM_DECLARATIVA'
      Size = 2
    end
    object qrycapitaCOTIZACION: TFloatField
      FieldName = 'COTIZACION'
      Origin = 'SOFTEPS.DECLARACIONES.NUM_DECLARATIVA'
    end
    object qrycapitaVAL_DEDUCCION: TFloatField
      FieldName = 'VAL_DEDUCCION'
      Origin = 'SOFTEPS.DECLARACIONES.NUM_DECLARATIVA'
    end
    object qrycapitaTIP_DEDUCCION: TStringField
      FieldName = 'TIP_DEDUCCION'
      Origin = 'SOFTEPS.DECLARACIONES.NUM_DECLARATIVA'
      Size = 3
    end
    object qrycapitaVALOR_UPC: TFloatField
      FieldName = 'VALOR_UPC'
      Origin = 'SOFTEPS.DECLARACIONES.NUM_DECLARATIVA'
    end
    object qrycapitaTIP_AFILIADO: TStringField
      FieldName = 'TIP_AFILIADO'
      Origin = 'SOFTEPS.DECLARACIONES.NUM_DECLARATIVA'
      Size = 1
    end
    object qrycapitaFEC_CONSIGNACION: TDateTimeField
      FieldName = 'FEC_CONSIGNACION'
      Origin = 'SOFTEPS.DECLARACIONES.NUM_DECLARATIVA'
    end
    object qrycapitaCOD_PARENTESCO: TStringField
      FieldName = 'COD_PARENTESCO'
      Origin = 'SOFTEPS.DECLARACIONES.NUM_DECLARATIVA'
      Size = 3
    end
    object qrycapitaNUM_PLANILLA: TStringField
      FieldName = 'NUM_PLANILLA'
      Origin = 'SOFTEPS.DECLARACIONES.NUM_DECLARATIVA'
      Size = 15
    end
    object qrycapitaTIP_DOCUMENTO_COT: TStringField
      FieldName = 'TIP_DOCUMENTO_COT'
      Origin = 'SOFTEPS.DECLARACIONES.NUM_DECLARATIVA'
      Size = 3
    end
    object qrycapitaNUM_DOCUMENTO_COT: TStringField
      FieldName = 'NUM_DOCUMENTO_COT'
      Origin = 'SOFTEPS.DECLARACIONES.NUM_DECLARATIVA'
      Size = 18
    end
    object qrycapitaEMP_TIPO_DOC: TStringField
      FieldName = 'EMP_TIPO_DOC'
      Origin = 'SOFTEPS.DECLARACIONES.NUM_DECLARATIVA'
      Size = 3
    end
    object qrycapitaEMP_NUMERO_DOC: TStringField
      FieldName = 'EMP_NUMERO_DOC'
      Origin = 'SOFTEPS.DECLARACIONES.NUM_DECLARATIVA'
      Size = 15
    end
    object qrycapitaID_MULTIAFILIADO: TStringField
      FieldName = 'ID_MULTIAFILIADO'
      Origin = 'SOFTEPS.DECLARACIONES.NUM_DECLARATIVA'
      Size = 9
    end
    object qrycapitaCAUSA: TStringField
      FieldName = 'CAUSA'
      Origin = 'SOFTEPS.DECLARACIONES.NUM_DECLARATIVA'
      Size = 30
    end
    object qrycapitaVAL_UPC: TFloatField
      FieldName = 'VAL_UPC'
      Origin = 'SOFTEPS.DECLARACIONES.NUM_DECLARATIVA'
    end
    object qrycapitaTIP_DOCUMENTO: TStringField
      FieldName = 'TIP_DOCUMENTO'
      Origin = 'SOFTEPS.DECLARACIONES.NUM_DECLARATIVA'
      Size = 3
    end
    object qrycapitaNUM_DOCUMENTO: TStringField
      FieldName = 'NUM_DOCUMENTO'
      Origin = 'SOFTEPS.DECLARACIONES.NUM_DECLARATIVA'
      Size = 18
    end
    object qrycapitaCOD_SEXO: TStringField
      FieldName = 'COD_SEXO'
      Origin = 'SOFTEPS.DECLARACIONES.NUM_DECLARATIVA'
      Size = 1
    end
    object qrycapitaCOD_TIPO_AFIL: TStringField
      FieldName = 'COD_TIPO_AFIL'
      Origin = 'SOFTEPS.DECLARACIONES.NUM_DECLARATIVA'
      Size = 1
    end
    object qrycapitaCOD_MODALIDAD_TRA: TStringField
      FieldName = 'COD_MODALIDAD_TRA'
      Origin = 'SOFTEPS.DECLARACIONES.NUM_DECLARATIVA'
      Size = 1
    end
    object qrycapitaCOD_ESTADO_CIV: TStringField
      FieldName = 'COD_ESTADO_CIV'
      Origin = 'SOFTEPS.DECLARACIONES.NUM_DECLARATIVA'
      Size = 1
    end
    object qrycapitaCOD_ESTRATO: TStringField
      FieldName = 'COD_ESTRATO'
      Origin = 'SOFTEPS.DECLARACIONES.NUM_DECLARATIVA'
      Size = 3
    end
    object qrycapitaCOD_ESCOLARIDAD: TStringField
      FieldName = 'COD_ESCOLARIDAD'
      Origin = 'SOFTEPS.DECLARACIONES.NUM_DECLARATIVA'
      Size = 3
    end
    object qrycapitaCOD_PROFESION: TStringField
      FieldName = 'COD_PROFESION'
      Origin = 'SOFTEPS.DECLARACIONES.NUM_DECLARATIVA'
      Size = 3
    end
    object qrycapitaCOD_ESTADO: TStringField
      FieldName = 'COD_ESTADO'
      Origin = 'SOFTEPS.DECLARACIONES.NUM_DECLARATIVA'
      Size = 2
    end
    object qrycapitaCOD_OFICINA: TStringField
      FieldName = 'COD_OFICINA'
      Origin = 'SOFTEPS.DECLARACIONES.NUM_DECLARATIVA'
      Size = 3
    end
    object qrycapitaCOD_REGIONAL: TStringField
      FieldName = 'COD_REGIONAL'
      Origin = 'SOFTEPS.DECLARACIONES.NUM_DECLARATIVA'
      Size = 3
    end
    object qrycapitaPRI_NOMBRE: TStringField
      FieldName = 'PRI_NOMBRE'
      Origin = 'SOFTEPS.DECLARACIONES.NUM_DECLARATIVA'
      Size = 25
    end
    object qrycapitaSEG_NOMBRE: TStringField
      FieldName = 'SEG_NOMBRE'
      Origin = 'SOFTEPS.DECLARACIONES.NUM_DECLARATIVA'
      Size = 25
    end
    object qrycapitaPRI_APELLIDO: TStringField
      FieldName = 'PRI_APELLIDO'
      Origin = 'SOFTEPS.DECLARACIONES.NUM_DECLARATIVA'
      Size = 25
    end
    object qrycapitaSEG_APELLIDO: TStringField
      FieldName = 'SEG_APELLIDO'
      Origin = 'SOFTEPS.DECLARACIONES.NUM_DECLARATIVA'
      Size = 25
    end
    object qrycapitaFEC_NACIMIENTO: TDateTimeField
      FieldName = 'FEC_NACIMIENTO'
      Origin = 'SOFTEPS.DECLARACIONES.NUM_DECLARATIVA'
    end
    object qrycapitaFEC_AFILIACION_SIS: TDateTimeField
      FieldName = 'FEC_AFILIACION_SIS'
      Origin = 'SOFTEPS.DECLARACIONES.NUM_DECLARATIVA'
    end
    object qrycapitaFEC_AFILIACION_UNI: TDateTimeField
      FieldName = 'FEC_AFILIACION_UNI'
      Origin = 'SOFTEPS.DECLARACIONES.NUM_DECLARATIVA'
    end
    object qrycapitaEPS_TIP_DOC: TStringField
      FieldName = 'EPS_TIP_DOC'
      Origin = 'SOFTEPS.DECLARACIONES.NUM_DECLARATIVA'
      Size = 3
    end
    object qrycapitaEPS_NUM_DOC: TStringField
      FieldName = 'EPS_NUM_DOC'
      Origin = 'SOFTEPS.DECLARACIONES.NUM_DECLARATIVA'
      Size = 18
    end
    object qrycapitaCOD_DEPARTAMENTO_RES: TStringField
      FieldName = 'COD_DEPARTAMENTO_RES'
      Origin = 'SOFTEPS.DECLARACIONES.NUM_DECLARATIVA'
      Size = 2
    end
    object qrycapitaCOD_CIUDAD_RES: TStringField
      FieldName = 'COD_CIUDAD_RES'
      Origin = 'SOFTEPS.DECLARACIONES.NUM_DECLARATIVA'
      Size = 3
    end
    object qrycapitaCOD_BARRIO_RES: TStringField
      FieldName = 'COD_BARRIO_RES'
      Origin = 'SOFTEPS.DECLARACIONES.NUM_DECLARATIVA'
      Size = 3
    end
    object qrycapitaCOD_ZONA: TStringField
      FieldName = 'COD_ZONA'
      Origin = 'SOFTEPS.DECLARACIONES.NUM_DECLARATIVA'
      Size = 3
    end
    object qrycapitaACE_TIP_DOC: TStringField
      FieldName = 'ACE_TIP_DOC'
      Origin = 'SOFTEPS.DECLARACIONES.NUM_DECLARATIVA'
      Size = 3
    end
    object qrycapitaACE_NUMERO_DOC: TStringField
      FieldName = 'ACE_NUMERO_DOC'
      Origin = 'SOFTEPS.DECLARACIONES.NUM_DECLARATIVA'
      Size = 18
    end
    object qrycapitaCOD_DISCAPACIDAD: TStringField
      FieldName = 'COD_DISCAPACIDAD'
      Origin = 'SOFTEPS.DECLARACIONES.NUM_DECLARATIVA'
      Size = 1
    end
    object qrycapitaNUM_SEMANA_COTIZA: TFloatField
      FieldName = 'NUM_SEMANA_COTIZA'
      Origin = 'SOFTEPS.DECLARACIONES.NUM_DECLARATIVA'
    end
    object qrycapitaFEC_RADICACION: TDateTimeField
      FieldName = 'FEC_RADICACION'
      Origin = 'SOFTEPS.DECLARACIONES.NUM_DECLARATIVA'
    end
    object qrycapitaNUM_FORMATO_AFIL: TStringField
      FieldName = 'NUM_FORMATO_AFIL'
      Origin = 'SOFTEPS.DECLARACIONES.NUM_DECLARATIVA'
      Size = 10
    end
    object qrycapitaDIR_AFILIADO_RES: TStringField
      FieldName = 'DIR_AFILIADO_RES'
      Origin = 'SOFTEPS.DECLARACIONES.NUM_DECLARATIVA'
      Size = 50
    end
    object qrycapitaTEL_AFILIADO_RES: TStringField
      FieldName = 'TEL_AFILIADO_RES'
      Origin = 'SOFTEPS.DECLARACIONES.NUM_DECLARATIVA'
    end
    object qrycapitaTEL_AFILIADO_RES2: TStringField
      FieldName = 'TEL_AFILIADO_RES2'
      Origin = 'SOFTEPS.DECLARACIONES.NUM_DECLARATIVA'
    end
    object qrycapitaCEL_AFILIADO: TStringField
      FieldName = 'CEL_AFILIADO'
      Origin = 'SOFTEPS.DECLARACIONES.NUM_DECLARATIVA'
    end
    object qrycapitaEML_AFILIADO: TStringField
      FieldName = 'EML_AFILIADO'
      Origin = 'SOFTEPS.DECLARACIONES.NUM_DECLARATIVA'
      Size = 50
    end
    object qrycapitaFEC_ULTIMA_NOV: TDateTimeField
      FieldName = 'FEC_ULTIMA_NOV'
      Origin = 'SOFTEPS.DECLARACIONES.NUM_DECLARATIVA'
    end
    object qrycapitaTIP_DOCUMENTO_IPS: TStringField
      FieldName = 'TIP_DOCUMENTO_IPS'
      Origin = 'SOFTEPS.DECLARACIONES.NUM_DECLARATIVA'
      Size = 3
    end
    object qrycapitaNUM_DOCUMENTO_IPS: TStringField
      FieldName = 'NUM_DOCUMENTO_IPS'
      Origin = 'SOFTEPS.DECLARACIONES.NUM_DECLARATIVA'
      Size = 18
    end
    object qrycapitaTIP_DOCUMENTO_MED: TStringField
      FieldName = 'TIP_DOCUMENTO_MED'
      Origin = 'SOFTEPS.DECLARACIONES.NUM_DECLARATIVA'
      Size = 3
    end
    object qrycapitaNUM_DOCUMENTO_MED: TStringField
      FieldName = 'NUM_DOCUMENTO_MED'
      Origin = 'SOFTEPS.DECLARACIONES.NUM_DECLARATIVA'
      Size = 18
    end
    object qrycapitaTIP_DOCUMENTO_ODO: TStringField
      FieldName = 'TIP_DOCUMENTO_ODO'
      Origin = 'SOFTEPS.DECLARACIONES.NUM_DECLARATIVA'
      Size = 3
    end
    object qrycapitaNUM_DOCUMENTO_ODO: TStringField
      FieldName = 'NUM_DOCUMENTO_ODO'
      Origin = 'SOFTEPS.DECLARACIONES.NUM_DECLARATIVA'
      Size = 18
    end
    object qrycapitaSEM_COTIZACION: TFloatField
      FieldName = 'SEM_COTIZACION'
      Origin = 'SOFTEPS.DECLARACIONES.NUM_DECLARATIVA'
    end
    object qrycapitaCOD_PRESTADOR: TStringField
      FieldName = 'COD_PRESTADOR'
      Origin = 'SOFTEPS.DECLARACIONES.NUM_DECLARATIVA'
      Size = 18
    end
    object qrycapitaMON_PRESTADOR: TStringField
      FieldName = 'MON_PRESTADOR'
      Origin = 'SOFTEPS.DECLARACIONES.NUM_DECLARATIVA'
      Size = 100
    end
    object qrycapitaNUM_ACREDITACION: TStringField
      FieldName = 'NUM_ACREDITACION'
      Origin = 'SOFTEPS.DECLARACIONES.NUM_DECLARATIVA'
      Size = 18
    end
    object qrycapitaCOD_DEPARTAMENTO: TStringField
      FieldName = 'COD_DEPARTAMENTO'
      Origin = 'SOFTEPS.DECLARACIONES.NUM_DECLARATIVA'
      Size = 2
    end
    object qrycapitaCOD_CIUDAD: TStringField
      FieldName = 'COD_CIUDAD'
      Origin = 'SOFTEPS.DECLARACIONES.NUM_DECLARATIVA'
      Size = 3
    end
    object qrycapitaDIR_PRESTADOR: TStringField
      FieldName = 'DIR_PRESTADOR'
      Origin = 'SOFTEPS.DECLARACIONES.NUM_DECLARATIVA'
      Size = 100
    end
    object qrycapitaTEL_PRESTADOR: TStringField
      FieldName = 'TEL_PRESTADOR'
      Origin = 'SOFTEPS.DECLARACIONES.NUM_DECLARATIVA'
    end
    object qrycapitaREP_LEGAL: TStringField
      FieldName = 'REP_LEGAL'
      Origin = 'SOFTEPS.DECLARACIONES.NUM_DECLARATIVA'
      Size = 100
    end
    object qrycapitaNIV_ATEN_PRESTADOR: TStringField
      FieldName = 'NIV_ATEN_PRESTADOR'
      Origin = 'SOFTEPS.DECLARACIONES.NUM_DECLARATIVA'
      Size = 50
    end
    object qrycapitaTIP_PRESTADOR: TStringField
      FieldName = 'TIP_PRESTADOR'
      Origin = 'SOFTEPS.DECLARACIONES.NUM_DECLARATIVA'
      Size = 1
    end
    object qrycapitaTIP_IDENTIFICACION: TStringField
      FieldName = 'TIP_IDENTIFICACION'
      Origin = 'SOFTEPS.DECLARACIONES.NUM_DECLARATIVA'
      Size = 3
    end
    object qrycapitaNUM_IDENTIFICACION: TStringField
      FieldName = 'NUM_IDENTIFICACION'
      Origin = 'SOFTEPS.DECLARACIONES.NUM_DECLARATIVA'
      Size = 18
    end
    object qrycapitaCLA_PRESTADOR: TStringField
      FieldName = 'CLA_PRESTADOR'
      Origin = 'SOFTEPS.DECLARACIONES.NUM_DECLARATIVA'
      Size = 2
    end
    object qrycapitaREC_COPAGO: TStringField
      FieldName = 'REC_COPAGO'
      Origin = 'SOFTEPS.DECLARACIONES.NUM_DECLARATIVA'
      Size = 1
    end
    object qrycapitaREC_CUOTA: TStringField
      FieldName = 'REC_CUOTA'
      Origin = 'SOFTEPS.DECLARACIONES.NUM_DECLARATIVA'
      Size = 1
    end
    object qrycapitaEST_PRESTADOR: TStringField
      FieldName = 'EST_PRESTADOR'
      Origin = 'SOFTEPS.DECLARACIONES.NUM_DECLARATIVA'
      Size = 1
    end
    object qrycapitaFEC_ULTIMA_AUTO: TDateTimeField
      FieldName = 'FEC_ULTIMA_AUTO'
      Origin = 'SOFTEPS.DECLARACIONES.NUM_DECLARATIVA'
    end
    object qrycapitaEST_CONTRATO: TStringField
      FieldName = 'EST_CONTRATO'
      Origin = 'SOFTEPS.DECLARACIONES.NUM_DECLARATIVA'
      Size = 1
    end
    object qrycapitaCOD_REGINAL: TStringField
      FieldName = 'COD_REGINAL'
      Origin = 'SOFTEPS.DECLARACIONES.NUM_DECLARATIVA'
      Size = 3
    end
    object qrycapitaCOD_OFICINA_1: TStringField
      FieldName = 'COD_OFICINA_1'
      Origin = 'SOFTEPS.DECLARACIONES.NUM_DECLARATIVA'
      Size = 3
    end
    object qrycapitaFEC_INGRESO: TDateTimeField
      FieldName = 'FEC_INGRESO'
      Origin = 'SOFTEPS.DECLARACIONES.NUM_DECLARATIVA'
    end
    object qrycapitaDIR_ELECTRONICA: TStringField
      FieldName = 'DIR_ELECTRONICA'
      Origin = 'SOFTEPS.DECLARACIONES.NUM_DECLARATIVA'
    end
    object qrycapitaCOD_DEPARTAMENTO_1: TStringField
      FieldName = 'COD_DEPARTAMENTO_1'
      Origin = 'SOFTEPS.DECLARACIONES.NUM_DECLARACION'
      Size = 2
    end
    object qrycapitaCOD_CIUDAD_1: TStringField
      FieldName = 'COD_CIUDAD_1'
      Origin = 'SOFTEPS.DECLARACIONES.NUM_DECLARACION'
      Size = 3
    end
    object qrycapitaNOM_CIUDAD: TStringField
      FieldName = 'NOM_CIUDAD'
      Origin = 'SOFTEPS.DECLARACIONES.NUM_DECLARACION'
      Size = 35
    end
    object qrycapitaPOR_ALTO_RIE: TStringField
      FieldName = 'POR_ALTO_RIE'
      Origin = 'SOFTEPS.DECLARACIONES.NUM_DECLARACION'
      Size = 3
    end
    object qrycapitaCOD_REGIONAL_1: TStringField
      FieldName = 'COD_REGIONAL_1'
      Origin = 'SOFTEPS.DECLARACIONES.NUM_DECLARACION'
      Size = 3
    end
    object qrycapitaVALOR_UPC_1: TFloatField
      FieldName = 'VALOR_UPC_1'
      Origin = 'SOFTEPS.DECLARACIONES.NUM_DECLARACION'
    end
    object qrycapitaCEN_COSTO: TStringField
      FieldName = 'CEN_COSTO'
      Origin = 'SOFTEPS.DECLARACIONES.NUM_DECLARACION'
      Size = 6
    end
    object qrycapitaCOD_DEPARTAMENTO_2: TStringField
      FieldName = 'COD_DEPARTAMENTO_2'
      Origin = 'SOFTEPS.DECLARACIONES.NUM_DECLARACION'
      Size = 2
    end
    object qrycapitaNOM_DEPARTAMENTO: TStringField
      FieldName = 'NOM_DEPARTAMENTO'
      Origin = 'SOFTEPS.DECLARACIONES.NUM_DECLARACION'
      Size = 35
    end
  end
  object qrymccapafi: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      'select * from afiliados,prestadores,ciudades,departamentos'
      'where afiliados.fec_afiliacion_uni >= :fec1'
      'and   afiliados.fec_afiliacion_uni <= :fec2'
      'and   afiliados.num_documento_ips = :doc'
      'and  prestadores.cod_reginal = :reg'
      'and   afiliados.cod_tipo_afil = '#39'C'#39
      
        'and   afiliados.tip_documento_ips = prestadores.tip_identificaci' +
        'on'
      
        'and   afiliados.num_documento_ips = prestadores.num_identificaci' +
        'on'
      'and   afiliados.cod_departamento_res = ciudades.cod_departamento'
      'and   afiliados.cod_ciudad_res = ciudades.cod_ciudad'
      
        'and   afiliados.cod_departamento_res = departamentos.cod_departa' +
        'mento'
      'and   afiliados.tip_documento||afiliados.num_documento not in '
      
        '      (select afiliados_compensados.afi_tipo_doc||afiliados_comp' +
        'ensados.afi_numero_doc'
      '       from afiliados_compensados, declaraciones'
      '       where declaraciones.periodo_compensado = :per          '
      
        '       and   declaraciones.num_declaracion=afiliados_compensados' +
        '.num_declaracion)')
    Left = 229
    Top = 10
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'fec1'
        ParamType = ptInputOutput
        Value = 0d
      end
      item
        DataType = ftDateTime
        Name = 'fec2'
        ParamType = ptInputOutput
        Value = 0d
      end
      item
        DataType = ftString
        Name = 'doc'
        ParamType = ptInputOutput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'reg'
        ParamType = ptInputOutput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'per'
        ParamType = ptInputOutput
        Value = ''
      end>
    object qrymccapafiTIP_DOCUMENTO: TStringField
      FieldName = 'TIP_DOCUMENTO'
      Origin = 'SOFTEPS.AFILIADOS.TIP_DOCUMENTO'
      Size = 3
    end
    object qrymccapafiNUM_DOCUMENTO: TStringField
      FieldName = 'NUM_DOCUMENTO'
      Origin = 'SOFTEPS.AFILIADOS.NUM_DOCUMENTO'
      Size = 18
    end
    object qrymccapafiCOD_SEXO: TStringField
      FieldName = 'COD_SEXO'
      Origin = 'SOFTEPS.AFILIADOS.COD_SEXO'
      Size = 1
    end
    object qrymccapafiCOD_TIPO_AFIL: TStringField
      FieldName = 'COD_TIPO_AFIL'
      Origin = 'SOFTEPS.AFILIADOS.COD_TIPO_AFIL'
      Size = 1
    end
    object qrymccapafiCOD_MODALIDAD_TRA: TStringField
      FieldName = 'COD_MODALIDAD_TRA'
      Origin = 'SOFTEPS.AFILIADOS.COD_MODALIDAD_TRA'
      Size = 1
    end
    object qrymccapafiCOD_ESTADO_CIV: TStringField
      FieldName = 'COD_ESTADO_CIV'
      Origin = 'SOFTEPS.AFILIADOS.COD_ESTADO_CIV'
      Size = 1
    end
    object qrymccapafiCOD_ESTRATO: TStringField
      FieldName = 'COD_ESTRATO'
      Origin = 'SOFTEPS.AFILIADOS.COD_ESTRATO'
      Size = 3
    end
    object qrymccapafiCOD_ESCOLARIDAD: TStringField
      FieldName = 'COD_ESCOLARIDAD'
      Origin = 'SOFTEPS.AFILIADOS.COD_ESCOLARIDAD'
      Size = 3
    end
    object qrymccapafiCOD_PROFESION: TStringField
      FieldName = 'COD_PROFESION'
      Origin = 'SOFTEPS.AFILIADOS.COD_PROFESION'
      Size = 3
    end
    object qrymccapafiCOD_ESTADO: TStringField
      FieldName = 'COD_ESTADO'
      Origin = 'SOFTEPS.AFILIADOS.COD_ESTADO'
      Size = 2
    end
    object qrymccapafiCOD_OFICINA: TStringField
      FieldName = 'COD_OFICINA'
      Origin = 'SOFTEPS.AFILIADOS.COD_OFICINA'
      Size = 3
    end
    object qrymccapafiCOD_REGIONAL: TStringField
      FieldName = 'COD_REGIONAL'
      Origin = 'SOFTEPS.AFILIADOS.COD_REGIONAL'
      Size = 3
    end
    object qrymccapafiPRI_NOMBRE: TStringField
      FieldName = 'PRI_NOMBRE'
      Origin = 'SOFTEPS.AFILIADOS.PRI_NOMBRE'
      Size = 25
    end
    object qrymccapafiSEG_NOMBRE: TStringField
      FieldName = 'SEG_NOMBRE'
      Origin = 'SOFTEPS.AFILIADOS.SEG_NOMBRE'
      Size = 25
    end
    object qrymccapafiPRI_APELLIDO: TStringField
      FieldName = 'PRI_APELLIDO'
      Origin = 'SOFTEPS.AFILIADOS.PRI_APELLIDO'
      Size = 25
    end
    object qrymccapafiSEG_APELLIDO: TStringField
      FieldName = 'SEG_APELLIDO'
      Origin = 'SOFTEPS.AFILIADOS.SEG_APELLIDO'
      Size = 25
    end
    object qrymccapafiFEC_NACIMIENTO: TDateTimeField
      FieldName = 'FEC_NACIMIENTO'
      Origin = 'SOFTEPS.AFILIADOS.FEC_NACIMIENTO'
    end
    object qrymccapafiFEC_AFILIACION_SIS: TDateTimeField
      FieldName = 'FEC_AFILIACION_SIS'
      Origin = 'SOFTEPS.AFILIADOS.FEC_AFILIACION_SIS'
    end
    object qrymccapafiFEC_AFILIACION_UNI: TDateTimeField
      FieldName = 'FEC_AFILIACION_UNI'
      Origin = 'SOFTEPS.AFILIADOS.FEC_AFILIACION_UNI'
    end
    object qrymccapafiEPS_TIP_DOC: TStringField
      FieldName = 'EPS_TIP_DOC'
      Origin = 'SOFTEPS.AFILIADOS.EPS_TIP_DOC'
      Size = 3
    end
    object qrymccapafiEPS_NUM_DOC: TStringField
      FieldName = 'EPS_NUM_DOC'
      Origin = 'SOFTEPS.AFILIADOS.EPS_NUM_DOC'
      Size = 18
    end
    object qrymccapafiCOD_DEPARTAMENTO_RES: TStringField
      FieldName = 'COD_DEPARTAMENTO_RES'
      Origin = 'SOFTEPS.AFILIADOS.COD_DEPARTAMENTO_RES'
      Size = 2
    end
    object qrymccapafiCOD_CIUDAD_RES: TStringField
      FieldName = 'COD_CIUDAD_RES'
      Origin = 'SOFTEPS.AFILIADOS.COD_CIUDAD_RES'
      Size = 3
    end
    object qrymccapafiCOD_BARRIO_RES: TStringField
      FieldName = 'COD_BARRIO_RES'
      Origin = 'SOFTEPS.AFILIADOS.COD_BARRIO_RES'
      Size = 3
    end
    object qrymccapafiCOD_ZONA: TStringField
      FieldName = 'COD_ZONA'
      Origin = 'SOFTEPS.AFILIADOS.COD_ZONA'
      Size = 3
    end
    object qrymccapafiACE_TIP_DOC: TStringField
      FieldName = 'ACE_TIP_DOC'
      Origin = 'SOFTEPS.AFILIADOS.ACE_TIP_DOC'
      Size = 3
    end
    object qrymccapafiACE_NUMERO_DOC: TStringField
      FieldName = 'ACE_NUMERO_DOC'
      Origin = 'SOFTEPS.AFILIADOS.ACE_NUMERO_DOC'
      Size = 18
    end
    object qrymccapafiCOD_DISCAPACIDAD: TStringField
      FieldName = 'COD_DISCAPACIDAD'
      Origin = 'SOFTEPS.AFILIADOS.COD_DISCAPACIDAD'
      Size = 1
    end
    object qrymccapafiNUM_SEMANA_COTIZA: TFloatField
      FieldName = 'NUM_SEMANA_COTIZA'
      Origin = 'SOFTEPS.AFILIADOS.NUM_SEMANA_COTIZA'
    end
    object qrymccapafiFEC_RADICACION: TDateTimeField
      FieldName = 'FEC_RADICACION'
      Origin = 'SOFTEPS.AFILIADOS.FEC_RADICACION'
    end
    object qrymccapafiNUM_FORMATO_AFIL: TStringField
      FieldName = 'NUM_FORMATO_AFIL'
      Origin = 'SOFTEPS.AFILIADOS.NUM_FORMATO_AFIL'
      Size = 10
    end
    object qrymccapafiDIR_AFILIADO_RES: TStringField
      FieldName = 'DIR_AFILIADO_RES'
      Origin = 'SOFTEPS.AFILIADOS.DIR_AFILIADO_RES'
      Size = 50
    end
    object qrymccapafiTEL_AFILIADO_RES: TStringField
      FieldName = 'TEL_AFILIADO_RES'
      Origin = 'SOFTEPS.AFILIADOS.TEL_AFILIADO_RES'
    end
    object qrymccapafiTEL_AFILIADO_RES2: TStringField
      FieldName = 'TEL_AFILIADO_RES2'
      Origin = 'SOFTEPS.AFILIADOS.TEL_AFILIADO_RES2'
    end
    object qrymccapafiCEL_AFILIADO: TStringField
      FieldName = 'CEL_AFILIADO'
      Origin = 'SOFTEPS.AFILIADOS.CEL_AFILIADO'
    end
    object qrymccapafiEML_AFILIADO: TStringField
      FieldName = 'EML_AFILIADO'
      Origin = 'SOFTEPS.AFILIADOS.EML_AFILIADO'
      Size = 50
    end
    object qrymccapafiFEC_ULTIMA_NOV: TDateTimeField
      FieldName = 'FEC_ULTIMA_NOV'
      Origin = 'SOFTEPS.AFILIADOS.FEC_ULTIMA_NOV'
    end
    object qrymccapafiTIP_DOCUMENTO_IPS: TStringField
      FieldName = 'TIP_DOCUMENTO_IPS'
      Origin = 'SOFTEPS.AFILIADOS.TIP_DOCUMENTO_IPS'
      Size = 3
    end
    object qrymccapafiNUM_DOCUMENTO_IPS: TStringField
      FieldName = 'NUM_DOCUMENTO_IPS'
      Origin = 'SOFTEPS.AFILIADOS.NUM_DOCUMENTO_IPS'
      Size = 18
    end
    object qrymccapafiTIP_DOCUMENTO_MED: TStringField
      FieldName = 'TIP_DOCUMENTO_MED'
      Origin = 'SOFTEPS.AFILIADOS.TIP_DOCUMENTO_MED'
      Size = 3
    end
    object qrymccapafiNUM_DOCUMENTO_MED: TStringField
      FieldName = 'NUM_DOCUMENTO_MED'
      Origin = 'SOFTEPS.AFILIADOS.NUM_DOCUMENTO_MED'
      Size = 18
    end
    object qrymccapafiTIP_DOCUMENTO_ODO: TStringField
      FieldName = 'TIP_DOCUMENTO_ODO'
      Origin = 'SOFTEPS.AFILIADOS.TIP_DOCUMENTO_ODO'
      Size = 3
    end
    object qrymccapafiNUM_DOCUMENTO_ODO: TStringField
      FieldName = 'NUM_DOCUMENTO_ODO'
      Origin = 'SOFTEPS.AFILIADOS.NUM_DOCUMENTO_ODO'
      Size = 18
    end
    object qrymccapafiSEM_COTIZACION: TFloatField
      FieldName = 'SEM_COTIZACION'
      Origin = 'SOFTEPS.AFILIADOS.SEM_COTIZACION'
    end
    object qrymccapafiCOD_PRESTADOR: TStringField
      FieldName = 'COD_PRESTADOR'
      Origin = 'SOFTEPS.AFILIADOS.SEM_COTIZACION'
      Size = 18
    end
    object qrymccapafiMON_PRESTADOR: TStringField
      FieldName = 'MON_PRESTADOR'
      Origin = 'SOFTEPS.AFILIADOS.SEM_COTIZACION'
      Size = 100
    end
    object qrymccapafiNUM_ACREDITACION: TStringField
      FieldName = 'NUM_ACREDITACION'
      Origin = 'SOFTEPS.AFILIADOS.SEM_COTIZACION'
      Size = 18
    end
    object qrymccapafiCOD_DEPARTAMENTO: TStringField
      FieldName = 'COD_DEPARTAMENTO'
      Origin = 'SOFTEPS.AFILIADOS.SEM_COTIZACION'
      Size = 2
    end
    object qrymccapafiCOD_CIUDAD: TStringField
      FieldName = 'COD_CIUDAD'
      Origin = 'SOFTEPS.AFILIADOS.SEM_COTIZACION'
      Size = 3
    end
    object qrymccapafiDIR_PRESTADOR: TStringField
      FieldName = 'DIR_PRESTADOR'
      Origin = 'SOFTEPS.AFILIADOS.SEM_COTIZACION'
      Size = 100
    end
    object qrymccapafiTEL_PRESTADOR: TStringField
      FieldName = 'TEL_PRESTADOR'
      Origin = 'SOFTEPS.AFILIADOS.SEM_COTIZACION'
    end
    object qrymccapafiREP_LEGAL: TStringField
      FieldName = 'REP_LEGAL'
      Origin = 'SOFTEPS.AFILIADOS.SEM_COTIZACION'
      Size = 100
    end
    object qrymccapafiNIV_ATEN_PRESTADOR: TStringField
      FieldName = 'NIV_ATEN_PRESTADOR'
      Origin = 'SOFTEPS.AFILIADOS.SEM_COTIZACION'
      Size = 50
    end
    object qrymccapafiTIP_PRESTADOR: TStringField
      FieldName = 'TIP_PRESTADOR'
      Origin = 'SOFTEPS.AFILIADOS.SEM_COTIZACION'
      Size = 1
    end
    object qrymccapafiTIP_IDENTIFICACION: TStringField
      FieldName = 'TIP_IDENTIFICACION'
      Origin = 'SOFTEPS.AFILIADOS.SEM_COTIZACION'
      Size = 3
    end
    object qrymccapafiNUM_IDENTIFICACION: TStringField
      FieldName = 'NUM_IDENTIFICACION'
      Origin = 'SOFTEPS.AFILIADOS.SEM_COTIZACION'
      Size = 18
    end
    object qrymccapafiCLA_PRESTADOR: TStringField
      FieldName = 'CLA_PRESTADOR'
      Origin = 'SOFTEPS.AFILIADOS.SEM_COTIZACION'
      Size = 2
    end
    object qrymccapafiREC_COPAGO: TStringField
      FieldName = 'REC_COPAGO'
      Origin = 'SOFTEPS.AFILIADOS.SEM_COTIZACION'
      Size = 1
    end
    object qrymccapafiREC_CUOTA: TStringField
      FieldName = 'REC_CUOTA'
      Origin = 'SOFTEPS.AFILIADOS.SEM_COTIZACION'
      Size = 1
    end
    object qrymccapafiEST_PRESTADOR: TStringField
      FieldName = 'EST_PRESTADOR'
      Origin = 'SOFTEPS.AFILIADOS.SEM_COTIZACION'
      Size = 1
    end
    object qrymccapafiFEC_ULTIMA_AUTO: TDateTimeField
      FieldName = 'FEC_ULTIMA_AUTO'
      Origin = 'SOFTEPS.AFILIADOS.SEM_COTIZACION'
    end
    object qrymccapafiEST_CONTRATO: TStringField
      FieldName = 'EST_CONTRATO'
      Origin = 'SOFTEPS.AFILIADOS.SEM_COTIZACION'
      Size = 1
    end
    object qrymccapafiCOD_REGINAL: TStringField
      FieldName = 'COD_REGINAL'
      Origin = 'SOFTEPS.AFILIADOS.SEM_COTIZACION'
      Size = 3
    end
    object qrymccapafiCOD_OFICINA_1: TStringField
      FieldName = 'COD_OFICINA_1'
      Origin = 'SOFTEPS.AFILIADOS.SEM_COTIZACION'
      Size = 3
    end
    object qrymccapafiFEC_INGRESO: TDateTimeField
      FieldName = 'FEC_INGRESO'
      Origin = 'SOFTEPS.AFILIADOS.SEM_COTIZACION'
    end
    object qrymccapafiDIR_ELECTRONICA: TStringField
      FieldName = 'DIR_ELECTRONICA'
      Origin = 'SOFTEPS.AFILIADOS.SEM_COTIZACION'
    end
    object qrymccapafiCOD_DEPARTAMENTO_1: TStringField
      FieldName = 'COD_DEPARTAMENTO_1'
      Origin = 'SOFTEPS.AFILIADOS.SEM_COTIZACION'
      Size = 2
    end
    object qrymccapafiCOD_CIUDAD_1: TStringField
      FieldName = 'COD_CIUDAD_1'
      Origin = 'SOFTEPS.AFILIADOS.SEM_COTIZACION'
      Size = 3
    end
    object qrymccapafiNOM_CIUDAD: TStringField
      FieldName = 'NOM_CIUDAD'
      Origin = 'SOFTEPS.AFILIADOS.SEM_COTIZACION'
      Size = 35
    end
    object qrymccapafiPOR_ALTO_RIE: TStringField
      FieldName = 'POR_ALTO_RIE'
      Origin = 'SOFTEPS.AFILIADOS.SEM_COTIZACION'
      Size = 3
    end
    object qrymccapafiCOD_REGIONAL_1: TStringField
      FieldName = 'COD_REGIONAL_1'
      Origin = 'SOFTEPS.AFILIADOS.SEM_COTIZACION'
      Size = 3
    end
    object qrymccapafiVALOR_UPC: TFloatField
      FieldName = 'VALOR_UPC'
      Origin = 'SOFTEPS.AFILIADOS.SEM_COTIZACION'
    end
    object qrymccapafiCEN_COSTO: TStringField
      FieldName = 'CEN_COSTO'
      Origin = 'SOFTEPS.AFILIADOS.SEM_COTIZACION'
      Size = 6
    end
    object qrymccapafiCOD_DEPARTAMENTO_2: TStringField
      FieldName = 'COD_DEPARTAMENTO_2'
      Origin = 'SOFTEPS.AFILIADOS.SEM_COTIZACION'
      Size = 2
    end
    object qrymccapafiNOM_DEPARTAMENTO: TStringField
      FieldName = 'NOM_DEPARTAMENTO'
      Origin = 'SOFTEPS.AFILIADOS.SEM_COTIZACION'
      Size = 35
    end
  end
  object qrymccarnur: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      'SELECT * FROM CARTERA'
      'WHERE TIP_DOCUMENTO = :tip'
      '    AND   NUM_DOCUMENTO = :doc'
      '    AND  TIP_DOCUMENTO_EMP = :tipe'
      '    AND  NUM_DOCUMENTO_EMP = :doce')
    Left = 229
    Top = 10
    ParamData = <
      item
        DataType = ftString
        Name = 'tip'
        ParamType = ptInputOutput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'doc'
        ParamType = ptInputOutput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'tipe'
        ParamType = ptInputOutput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'doce'
        ParamType = ptInputOutput
        Value = ''
      end>
    object qrymccarnurTIP_DOCUMENTO: TStringField
      FieldName = 'TIP_DOCUMENTO'
      Origin = 'SOFTEPS.CARTERA.TIP_DOCUMENTO'
      Size = 3
    end
    object qrymccarnurNUM_DOCUMENTO: TStringField
      FieldName = 'NUM_DOCUMENTO'
      Origin = 'SOFTEPS.CARTERA.NUM_DOCUMENTO'
      Size = 18
    end
    object qrymccarnurTIP_DOCUMENTO_EMP: TStringField
      FieldName = 'TIP_DOCUMENTO_EMP'
      Origin = 'SOFTEPS.CARTERA.TIP_DOCUMENTO_EMP'
      Size = 3
    end
    object qrymccarnurNUM_DOCUMENTO_EMP: TStringField
      FieldName = 'NUM_DOCUMENTO_EMP'
      Origin = 'SOFTEPS.CARTERA.NUM_DOCUMENTO_EMP'
      Size = 18
    end
    object qrymccarnurCOD_SUCURSAL_EMP: TStringField
      FieldName = 'COD_SUCURSAL_EMP'
      Origin = 'SOFTEPS.CARTERA.COD_SUCURSAL_EMP'
      Size = 2
    end
    object qrymccarnurPER_COMPENSACION: TStringField
      FieldName = 'PER_COMPENSACION'
      Origin = 'SOFTEPS.CARTERA.PER_COMPENSACION'
      Size = 7
    end
    object qrymccarnurTIPO_MORA: TStringField
      FieldName = 'TIPO_MORA'
      Origin = 'SOFTEPS.CARTERA.TIPO_MORA'
      Size = 1
    end
    object qrymccarnurVALOR_MORA: TFloatField
      FieldName = 'VALOR_MORA'
      Origin = 'SOFTEPS.CARTERA.VALOR_MORA'
    end
    object qrymccarnurVALOR_UPC: TFloatField
      FieldName = 'VALOR_UPC'
      Origin = 'SOFTEPS.CARTERA.VALOR_UPC'
    end
    object qrymccarnurCOD_TIPO_AFIL: TStringField
      FieldName = 'COD_TIPO_AFIL'
      Origin = 'SOFTEPS.CARTERA.COD_TIPO_AFIL'
      Size = 1
    end
    object qrymccarnurTIP_DOCUMENTO_COT: TStringField
      FieldName = 'TIP_DOCUMENTO_COT'
      Origin = 'SOFTEPS.CARTERA.TIP_DOCUMENTO_COT'
      Size = 3
    end
    object qrymccarnurNUM_DOCUMENTO_COT: TStringField
      FieldName = 'NUM_DOCUMENTO_COT'
      Origin = 'SOFTEPS.CARTERA.NUM_DOCUMENTO_COT'
      Size = 18
    end
    object qrymccarnurINTERES: TFloatField
      FieldName = 'INTERES'
      Origin = 'SOFTEPS.CARTERA.INTERES'
    end
  end
  object qrymcpernur: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      'SELECT * FROM AFILIADOS_COMPENSADOS,DECLARACIONES'
      'WHERE AFI_NUMERO_DOC = :doc '
      'AND   AFI_TIPO_DOC = :tp'
      
        'AND AFILIADOS_COMPENSADOS.NUM_DECLARACION = DECLARACIONES.NUM_DE' +
        'CLARACION'
      'ORDER BY DECLARACIONES.NUM_DECLARACION')
    Left = 229
    Top = 10
    ParamData = <
      item
        DataType = ftString
        Name = 'doc'
        ParamType = ptInputOutput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'tp'
        ParamType = ptInputOutput
        Value = ''
      end>
    object qrymcpernurAFI_NUMERO_DOC: TStringField
      FieldName = 'AFI_NUMERO_DOC'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.AFI_NUMERO_DOC'
      Size = 18
    end
    object qrymcpernurAFI_TIPO_DOC: TStringField
      FieldName = 'AFI_TIPO_DOC'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.AFI_TIPO_DOC'
      Size = 3
    end
    object qrymcpernurNUM_DECLARACION: TFloatField
      FieldName = 'NUM_DECLARACION'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.NUM_DECLARACION'
    end
    object qrymcpernurCOD_GRUPO_ETAREO: TFloatField
      FieldName = 'COD_GRUPO_ETAREO'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.COD_GRUPO_ETAREO'
    end
    object qrymcpernurTIP_UPC: TStringField
      FieldName = 'TIP_UPC'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.TIP_UPC'
      Size = 1
    end
    object qrymcpernurTIP_PAGO: TStringField
      FieldName = 'TIP_PAGO'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.TIP_PAGO'
      Size = 1
    end
    object qrymcpernurTIP_BENEFICIARIO: TStringField
      FieldName = 'TIP_BENEFICIARIO'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.TIP_BENEFICIARIO'
      Size = 1
    end
    object qrymcpernurDIAS: TStringField
      FieldName = 'DIAS'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.DIAS'
      Size = 2
    end
    object qrymcpernurSALARIO: TFloatField
      FieldName = 'SALARIO'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.SALARIO'
    end
    object qrymcpernurPORCENTAJE: TStringField
      FieldName = 'PORCENTAJE'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.PORCENTAJE'
      Size = 2
    end
    object qrymcpernurCOTIZACION: TFloatField
      FieldName = 'COTIZACION'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.COTIZACION'
    end
    object qrymcpernurVAL_DEDUCCION: TFloatField
      FieldName = 'VAL_DEDUCCION'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.VAL_DEDUCCION'
    end
    object qrymcpernurTIP_DEDUCCION: TStringField
      FieldName = 'TIP_DEDUCCION'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.TIP_DEDUCCION'
      Size = 3
    end
    object qrymcpernurVALOR_UPC: TFloatField
      FieldName = 'VALOR_UPC'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.VALOR_UPC'
    end
    object qrymcpernurTIP_AFILIADO: TStringField
      FieldName = 'TIP_AFILIADO'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.TIP_AFILIADO'
      Size = 1
    end
    object qrymcpernurFEC_CONSIGNACION: TDateTimeField
      FieldName = 'FEC_CONSIGNACION'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.FEC_CONSIGNACION'
    end
    object qrymcpernurCOD_PARENTESCO: TStringField
      FieldName = 'COD_PARENTESCO'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.COD_PARENTESCO'
      Size = 3
    end
    object qrymcpernurNUM_PLANILLA: TStringField
      FieldName = 'NUM_PLANILLA'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.NUM_PLANILLA'
      Size = 15
    end
    object qrymcpernurTIP_DOCUMENTO_COT: TStringField
      FieldName = 'TIP_DOCUMENTO_COT'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.TIP_DOCUMENTO_COT'
      Size = 3
    end
    object qrymcpernurNUM_DOCUMENTO_COT: TStringField
      FieldName = 'NUM_DOCUMENTO_COT'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.NUM_DOCUMENTO_COT'
      Size = 18
    end
    object qrymcpernurEMP_TIPO_DOC: TStringField
      FieldName = 'EMP_TIPO_DOC'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.EMP_TIPO_DOC'
      Size = 3
    end
    object qrymcpernurEMP_NUMERO_DOC: TStringField
      FieldName = 'EMP_NUMERO_DOC'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.EMP_NUMERO_DOC'
      Size = 15
    end
    object qrymcpernurID_MULTIAFILIADO: TStringField
      FieldName = 'ID_MULTIAFILIADO'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.ID_MULTIAFILIADO'
      Size = 9
    end
    object qrymcpernurCAUSA: TStringField
      FieldName = 'CAUSA'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.CAUSA'
      Size = 30
    end
    object qrymcpernurVAL_UPC: TFloatField
      FieldName = 'VAL_UPC'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.VAL_UPC'
    end
    object qrymcpernurNUM_DECLARACION_1: TFloatField
      FieldName = 'NUM_DECLARACION_1'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.AFI_NUMERO_DOC'
    end
    object qrymcpernurCOT_TIPO_DECLA: TFloatField
      FieldName = 'COT_TIPO_DECLA'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.AFI_NUMERO_DOC'
    end
    object qrymcpernurPERIODO_COMPENSADO: TStringField
      FieldName = 'PERIODO_COMPENSADO'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.AFI_NUMERO_DOC'
      Size = 10
    end
    object qrymcpernurFECHA_DECLARACION: TDateTimeField
      FieldName = 'FECHA_DECLARACION'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.AFI_NUMERO_DOC'
    end
    object qrymcpernurTIPO_CIERRE: TStringField
      FieldName = 'TIPO_CIERRE'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.AFI_NUMERO_DOC'
      Size = 1
    end
    object qrymcpernurNUM_DECLARATIVA: TFloatField
      FieldName = 'NUM_DECLARATIVA'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.AFI_NUMERO_DOC'
    end
  end
  object qrymcafif49: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      'SELECT * '
      'FROM AFILIADOS '
      'WHERE COD_ESTADO <> '#39'I'#39' '
      '          AND FEC_AFILIACION_UNI <= :fecha_afi'
      'ORDER BY COD_DEPARTAMENTO_RES,COD_CIUDAD_RES')
    Left = 229
    Top = 10
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'fecha_afi'
        ParamType = ptInputOutput
        Value = 0d
      end>
    object qrymcafif49COD_SEXO: TStringField
      FieldName = 'COD_SEXO'
      Origin = 'SOFTEPS.AFILIADOS.COD_SEXO'
      Size = 1
    end
    object qrymcafif49COD_TIPO_AFIL: TStringField
      FieldName = 'COD_TIPO_AFIL'
      Origin = 'SOFTEPS.AFILIADOS.COD_TIPO_AFIL'
      Size = 1
    end
    object qrymcafif49COD_ESTADO: TStringField
      FieldName = 'COD_ESTADO'
      Origin = 'SOFTEPS.AFILIADOS.COD_ESTADO'
      Size = 2
    end
    object qrymcafif49COD_OFICINA: TStringField
      FieldName = 'COD_OFICINA'
      Origin = 'SOFTEPS.AFILIADOS.COD_OFICINA'
      Size = 3
    end
    object qrymcafif49COD_REGIONAL: TStringField
      FieldName = 'COD_REGIONAL'
      Origin = 'SOFTEPS.AFILIADOS.COD_REGIONAL'
      Size = 3
    end
    object qrymcafif49PRI_NOMBRE: TStringField
      FieldName = 'PRI_NOMBRE'
      Origin = 'SOFTEPS.AFILIADOS.PRI_NOMBRE'
      Size = 25
    end
    object qrymcafif49SEG_NOMBRE: TStringField
      FieldName = 'SEG_NOMBRE'
      Origin = 'SOFTEPS.AFILIADOS.SEG_NOMBRE'
      Size = 25
    end
    object qrymcafif49PRI_APELLIDO: TStringField
      FieldName = 'PRI_APELLIDO'
      Origin = 'SOFTEPS.AFILIADOS.PRI_APELLIDO'
      Size = 25
    end
    object qrymcafif49SEG_APELLIDO: TStringField
      FieldName = 'SEG_APELLIDO'
      Origin = 'SOFTEPS.AFILIADOS.SEG_APELLIDO'
      Size = 25
    end
    object qrymcafif49FEC_NACIMIENTO: TDateTimeField
      FieldName = 'FEC_NACIMIENTO'
      Origin = 'SOFTEPS.AFILIADOS.FEC_NACIMIENTO'
    end
    object qrymcafif49FEC_AFILIACION_SIS: TDateTimeField
      FieldName = 'FEC_AFILIACION_SIS'
      Origin = 'SOFTEPS.AFILIADOS.FEC_AFILIACION_SIS'
    end
    object qrymcafif49FEC_AFILIACION_UNI: TDateTimeField
      FieldName = 'FEC_AFILIACION_UNI'
      Origin = 'SOFTEPS.AFILIADOS.FEC_AFILIACION_UNI'
    end
    object qrymcafif49COD_DEPARTAMENTO_RES: TStringField
      FieldName = 'COD_DEPARTAMENTO_RES'
      Origin = 'SOFTEPS.AFILIADOS.COD_DEPARTAMENTO_RES'
      Size = 2
    end
    object qrymcafif49COD_CIUDAD_RES: TStringField
      FieldName = 'COD_CIUDAD_RES'
      Origin = 'SOFTEPS.AFILIADOS.COD_CIUDAD_RES'
      Size = 3
    end
    object qrymcafif49TIP_DOCUMENTO: TStringField
      FieldName = 'TIP_DOCUMENTO'
      Origin = 'SOFTEPS.AFILIADOS.TIP_DOCUMENTO'
      Size = 3
    end
    object qrymcafif49NUM_DOCUMENTO: TStringField
      FieldName = 'NUM_DOCUMENTO'
      Origin = 'SOFTEPS.AFILIADOS.NUM_DOCUMENTO'
      Size = 18
    end
    object qrymcafif49COD_MODALIDAD_TRA: TStringField
      FieldName = 'COD_MODALIDAD_TRA'
      Origin = 'SOFTEPS.AFILIADOS.COD_MODALIDAD_TRA'
      Size = 1
    end
    object qrymcafif49COD_ESTADO_CIV: TStringField
      FieldName = 'COD_ESTADO_CIV'
      Origin = 'SOFTEPS.AFILIADOS.COD_ESTADO_CIV'
      Size = 1
    end
    object qrymcafif49COD_ESTRATO: TStringField
      FieldName = 'COD_ESTRATO'
      Origin = 'SOFTEPS.AFILIADOS.COD_ESTRATO'
      Size = 3
    end
    object qrymcafif49COD_ESCOLARIDAD: TStringField
      FieldName = 'COD_ESCOLARIDAD'
      Origin = 'SOFTEPS.AFILIADOS.COD_ESCOLARIDAD'
      Size = 3
    end
    object qrymcafif49COD_PROFESION: TStringField
      FieldName = 'COD_PROFESION'
      Origin = 'SOFTEPS.AFILIADOS.COD_PROFESION'
      Size = 3
    end
    object qrymcafif49EPS_TIP_DOC: TStringField
      FieldName = 'EPS_TIP_DOC'
      Origin = 'SOFTEPS.AFILIADOS.EPS_TIP_DOC'
      Size = 3
    end
    object qrymcafif49EPS_NUM_DOC: TStringField
      FieldName = 'EPS_NUM_DOC'
      Origin = 'SOFTEPS.AFILIADOS.EPS_NUM_DOC'
      Size = 18
    end
    object qrymcafif49COD_BARRIO_RES: TStringField
      FieldName = 'COD_BARRIO_RES'
      Origin = 'SOFTEPS.AFILIADOS.COD_BARRIO_RES'
      Size = 3
    end
    object qrymcafif49COD_ZONA: TStringField
      FieldName = 'COD_ZONA'
      Origin = 'SOFTEPS.AFILIADOS.COD_ZONA'
      Size = 3
    end
    object qrymcafif49ACE_TIP_DOC: TStringField
      FieldName = 'ACE_TIP_DOC'
      Origin = 'SOFTEPS.AFILIADOS.ACE_TIP_DOC'
      Size = 3
    end
    object qrymcafif49ACE_NUMERO_DOC: TStringField
      FieldName = 'ACE_NUMERO_DOC'
      Origin = 'SOFTEPS.AFILIADOS.ACE_NUMERO_DOC'
      Size = 18
    end
    object qrymcafif49COD_DISCAPACIDAD: TStringField
      FieldName = 'COD_DISCAPACIDAD'
      Origin = 'SOFTEPS.AFILIADOS.COD_DISCAPACIDAD'
      Size = 1
    end
    object qrymcafif49NUM_SEMANA_COTIZA: TFloatField
      FieldName = 'NUM_SEMANA_COTIZA'
      Origin = 'SOFTEPS.AFILIADOS.NUM_SEMANA_COTIZA'
    end
    object qrymcafif49FEC_RADICACION: TDateTimeField
      FieldName = 'FEC_RADICACION'
      Origin = 'SOFTEPS.AFILIADOS.FEC_RADICACION'
    end
    object qrymcafif49NUM_FORMATO_AFIL: TStringField
      FieldName = 'NUM_FORMATO_AFIL'
      Origin = 'SOFTEPS.AFILIADOS.NUM_FORMATO_AFIL'
      Size = 10
    end
    object qrymcafif49DIR_AFILIADO_RES: TStringField
      FieldName = 'DIR_AFILIADO_RES'
      Origin = 'SOFTEPS.AFILIADOS.DIR_AFILIADO_RES'
      Size = 50
    end
    object qrymcafif49TEL_AFILIADO_RES: TStringField
      FieldName = 'TEL_AFILIADO_RES'
      Origin = 'SOFTEPS.AFILIADOS.TEL_AFILIADO_RES'
    end
    object qrymcafif49TEL_AFILIADO_RES2: TStringField
      FieldName = 'TEL_AFILIADO_RES2'
      Origin = 'SOFTEPS.AFILIADOS.TEL_AFILIADO_RES2'
    end
    object qrymcafif49CEL_AFILIADO: TStringField
      FieldName = 'CEL_AFILIADO'
      Origin = 'SOFTEPS.AFILIADOS.CEL_AFILIADO'
    end
    object qrymcafif49EML_AFILIADO: TStringField
      FieldName = 'EML_AFILIADO'
      Origin = 'SOFTEPS.AFILIADOS.EML_AFILIADO'
      Size = 50
    end
    object qrymcafif49FEC_ULTIMA_NOV: TDateTimeField
      FieldName = 'FEC_ULTIMA_NOV'
      Origin = 'SOFTEPS.AFILIADOS.FEC_ULTIMA_NOV'
    end
    object qrymcafif49TIP_DOCUMENTO_IPS: TStringField
      FieldName = 'TIP_DOCUMENTO_IPS'
      Origin = 'SOFTEPS.AFILIADOS.TIP_DOCUMENTO_IPS'
      Size = 3
    end
    object qrymcafif49NUM_DOCUMENTO_IPS: TStringField
      FieldName = 'NUM_DOCUMENTO_IPS'
      Origin = 'SOFTEPS.AFILIADOS.NUM_DOCUMENTO_IPS'
      Size = 18
    end
    object qrymcafif49TIP_DOCUMENTO_MED: TStringField
      FieldName = 'TIP_DOCUMENTO_MED'
      Origin = 'SOFTEPS.AFILIADOS.TIP_DOCUMENTO_MED'
      Size = 3
    end
    object qrymcafif49NUM_DOCUMENTO_MED: TStringField
      FieldName = 'NUM_DOCUMENTO_MED'
      Origin = 'SOFTEPS.AFILIADOS.NUM_DOCUMENTO_MED'
      Size = 18
    end
    object qrymcafif49TIP_DOCUMENTO_ODO: TStringField
      FieldName = 'TIP_DOCUMENTO_ODO'
      Origin = 'SOFTEPS.AFILIADOS.TIP_DOCUMENTO_ODO'
      Size = 3
    end
    object qrymcafif49NUM_DOCUMENTO_ODO: TStringField
      FieldName = 'NUM_DOCUMENTO_ODO'
      Origin = 'SOFTEPS.AFILIADOS.NUM_DOCUMENTO_ODO'
      Size = 18
    end
    object qrymcafif49SEM_COTIZACION: TFloatField
      FieldName = 'SEM_COTIZACION'
      Origin = 'SOFTEPS.AFILIADOS.SEM_COTIZACION'
    end
  end
  object qrycappres: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      'SELECT * FROM PRESTADORES'
      'WHERE COD_REGINAL = :REG')
    Left = 229
    Top = 10
    ParamData = <
      item
        DataType = ftString
        Name = 'REG'
        ParamType = ptInputOutput
        Value = ''
      end>
    object qrycappresCOD_PRESTADOR: TStringField
      FieldName = 'COD_PRESTADOR'
      Origin = 'SOFTEPS.PRESTADORES.COD_PRESTADOR'
      Size = 18
    end
    object qrycappresMON_PRESTADOR: TStringField
      FieldName = 'MON_PRESTADOR'
      Origin = 'SOFTEPS.PRESTADORES.MON_PRESTADOR'
      Size = 100
    end
    object qrycappresNUM_ACREDITACION: TStringField
      FieldName = 'NUM_ACREDITACION'
      Origin = 'SOFTEPS.PRESTADORES.NUM_ACREDITACION'
      Size = 18
    end
    object qrycappresCOD_DEPARTAMENTO: TStringField
      FieldName = 'COD_DEPARTAMENTO'
      Origin = 'SOFTEPS.PRESTADORES.COD_DEPARTAMENTO'
      Size = 2
    end
    object qrycappresCOD_CIUDAD: TStringField
      FieldName = 'COD_CIUDAD'
      Origin = 'SOFTEPS.PRESTADORES.COD_CIUDAD'
      Size = 3
    end
    object qrycappresDIR_PRESTADOR: TStringField
      FieldName = 'DIR_PRESTADOR'
      Origin = 'SOFTEPS.PRESTADORES.DIR_PRESTADOR'
      Size = 100
    end
    object qrycappresTEL_PRESTADOR: TStringField
      FieldName = 'TEL_PRESTADOR'
      Origin = 'SOFTEPS.PRESTADORES.TEL_PRESTADOR'
    end
    object qrycappresREP_LEGAL: TStringField
      FieldName = 'REP_LEGAL'
      Origin = 'SOFTEPS.PRESTADORES.REP_LEGAL'
      Size = 100
    end
    object qrycappresNIV_ATEN_PRESTADOR: TStringField
      FieldName = 'NIV_ATEN_PRESTADOR'
      Origin = 'SOFTEPS.PRESTADORES.NIV_ATEN_PRESTADOR'
      Size = 50
    end
    object qrycappresTIP_PRESTADOR: TStringField
      FieldName = 'TIP_PRESTADOR'
      Origin = 'SOFTEPS.PRESTADORES.TIP_PRESTADOR'
      Size = 1
    end
    object qrycappresTIP_IDENTIFICACION: TStringField
      FieldName = 'TIP_IDENTIFICACION'
      Origin = 'SOFTEPS.PRESTADORES.TIP_IDENTIFICACION'
      Size = 3
    end
    object qrycappresNUM_IDENTIFICACION: TStringField
      FieldName = 'NUM_IDENTIFICACION'
      Origin = 'SOFTEPS.PRESTADORES.NUM_IDENTIFICACION'
      Size = 18
    end
    object qrycappresCLA_PRESTADOR: TStringField
      FieldName = 'CLA_PRESTADOR'
      Origin = 'SOFTEPS.PRESTADORES.CLA_PRESTADOR'
      Size = 2
    end
    object qrycappresREC_COPAGO: TStringField
      FieldName = 'REC_COPAGO'
      Origin = 'SOFTEPS.PRESTADORES.REC_COPAGO'
      Size = 1
    end
    object qrycappresREC_CUOTA: TStringField
      FieldName = 'REC_CUOTA'
      Origin = 'SOFTEPS.PRESTADORES.REC_CUOTA'
      Size = 1
    end
    object qrycappresEST_PRESTADOR: TStringField
      FieldName = 'EST_PRESTADOR'
      Origin = 'SOFTEPS.PRESTADORES.EST_PRESTADOR'
      Size = 1
    end
    object qrycappresFEC_ULTIMA_AUTO: TDateTimeField
      FieldName = 'FEC_ULTIMA_AUTO'
      Origin = 'SOFTEPS.PRESTADORES.FEC_ULTIMA_AUTO'
    end
    object qrycappresEST_CONTRATO: TStringField
      FieldName = 'EST_CONTRATO'
      Origin = 'SOFTEPS.PRESTADORES.EST_CONTRATO'
      Size = 1
    end
    object qrycappresCOD_REGINAL: TStringField
      FieldName = 'COD_REGINAL'
      Origin = 'SOFTEPS.PRESTADORES.COD_REGINAL'
      Size = 3
    end
    object qrycappresCOD_OFICINA: TStringField
      FieldName = 'COD_OFICINA'
      Origin = 'SOFTEPS.PRESTADORES.COD_OFICINA'
      Size = 3
    end
    object qrycappresFEC_INGRESO: TDateTimeField
      FieldName = 'FEC_INGRESO'
      Origin = 'SOFTEPS.PRESTADORES.FEC_INGRESO'
    end
    object qrycappresDIR_ELECTRONICA: TStringField
      FieldName = 'DIR_ELECTRONICA'
      Origin = 'SOFTEPS.PRESTADORES.DIR_ELECTRONICA'
    end
  end
  object qrymcdepto: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      'SELECT * FROM DEPARTAMENTOS WHERE '
      'COD_DEPARTAMENTO = :DPTO')
    Left = 229
    Top = 10
    ParamData = <
      item
        DataType = ftString
        Name = 'DPTO'
        ParamType = ptInputOutput
        Value = ''
      end>
    object qrymcdeptoCOD_DEPARTAMENTO: TStringField
      FieldName = 'COD_DEPARTAMENTO'
      Origin = 'SOFTEPS.DEPARTAMENTOS.COD_DEPARTAMENTO'
      Size = 2
    end
    object qrymcdeptoNOM_DEPARTAMENTO: TStringField
      FieldName = 'NOM_DEPARTAMENTO'
      Origin = 'SOFTEPS.DEPARTAMENTOS.NOM_DEPARTAMENTO'
      Size = 35
    end
  end
  object qrymcempresa: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      'SELECT COD_ACTIVIDAD_ECO FROM EMPRESAS'
      'WHERE TIP_DOCUMENTO = :TP_DOC'
      'AND NUM_DOCUMENTO = :DOC')
    Left = 229
    Top = 10
    ParamData = <
      item
        DataType = ftString
        Name = 'TP_DOC'
        ParamType = ptInputOutput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'DOC'
        ParamType = ptInputOutput
        Value = ''
      end>
    object qrymcempresaCOD_ACTIVIDAD_ECO: TStringField
      FieldName = 'COD_ACTIVIDAD_ECO'
      Origin = 'SOFTEPS.EMPRESAS.COD_ACTIVIDAD_ECO'
      Size = 4
    end
  end
  object qrymcmulsol: TQuery
    DatabaseName = 'softeps'
    RequestLive = True
    SQL.Strings = (
      'SELECT EST_MULTIAFILIADO, ID_MULTIAFILIADO, CAUSA'
      'FROM AFILIADOS_COMPENSADOS'
      'WHERE AFI_TIPO_DOC = :TP'
      'AND AFI_NUMERO_DOC = :NM'
      'AND NUM_DECLARACION = :DEC'
      'AND (EST_MULTIAFILIADO ='#39'MUL'#39' OR EST_MULTIAFILIADO ='#39'ERR'#39')')
    Left = 229
    Top = 10
    ParamData = <
      item
        DataType = ftString
        Name = 'TP'
        ParamType = ptInputOutput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NM'
        ParamType = ptInputOutput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'DEC'
        ParamType = ptInputOutput
        Value = ''
      end>
    object qrymcmulsolEST_MULTIAFILIADO: TStringField
      FieldName = 'EST_MULTIAFILIADO'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.EST_MULTIAFILIADO'
      Size = 3
    end
    object qrymcmulsolID_MULTIAFILIADO: TStringField
      FieldName = 'ID_MULTIAFILIADO'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.ID_MULTIAFILIADO'
      Size = 9
    end
    object qrymcmulsolCAUSA: TStringField
      FieldName = 'CAUSA'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.CAUSA'
      Size = 30
    end
  end
  object qrymcciemulsol: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      'SELECT * FROM AFILIADOS_COMPENSADOS, DECLARACIONES'
      'WHERE EST_MULTIAFILIADO = '#39'CIE'#39
      
        'AND AFILIADOS_COMPENSADOS.NUM_DECLARACION = DECLARACIONES.NUM_DE' +
        'CLARACION'
      'ORDER BY DECLARACIONES.NUM_DECLARACION')
    Left = 229
    Top = 10
    object qrymcciemulsolAFI_NUMERO_DOC: TStringField
      FieldName = 'AFI_NUMERO_DOC'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.AFI_NUMERO_DOC'
      Size = 18
    end
    object qrymcciemulsolAFI_TIPO_DOC: TStringField
      FieldName = 'AFI_TIPO_DOC'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.AFI_TIPO_DOC'
      Size = 3
    end
    object qrymcciemulsolNUM_DECLARACION: TFloatField
      FieldName = 'NUM_DECLARACION'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.NUM_DECLARACION'
    end
    object qrymcciemulsolCOD_GRUPO_ETAREO: TFloatField
      FieldName = 'COD_GRUPO_ETAREO'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.COD_GRUPO_ETAREO'
    end
    object qrymcciemulsolTIP_PAGO: TStringField
      FieldName = 'TIP_PAGO'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.TIP_PAGO'
      Size = 1
    end
    object qrymcciemulsolTIP_BENEFICIARIO: TStringField
      FieldName = 'TIP_BENEFICIARIO'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.TIP_BENEFICIARIO'
      Size = 1
    end
    object qrymcciemulsolDIAS: TStringField
      FieldName = 'DIAS'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.DIAS'
      Size = 2
    end
    object qrymcciemulsolTIP_UPC: TStringField
      FieldName = 'TIP_UPC'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.TIP_UPC'
      Size = 1
    end
    object qrymcciemulsolSALARIO: TFloatField
      FieldName = 'SALARIO'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.SALARIO'
    end
    object qrymcciemulsolPORCENTAJE: TStringField
      FieldName = 'PORCENTAJE'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.PORCENTAJE'
      Size = 2
    end
    object qrymcciemulsolCOTIZACION: TFloatField
      FieldName = 'COTIZACION'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.COTIZACION'
    end
    object qrymcciemulsolVAL_DEDUCCION: TFloatField
      FieldName = 'VAL_DEDUCCION'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.VAL_DEDUCCION'
    end
    object qrymcciemulsolTIP_DEDUCCION: TStringField
      FieldName = 'TIP_DEDUCCION'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.TIP_DEDUCCION'
      Size = 3
    end
    object qrymcciemulsolVALOR_UPC: TFloatField
      FieldName = 'VALOR_UPC'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.VALOR_UPC'
    end
    object qrymcciemulsolTIP_AFILIADO: TStringField
      FieldName = 'TIP_AFILIADO'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.TIP_AFILIADO'
      Size = 1
    end
    object qrymcciemulsolFEC_CONSIGNACION: TDateTimeField
      FieldName = 'FEC_CONSIGNACION'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.FEC_CONSIGNACION'
    end
    object qrymcciemulsolCOD_PARENTESCO: TStringField
      FieldName = 'COD_PARENTESCO'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.COD_PARENTESCO'
      Size = 3
    end
    object qrymcciemulsolNUM_PLANILLA: TStringField
      FieldName = 'NUM_PLANILLA'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.NUM_PLANILLA'
      Size = 15
    end
    object qrymcciemulsolTIP_DOCUMENTO_COT: TStringField
      FieldName = 'TIP_DOCUMENTO_COT'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.TIP_DOCUMENTO_COT'
      Size = 3
    end
    object qrymcciemulsolNUM_DOCUMENTO_COT: TStringField
      FieldName = 'NUM_DOCUMENTO_COT'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.NUM_DOCUMENTO_COT'
      Size = 18
    end
    object qrymcciemulsolEMP_TIPO_DOC: TStringField
      FieldName = 'EMP_TIPO_DOC'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.EMP_TIPO_DOC'
      Size = 3
    end
    object qrymcciemulsolEMP_NUMERO_DOC: TStringField
      FieldName = 'EMP_NUMERO_DOC'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.EMP_NUMERO_DOC'
      Size = 15
    end
    object qrymcciemulsolID_MULTIAFILIADO: TStringField
      FieldName = 'ID_MULTIAFILIADO'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.ID_MULTIAFILIADO'
      Size = 9
    end
    object qrymcciemulsolCAUSA: TStringField
      FieldName = 'CAUSA'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.CAUSA'
      Size = 30
    end
    object qrymcciemulsolVAL_UPC: TFloatField
      FieldName = 'VAL_UPC'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.VAL_UPC'
    end
    object qrymcciemulsolEST_MULTIAFILIADO: TStringField
      FieldName = 'EST_MULTIAFILIADO'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.EST_MULTIAFILIADO'
      Size = 3
    end
    object qrymcciemulsolNUM_DECLARACION_1: TFloatField
      FieldName = 'NUM_DECLARACION_1'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.AFI_NUMERO_DOC'
    end
    object qrymcciemulsolCOT_TIPO_DECLA: TFloatField
      FieldName = 'COT_TIPO_DECLA'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.AFI_NUMERO_DOC'
    end
    object qrymcciemulsolPERIODO_COMPENSADO: TStringField
      FieldName = 'PERIODO_COMPENSADO'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.AFI_NUMERO_DOC'
      Size = 10
    end
    object qrymcciemulsolFECHA_DECLARACION: TDateTimeField
      FieldName = 'FECHA_DECLARACION'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.AFI_NUMERO_DOC'
    end
    object qrymcciemulsolTIPO_CIERRE: TStringField
      FieldName = 'TIPO_CIERRE'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.AFI_NUMERO_DOC'
      Size = 1
    end
    object qrymcciemulsolNUM_DECLARATIVA: TFloatField
      FieldName = 'NUM_DECLARATIVA'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.AFI_NUMERO_DOC'
    end
  end
  object qrymcactdec: TQuery
    DatabaseName = 'softeps'
    RequestLive = True
    SQL.Strings = (
      'SELECT NUM_DECLARACION, NUM_DECLARACION_ANT'
      'FROM AFILIADOS_COMPENSADOS'
      'WHERE AFI_NUMERO_DOC = :DOC'
      'AND AFI_TIPO_DOC = :TP'
      'AND NUM_DECLARACION = :NM')
    Left = 229
    Top = 10
    ParamData = <
      item
        DataType = ftString
        Name = 'DOC'
        ParamType = ptInputOutput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'TP'
        ParamType = ptInputOutput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NM'
        ParamType = ptInputOutput
        Value = ''
      end>
    object qrymcactdecNUM_DECLARACION: TFloatField
      FieldName = 'NUM_DECLARACION'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.NUM_DECLARACION'
    end
    object qrymcactdecNUM_DECLARACION_ANT: TFloatField
      FieldName = 'NUM_DECLARACION_ANT'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.NUM_DECLARACION_ANT'
    end
  end
  object qrymcactestmul: TQuery
    DatabaseName = 'softeps'
    RequestLive = True
    SQL.Strings = (
      'SELECT EST_MULTIAFILIADO  FROM AFILIADOS_COMPENSADOS'
      'WHERE EST_MULTIAFILIADO = '#39'CIE'#39)
    Left = 229
    Top = 10
    object qrymcactestmulEST_MULTIAFILIADO: TStringField
      FieldName = 'EST_MULTIAFILIADO'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.EST_MULTIAFILIADO'
      Size = 3
    end
  end
  object qrymcregional: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      'SELECT COD_REGIONAL FROM REGIONALES'
      'ORDER BY COD_REGIONAL')
    Left = 227
    Top = 4
    object qrymcregionalCOD_REGIONAL: TStringField
      FieldName = 'COD_REGIONAL'
      Origin = 'SOFTEPS.REGIONALES.COD_REGIONAL'
      Size = 3
    end
  end
  object qrymcmulsol1: TQuery
    DatabaseName = 'softeps'
    RequestLive = True
    SQL.Strings = (
      'SELECT * FROM AFILIADOS_COMPENSADOS'
      'WHERE AFI_TIPO_DOC = :TP'
      'AND AFI_NUMERO_DOC = :NM'
      'AND NUM_DECLARACION = :DEC'
      ''
      '')
    Left = 229
    Top = 10
    ParamData = <
      item
        DataType = ftString
        Name = 'TP'
        ParamType = ptInputOutput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NM'
        ParamType = ptInputOutput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'DEC'
        ParamType = ptInputOutput
        Value = ''
      end>
    object qrymcmulsol1AFI_NUMERO_DOC: TStringField
      FieldName = 'AFI_NUMERO_DOC'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.AFI_NUMERO_DOC'
      Size = 18
    end
    object qrymcmulsol1AFI_TIPO_DOC: TStringField
      FieldName = 'AFI_TIPO_DOC'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.AFI_TIPO_DOC'
      Size = 3
    end
    object qrymcmulsol1NUM_DECLARACION: TFloatField
      FieldName = 'NUM_DECLARACION'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.NUM_DECLARACION'
    end
    object qrymcmulsol1COD_GRUPO_ETAREO: TFloatField
      FieldName = 'COD_GRUPO_ETAREO'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.COD_GRUPO_ETAREO'
    end
    object qrymcmulsol1TIP_UPC: TStringField
      FieldName = 'TIP_UPC'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.TIP_UPC'
      Size = 1
    end
    object qrymcmulsol1TIP_PAGO: TStringField
      FieldName = 'TIP_PAGO'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.TIP_PAGO'
      Size = 1
    end
    object qrymcmulsol1TIP_BENEFICIARIO: TStringField
      FieldName = 'TIP_BENEFICIARIO'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.TIP_BENEFICIARIO'
      Size = 1
    end
    object qrymcmulsol1DIAS: TStringField
      FieldName = 'DIAS'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.DIAS'
      Size = 2
    end
    object qrymcmulsol1SALARIO: TFloatField
      FieldName = 'SALARIO'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.SALARIO'
    end
    object qrymcmulsol1PORCENTAJE: TStringField
      FieldName = 'PORCENTAJE'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.PORCENTAJE'
      Size = 2
    end
    object qrymcmulsol1COTIZACION: TFloatField
      FieldName = 'COTIZACION'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.COTIZACION'
    end
    object qrymcmulsol1VAL_DEDUCCION: TFloatField
      FieldName = 'VAL_DEDUCCION'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.VAL_DEDUCCION'
    end
    object qrymcmulsol1TIP_DEDUCCION: TStringField
      FieldName = 'TIP_DEDUCCION'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.TIP_DEDUCCION'
      Size = 3
    end
    object qrymcmulsol1VALOR_UPC: TFloatField
      FieldName = 'VALOR_UPC'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.VALOR_UPC'
    end
    object qrymcmulsol1TIP_AFILIADO: TStringField
      FieldName = 'TIP_AFILIADO'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.TIP_AFILIADO'
      Size = 1
    end
    object qrymcmulsol1FEC_CONSIGNACION: TDateTimeField
      FieldName = 'FEC_CONSIGNACION'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.FEC_CONSIGNACION'
    end
    object qrymcmulsol1COD_PARENTESCO: TStringField
      FieldName = 'COD_PARENTESCO'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.COD_PARENTESCO'
      Size = 3
    end
    object qrymcmulsol1NUM_PLANILLA: TStringField
      FieldName = 'NUM_PLANILLA'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.NUM_PLANILLA'
      Size = 15
    end
    object qrymcmulsol1TIP_DOCUMENTO_COT: TStringField
      FieldName = 'TIP_DOCUMENTO_COT'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.TIP_DOCUMENTO_COT'
      Size = 3
    end
    object qrymcmulsol1NUM_DOCUMENTO_COT: TStringField
      FieldName = 'NUM_DOCUMENTO_COT'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.NUM_DOCUMENTO_COT'
      Size = 18
    end
    object qrymcmulsol1EMP_TIPO_DOC: TStringField
      FieldName = 'EMP_TIPO_DOC'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.EMP_TIPO_DOC'
      Size = 3
    end
    object qrymcmulsol1EMP_NUMERO_DOC: TStringField
      FieldName = 'EMP_NUMERO_DOC'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.EMP_NUMERO_DOC'
      Size = 15
    end
    object qrymcmulsol1ID_MULTIAFILIADO: TStringField
      FieldName = 'ID_MULTIAFILIADO'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.ID_MULTIAFILIADO'
      Size = 9
    end
    object qrymcmulsol1CAUSA: TStringField
      FieldName = 'CAUSA'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.CAUSA'
      Size = 30
    end
    object qrymcmulsol1VAL_UPC: TFloatField
      FieldName = 'VAL_UPC'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.VAL_UPC'
    end
    object qrymcmulsol1EST_MULTIAFILIADO: TStringField
      FieldName = 'EST_MULTIAFILIADO'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.EST_MULTIAFILIADO'
      Size = 3
    end
    object qrymcmulsol1NUM_DECLARACION_ANT: TFloatField
      FieldName = 'NUM_DECLARACION_ANT'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.NUM_DECLARACION_ANT'
    end
  end
  object qrymcgcorr: TQuery
    DatabaseName = 'softeps'
    RequestLive = True
    SQL.Strings = (
      'SELECT * FROM AFILIADOS_COMPENSADOS'
      'WHERE NUM_DECLARACION = :DEC AND ID_MULTIAFILIADO IS NULL')
    Left = 230
    Top = 12
    ParamData = <
      item
        DataType = ftFloat
        Name = 'DEC'
        ParamType = ptInputOutput
        Value = 0
      end>
    object qrymcgcorrAFI_NUMERO_DOC: TStringField
      FieldName = 'AFI_NUMERO_DOC'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.AFI_NUMERO_DOC'
      Size = 18
    end
    object qrymcgcorrAFI_TIPO_DOC: TStringField
      FieldName = 'AFI_TIPO_DOC'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.AFI_TIPO_DOC'
      Size = 3
    end
    object qrymcgcorrNUM_DECLARACION: TFloatField
      FieldName = 'NUM_DECLARACION'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.NUM_DECLARACION'
    end
    object qrymcgcorrCOD_GRUPO_ETAREO: TFloatField
      FieldName = 'COD_GRUPO_ETAREO'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.COD_GRUPO_ETAREO'
    end
    object qrymcgcorrTIP_UPC: TStringField
      FieldName = 'TIP_UPC'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.TIP_UPC'
      Size = 1
    end
    object qrymcgcorrTIP_PAGO: TStringField
      FieldName = 'TIP_PAGO'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.TIP_PAGO'
      Size = 1
    end
    object qrymcgcorrTIP_BENEFICIARIO: TStringField
      FieldName = 'TIP_BENEFICIARIO'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.TIP_BENEFICIARIO'
      Size = 1
    end
    object qrymcgcorrDIAS: TStringField
      FieldName = 'DIAS'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.DIAS'
      Size = 2
    end
    object qrymcgcorrSALARIO: TFloatField
      FieldName = 'SALARIO'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.SALARIO'
    end
    object qrymcgcorrPORCENTAJE: TStringField
      FieldName = 'PORCENTAJE'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.PORCENTAJE'
      Size = 2
    end
    object qrymcgcorrCOTIZACION: TFloatField
      FieldName = 'COTIZACION'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.COTIZACION'
    end
    object qrymcgcorrVAL_DEDUCCION: TFloatField
      FieldName = 'VAL_DEDUCCION'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.VAL_DEDUCCION'
    end
    object qrymcgcorrTIP_DEDUCCION: TStringField
      FieldName = 'TIP_DEDUCCION'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.TIP_DEDUCCION'
      Size = 3
    end
    object qrymcgcorrVALOR_UPC: TFloatField
      FieldName = 'VALOR_UPC'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.VALOR_UPC'
    end
    object qrymcgcorrTIP_AFILIADO: TStringField
      FieldName = 'TIP_AFILIADO'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.TIP_AFILIADO'
      Size = 1
    end
    object qrymcgcorrFEC_CONSIGNACION: TDateTimeField
      FieldName = 'FEC_CONSIGNACION'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.FEC_CONSIGNACION'
    end
    object qrymcgcorrCOD_PARENTESCO: TStringField
      FieldName = 'COD_PARENTESCO'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.COD_PARENTESCO'
      Size = 3
    end
    object qrymcgcorrNUM_PLANILLA: TStringField
      FieldName = 'NUM_PLANILLA'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.NUM_PLANILLA'
      Size = 15
    end
    object qrymcgcorrTIP_DOCUMENTO_COT: TStringField
      FieldName = 'TIP_DOCUMENTO_COT'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.TIP_DOCUMENTO_COT'
      Size = 3
    end
    object qrymcgcorrNUM_DOCUMENTO_COT: TStringField
      FieldName = 'NUM_DOCUMENTO_COT'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.NUM_DOCUMENTO_COT'
      Size = 18
    end
    object qrymcgcorrEMP_TIPO_DOC: TStringField
      FieldName = 'EMP_TIPO_DOC'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.EMP_TIPO_DOC'
      Size = 3
    end
    object qrymcgcorrEMP_NUMERO_DOC: TStringField
      FieldName = 'EMP_NUMERO_DOC'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.EMP_NUMERO_DOC'
      Size = 15
    end
    object qrymcgcorrID_MULTIAFILIADO: TStringField
      FieldName = 'ID_MULTIAFILIADO'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.ID_MULTIAFILIADO'
      Size = 9
    end
    object qrymcgcorrCAUSA: TStringField
      FieldName = 'CAUSA'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.CAUSA'
      Size = 30
    end
    object qrymcgcorrVAL_UPC: TFloatField
      FieldName = 'VAL_UPC'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.VAL_UPC'
    end
    object qrymcgcorrEST_MULTIAFILIADO: TStringField
      FieldName = 'EST_MULTIAFILIADO'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.EST_MULTIAFILIADO'
      Size = 3
    end
    object qrymcgcorrNUM_DECLARACION_ANT: TFloatField
      FieldName = 'NUM_DECLARACION_ANT'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.NUM_DECLARACION_ANT'
    end
  end
  object qrymcdecnumrad: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      
        'SELECT NUM_DECLARATIVA FROM DECLARACIONES WHERE NUM_DECLARACION ' +
        '= :DEC')
    Left = 229
    Top = 10
    ParamData = <
      item
        DataType = ftString
        Name = 'DEC'
        ParamType = ptInputOutput
        Value = ''
      end>
    object qrymcdecnumradNUM_DECLARATIVA: TFloatField
      FieldName = 'NUM_DECLARATIVA'
      Origin = 'SOFTEPS.DECLARACIONES.NUM_DECLARATIVA'
    end
  end
  object qrymcdecaficom2: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      'SELECT * FROM DECLARACIONES, AFILIADOS_COMPENSADOS '
      'WHERE FECHA_DECLARACION = :fecha_dec'
      
        'AND DECLARACIONES.NUM_DECLARACION = AFILIADOS_COMPENSADOS.NUM_DE' +
        'CLARACION'
      'AND AFILIADOS_COMPENSADOS.ID_MULTIAFILIADO = '#39'SOL'#39
      'ORDER BY DECLARACIONES.NUM_DECLARACION'
      '')
    Left = 230
    Top = 12
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'fecha_dec'
        ParamType = ptInputOutput
        Value = 0d
      end>
    object qrymcdecaficom2NUM_DECLARACION: TFloatField
      FieldName = 'NUM_DECLARACION'
      Origin = 'SOFTEPS.DECLARACIONES.NUM_DECLARACION'
    end
    object qrymcdecaficom2COT_TIPO_DECLA: TFloatField
      FieldName = 'COT_TIPO_DECLA'
      Origin = 'SOFTEPS.DECLARACIONES.COT_TIPO_DECLA'
    end
    object qrymcdecaficom2PERIODO_COMPENSADO: TStringField
      FieldName = 'PERIODO_COMPENSADO'
      Origin = 'SOFTEPS.DECLARACIONES.PERIODO_COMPENSADO'
      Size = 10
    end
    object qrymcdecaficom2FECHA_DECLARACION: TDateTimeField
      FieldName = 'FECHA_DECLARACION'
      Origin = 'SOFTEPS.DECLARACIONES.FECHA_DECLARACION'
    end
    object qrymcdecaficom2TIPO_CIERRE: TStringField
      FieldName = 'TIPO_CIERRE'
      Origin = 'SOFTEPS.DECLARACIONES.TIPO_CIERRE'
      Size = 1
    end
    object qrymcdecaficom2NUM_DECLARATIVA: TFloatField
      FieldName = 'NUM_DECLARATIVA'
      Origin = 'SOFTEPS.DECLARACIONES.NUM_DECLARATIVA'
    end
    object qrymcdecaficom2AFI_NUMERO_DOC: TStringField
      FieldName = 'AFI_NUMERO_DOC'
      Origin = 'SOFTEPS.DECLARACIONES.NUM_DECLARATIVA'
      Size = 18
    end
    object qrymcdecaficom2AFI_TIPO_DOC: TStringField
      FieldName = 'AFI_TIPO_DOC'
      Origin = 'SOFTEPS.DECLARACIONES.NUM_DECLARATIVA'
      Size = 3
    end
    object qrymcdecaficom2NUM_DECLARACION_1: TFloatField
      FieldName = 'NUM_DECLARACION_1'
      Origin = 'SOFTEPS.DECLARACIONES.NUM_DECLARATIVA'
    end
    object qrymcdecaficom2COD_GRUPO_ETAREO: TFloatField
      FieldName = 'COD_GRUPO_ETAREO'
      Origin = 'SOFTEPS.DECLARACIONES.NUM_DECLARATIVA'
    end
    object qrymcdecaficom2TIP_UPC: TStringField
      FieldName = 'TIP_UPC'
      Origin = 'SOFTEPS.DECLARACIONES.NUM_DECLARATIVA'
      Size = 1
    end
    object qrymcdecaficom2TIP_PAGO: TStringField
      FieldName = 'TIP_PAGO'
      Origin = 'SOFTEPS.DECLARACIONES.NUM_DECLARATIVA'
      Size = 1
    end
    object qrymcdecaficom2TIP_BENEFICIARIO: TStringField
      FieldName = 'TIP_BENEFICIARIO'
      Origin = 'SOFTEPS.DECLARACIONES.NUM_DECLARATIVA'
      Size = 1
    end
    object qrymcdecaficom2DIAS: TStringField
      FieldName = 'DIAS'
      Origin = 'SOFTEPS.DECLARACIONES.NUM_DECLARATIVA'
      Size = 2
    end
    object qrymcdecaficom2SALARIO: TFloatField
      FieldName = 'SALARIO'
      Origin = 'SOFTEPS.DECLARACIONES.NUM_DECLARATIVA'
    end
    object qrymcdecaficom2PORCENTAJE: TStringField
      FieldName = 'PORCENTAJE'
      Origin = 'SOFTEPS.DECLARACIONES.NUM_DECLARATIVA'
      Size = 2
    end
    object qrymcdecaficom2COTIZACION: TFloatField
      FieldName = 'COTIZACION'
      Origin = 'SOFTEPS.DECLARACIONES.NUM_DECLARATIVA'
    end
    object qrymcdecaficom2VAL_DEDUCCION: TFloatField
      FieldName = 'VAL_DEDUCCION'
      Origin = 'SOFTEPS.DECLARACIONES.NUM_DECLARATIVA'
    end
    object qrymcdecaficom2TIP_DEDUCCION: TStringField
      FieldName = 'TIP_DEDUCCION'
      Origin = 'SOFTEPS.DECLARACIONES.NUM_DECLARATIVA'
      Size = 3
    end
    object qrymcdecaficom2VALOR_UPC: TFloatField
      FieldName = 'VALOR_UPC'
      Origin = 'SOFTEPS.DECLARACIONES.NUM_DECLARATIVA'
    end
    object qrymcdecaficom2TIP_AFILIADO: TStringField
      FieldName = 'TIP_AFILIADO'
      Origin = 'SOFTEPS.DECLARACIONES.NUM_DECLARATIVA'
      Size = 1
    end
    object qrymcdecaficom2FEC_CONSIGNACION: TDateTimeField
      FieldName = 'FEC_CONSIGNACION'
      Origin = 'SOFTEPS.DECLARACIONES.NUM_DECLARATIVA'
    end
    object qrymcdecaficom2COD_PARENTESCO: TStringField
      FieldName = 'COD_PARENTESCO'
      Origin = 'SOFTEPS.DECLARACIONES.NUM_DECLARATIVA'
      Size = 3
    end
    object qrymcdecaficom2NUM_PLANILLA: TStringField
      FieldName = 'NUM_PLANILLA'
      Origin = 'SOFTEPS.DECLARACIONES.NUM_DECLARATIVA'
      Size = 15
    end
    object qrymcdecaficom2TIP_DOCUMENTO_COT: TStringField
      FieldName = 'TIP_DOCUMENTO_COT'
      Origin = 'SOFTEPS.DECLARACIONES.NUM_DECLARATIVA'
      Size = 3
    end
    object qrymcdecaficom2NUM_DOCUMENTO_COT: TStringField
      FieldName = 'NUM_DOCUMENTO_COT'
      Origin = 'SOFTEPS.DECLARACIONES.NUM_DECLARATIVA'
      Size = 18
    end
    object qrymcdecaficom2EMP_TIPO_DOC: TStringField
      FieldName = 'EMP_TIPO_DOC'
      Origin = 'SOFTEPS.DECLARACIONES.NUM_DECLARATIVA'
      Size = 3
    end
    object qrymcdecaficom2EMP_NUMERO_DOC: TStringField
      FieldName = 'EMP_NUMERO_DOC'
      Origin = 'SOFTEPS.DECLARACIONES.NUM_DECLARATIVA'
      Size = 15
    end
    object qrymcdecaficom2ID_MULTIAFILIADO: TStringField
      FieldName = 'ID_MULTIAFILIADO'
      Origin = 'SOFTEPS.DECLARACIONES.NUM_DECLARATIVA'
      Size = 9
    end
    object qrymcdecaficom2CAUSA: TStringField
      FieldName = 'CAUSA'
      Origin = 'SOFTEPS.DECLARACIONES.NUM_DECLARATIVA'
      Size = 30
    end
    object qrymcdecaficom2VAL_UPC: TFloatField
      FieldName = 'VAL_UPC'
      Origin = 'SOFTEPS.DECLARACIONES.NUM_DECLARATIVA'
    end
    object qrymcdecaficom2EST_MULTIAFILIADO: TStringField
      FieldName = 'EST_MULTIAFILIADO'
      Origin = 'SOFTEPS.DECLARACIONES.NUM_DECLARATIVA'
      Size = 3
    end
    object qrymcdecaficom2NUM_DECLARACION_ANT: TFloatField
      FieldName = 'NUM_DECLARACION_ANT'
      Origin = 'SOFTEPS.DECLARACIONES.NUM_DECLARATIVA'
    end
  end
  object qrymcbases: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      
        'SELECT AFILIADOS_COMPENSADOS.NUM_DECLARACION,COD_GRUPO_ETAREO, T' +
        'IP_BENEFICIARIO, TIP_UPC, decode(DIAS,'#39'30'#39','#39'C'#39','#39'P'#39') AS UPC, COUN' +
        'T(*) AS NUMERO, SUM(DIAS) AS DIAS, PERIODO_COMPENSADO, SUM(VAL_U' +
        'PC) AS VAL_UPC'
      'FROM AFILIADOS_COMPENSADOS, DECLARACIONES'
      
        'WHERE AFILIADOS_COMPENSADOS.NUM_DECLARACION = :dec AND ID_MULTIA' +
        'FILIADO IS NULL'
      
        'AND AFILIADOS_COMPENSADOS.NUM_DECLARACION = DECLARACIONES.NUM_DE' +
        'CLARACION'
      
        'GROUP BY AFILIADOS_COMPENSADOS.NUM_DECLARACION,COD_GRUPO_ETAREO,' +
        ' TIP_BENEFICIARIO, TIP_UPC, decode(DIAS,'#39'30'#39','#39'C'#39','#39'P'#39'), PERIODO_C' +
        'OMPENSADO')
    Left = 230
    Top = 12
    ParamData = <
      item
        DataType = ftString
        Name = 'dec'
        ParamType = ptInput
        Value = 0
      end>
    object qrymcbasesNUM_DECLARACION: TFloatField
      FieldName = 'NUM_DECLARACION'
    end
    object qrymcbasesCOD_GRUPO_ETAREO: TFloatField
      FieldName = 'COD_GRUPO_ETAREO'
    end
    object qrymcbasesTIP_BENEFICIARIO: TStringField
      FieldName = 'TIP_BENEFICIARIO'
      Size = 1
    end
    object qrymcbasesTIP_UPC: TStringField
      FieldName = 'TIP_UPC'
      Size = 1
    end
    object qrymcbasesUPC: TStringField
      FieldName = 'UPC'
      Size = 1
    end
    object qrymcbasesNUMERO: TFloatField
      FieldName = 'NUMERO'
    end
    object qrymcbasesDIAS: TFloatField
      FieldName = 'DIAS'
    end
    object qrymcbasesPERIODO_COMPENSADO: TStringField
      FieldName = 'PERIODO_COMPENSADO'
      Size = 10
    end
    object qrymcbasesVAL_UPC: TFloatField
      FieldName = 'VAL_UPC'
    end
  end
  object qrycompensa: TQuery
    DatabaseName = 'softeps'
    RequestLive = True
    SQL.Strings = (
      'SELECT * FROM AFILIADOS_COMPENSADOS'
      'WHERE AFI_TIPO_DOC = '#39'XX'#39)
    Left = 230
    Top = 12
    object qrycompensaAFI_NUMERO_DOC: TStringField
      FieldName = 'AFI_NUMERO_DOC'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.AFI_NUMERO_DOC'
      Size = 18
    end
    object qrycompensaAFI_TIPO_DOC: TStringField
      FieldName = 'AFI_TIPO_DOC'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.AFI_TIPO_DOC'
      Size = 3
    end
    object qrycompensaNUM_DECLARACION: TFloatField
      FieldName = 'NUM_DECLARACION'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.NUM_DECLARACION'
    end
    object qrycompensaCOD_GRUPO_ETAREO: TFloatField
      FieldName = 'COD_GRUPO_ETAREO'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.COD_GRUPO_ETAREO'
    end
    object qrycompensaTIP_UPC: TStringField
      FieldName = 'TIP_UPC'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.TIP_UPC'
      Size = 1
    end
    object qrycompensaTIP_PAGO: TStringField
      FieldName = 'TIP_PAGO'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.TIP_PAGO'
      Size = 1
    end
    object qrycompensaTIP_BENEFICIARIO: TStringField
      FieldName = 'TIP_BENEFICIARIO'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.TIP_BENEFICIARIO'
      Size = 1
    end
    object qrycompensaDIAS: TStringField
      FieldName = 'DIAS'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.DIAS'
      Size = 2
    end
    object qrycompensaSALARIO: TFloatField
      FieldName = 'SALARIO'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.SALARIO'
    end
    object qrycompensaPORCENTAJE: TStringField
      FieldName = 'PORCENTAJE'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.PORCENTAJE'
      Size = 2
    end
    object qrycompensaCOTIZACION: TFloatField
      FieldName = 'COTIZACION'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.COTIZACION'
    end
    object qrycompensaVAL_DEDUCCION: TFloatField
      FieldName = 'VAL_DEDUCCION'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.VAL_DEDUCCION'
    end
    object qrycompensaTIP_DEDUCCION: TStringField
      FieldName = 'TIP_DEDUCCION'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.TIP_DEDUCCION'
      Size = 3
    end
    object qrycompensaVALOR_UPC: TFloatField
      FieldName = 'VALOR_UPC'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.VALOR_UPC'
    end
    object qrycompensaTIP_AFILIADO: TStringField
      FieldName = 'TIP_AFILIADO'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.TIP_AFILIADO'
      Size = 1
    end
    object qrycompensaFEC_CONSIGNACION: TDateTimeField
      FieldName = 'FEC_CONSIGNACION'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.FEC_CONSIGNACION'
    end
    object qrycompensaCOD_PARENTESCO: TStringField
      FieldName = 'COD_PARENTESCO'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.COD_PARENTESCO'
      Size = 3
    end
    object qrycompensaNUM_PLANILLA: TStringField
      FieldName = 'NUM_PLANILLA'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.NUM_PLANILLA'
      Size = 15
    end
    object qrycompensaTIP_DOCUMENTO_COT: TStringField
      FieldName = 'TIP_DOCUMENTO_COT'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.TIP_DOCUMENTO_COT'
      Size = 3
    end
    object qrycompensaNUM_DOCUMENTO_COT: TStringField
      FieldName = 'NUM_DOCUMENTO_COT'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.NUM_DOCUMENTO_COT'
      Size = 18
    end
    object qrycompensaEMP_TIPO_DOC: TStringField
      FieldName = 'EMP_TIPO_DOC'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.EMP_TIPO_DOC'
      Size = 3
    end
    object qrycompensaEMP_NUMERO_DOC: TStringField
      FieldName = 'EMP_NUMERO_DOC'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.EMP_NUMERO_DOC'
      Size = 15
    end
    object qrycompensaID_MULTIAFILIADO: TStringField
      FieldName = 'ID_MULTIAFILIADO'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.ID_MULTIAFILIADO'
      Size = 9
    end
    object qrycompensaCAUSA: TStringField
      FieldName = 'CAUSA'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.CAUSA'
      Size = 30
    end
    object qrycompensaVAL_UPC: TFloatField
      FieldName = 'VAL_UPC'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.VAL_UPC'
    end
    object qrycompensaEST_MULTIAFILIADO: TStringField
      FieldName = 'EST_MULTIAFILIADO'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.EST_MULTIAFILIADO'
      Size = 3
    end
    object qrycompensaNUM_DECLARACION_ANT: TFloatField
      FieldName = 'NUM_DECLARACION_ANT'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.NUM_DECLARACION_ANT'
    end
  end
  object qryactestado: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      
        'SELECT AFI_NUMERO_DOC, AFI_TIPO_DOC, NUM_DECLARACION, NUM_PLANIL' +
        'LA'
      'FROM AFILIADOS_COMPENSADOS'
      'WHERE AFI_NUMERO_DOC||NUM_PLANILLA '
      
        '           IN (SELECT AFI_NUMERO_DOC||NUM_PLANILLA FROM DET_PLAN' +
        'ILLA_AUTOLIQUIDACION'
      '                WHERE DET_ESTADO = '#39'CIE'#39')')
    Left = 230
    Top = 12
    object qryactestadoAFI_NUMERO_DOC: TStringField
      FieldName = 'AFI_NUMERO_DOC'
      Size = 18
    end
    object qryactestadoAFI_TIPO_DOC: TStringField
      FieldName = 'AFI_TIPO_DOC'
      Size = 3
    end
    object qryactestadoNUM_DECLARACION: TFloatField
      FieldName = 'NUM_DECLARACION'
    end
    object qryactestadoNUM_PLANILLA: TStringField
      FieldName = 'NUM_PLANILLA'
      Size = 15
    end
  end
  object qryactpla: TQuery
    DatabaseName = 'softeps'
    RequestLive = True
    SQL.Strings = (
      'SELECT * FROM DET_PLANILLA_AUTOLIQUIDACION'
      'WHERE AFI_TIPO_DOC = :TP'
      'AND AFI_NUMERO_DOC = :DOC'
      'AND NUM_PLANILLA = :NUM')
    Left = 229
    Top = 10
    ParamData = <
      item
        DataType = ftString
        Name = 'TP'
        ParamType = ptInputOutput
        Value = ''
      end
      item
        DataType = ftFloat
        Name = 'DOC'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftFloat
        Name = 'NUM'
        ParamType = ptInputOutput
        Value = 0
      end>
    object qryactplaNUM_PLANILLA: TStringField
      FieldName = 'NUM_PLANILLA'
      Origin = 'SOFTEPS.DET_PLANILLA_AUTOLIQUIDACION.NUM_PLANILLA'
      Size = 15
    end
    object qryactplaAFI_TIPO_DOC: TStringField
      FieldName = 'AFI_TIPO_DOC'
      Origin = 'SOFTEPS.DET_PLANILLA_AUTOLIQUIDACION.AFI_TIPO_DOC'
      Size = 3
    end
    object qryactplaAFI_NUMERO_DOC: TStringField
      FieldName = 'AFI_NUMERO_DOC'
      Origin = 'SOFTEPS.DET_PLANILLA_AUTOLIQUIDACION.AFI_NUMERO_DOC'
      Size = 18
    end
    object qryactplaNOV_ING: TStringField
      FieldName = 'NOV_ING'
      Origin = 'SOFTEPS.DET_PLANILLA_AUTOLIQUIDACION.NOV_ING'
      Size = 1
    end
    object qryactplaNOV_RET: TStringField
      FieldName = 'NOV_RET'
      Origin = 'SOFTEPS.DET_PLANILLA_AUTOLIQUIDACION.NOV_RET'
      Size = 1
    end
    object qryactplaNOV_TDA: TStringField
      FieldName = 'NOV_TDA'
      Origin = 'SOFTEPS.DET_PLANILLA_AUTOLIQUIDACION.NOV_TDA'
      Size = 1
    end
    object qryactplaNOV_TAA: TStringField
      FieldName = 'NOV_TAA'
      Origin = 'SOFTEPS.DET_PLANILLA_AUTOLIQUIDACION.NOV_TAA'
      Size = 1
    end
    object qryactplaNOV_VSP: TStringField
      FieldName = 'NOV_VSP'
      Origin = 'SOFTEPS.DET_PLANILLA_AUTOLIQUIDACION.NOV_VSP'
      Size = 1
    end
    object qryactplaNOV_VST: TStringField
      FieldName = 'NOV_VST'
      Origin = 'SOFTEPS.DET_PLANILLA_AUTOLIQUIDACION.NOV_VST'
      Size = 1
    end
    object qryactplaNOV_SLN: TStringField
      FieldName = 'NOV_SLN'
      Origin = 'SOFTEPS.DET_PLANILLA_AUTOLIQUIDACION.NOV_SLN'
      Size = 1
    end
    object qryactplaNOV_IGE: TStringField
      FieldName = 'NOV_IGE'
      Origin = 'SOFTEPS.DET_PLANILLA_AUTOLIQUIDACION.NOV_IGE'
      Size = 1
    end
    object qryactplaNOV_LMA: TStringField
      FieldName = 'NOV_LMA'
      Origin = 'SOFTEPS.DET_PLANILLA_AUTOLIQUIDACION.NOV_LMA'
      Size = 1
    end
    object qryactplaNOV_VAC: TStringField
      FieldName = 'NOV_VAC'
      Origin = 'SOFTEPS.DET_PLANILLA_AUTOLIQUIDACION.NOV_VAC'
      Size = 1
    end
    object qryactplaDIA_COTIZADOS: TStringField
      FieldName = 'DIA_COTIZADOS'
      Origin = 'SOFTEPS.DET_PLANILLA_AUTOLIQUIDACION.DIA_COTIZADOS'
      Size = 2
    end
    object qryactplaSAL_BASE: TFloatField
      FieldName = 'SAL_BASE'
      Origin = 'SOFTEPS.DET_PLANILLA_AUTOLIQUIDACION.SAL_BASE'
    end
    object qryactplaVAL_NETO_NOV: TFloatField
      FieldName = 'VAL_NETO_NOV'
      Origin = 'SOFTEPS.DET_PLANILLA_AUTOLIQUIDACION.VAL_NETO_NOV'
    end
    object qryactplaING_BASE_COT: TFloatField
      FieldName = 'ING_BASE_COT'
      Origin = 'SOFTEPS.DET_PLANILLA_AUTOLIQUIDACION.ING_BASE_COT'
    end
    object qryactplaCOT_OBLIGATORIA: TFloatField
      FieldName = 'COT_OBLIGATORIA'
      Origin = 'SOFTEPS.DET_PLANILLA_AUTOLIQUIDACION.COT_OBLIGATORIA'
    end
    object qryactplaNUM_INCAPACIDAD_EGR: TStringField
      FieldName = 'NUM_INCAPACIDAD_EGR'
      Origin = 'SOFTEPS.DET_PLANILLA_AUTOLIQUIDACION.NUM_INCAPACIDAD_EGR'
      Size = 10
    end
    object qryactplaVAL_INCAPACIDAD_EGR: TFloatField
      FieldName = 'VAL_INCAPACIDAD_EGR'
      Origin = 'SOFTEPS.DET_PLANILLA_AUTOLIQUIDACION.VAL_INCAPACIDAD_EGR'
    end
    object qryactplaNUM_LICENCIA_MAT: TStringField
      FieldName = 'NUM_LICENCIA_MAT'
      Origin = 'SOFTEPS.DET_PLANILLA_AUTOLIQUIDACION.NUM_LICENCIA_MAT'
      Size = 10
    end
    object qryactplaVAL_LICENCIA_MAT: TFloatField
      FieldName = 'VAL_LICENCIA_MAT'
      Origin = 'SOFTEPS.DET_PLANILLA_AUTOLIQUIDACION.VAL_LICENCIA_MAT'
    end
    object qryactplaVAL_UPC_ADI: TFloatField
      FieldName = 'VAL_UPC_ADI'
      Origin = 'SOFTEPS.DET_PLANILLA_AUTOLIQUIDACION.VAL_UPC_ADI'
    end
    object qryactplaVAL_TOTAL_COT: TFloatField
      FieldName = 'VAL_TOTAL_COT'
      Origin = 'SOFTEPS.DET_PLANILLA_AUTOLIQUIDACION.VAL_TOTAL_COT'
    end
    object qryactplaDET_ESTADO: TStringField
      FieldName = 'DET_ESTADO'
      Origin = 'SOFTEPS.DET_PLANILLA_AUTOLIQUIDACION.DET_ESTADO'
      Size = 3
    end
    object qryactplaPER_COTIZACION: TStringField
      FieldName = 'PER_COTIZACION'
      Origin = 'SOFTEPS.DET_PLANILLA_AUTOLIQUIDACION.PER_COTIZACION'
      Size = 7
    end
    object qryactplaPER_PRESENTACION: TStringField
      FieldName = 'PER_PRESENTACION'
      Origin = 'SOFTEPS.DET_PLANILLA_AUTOLIQUIDACION.PER_PRESENTACION'
      Size = 7
    end
    object qryactplaCOD_OFICINA: TStringField
      FieldName = 'COD_OFICINA'
      Origin = 'SOFTEPS.DET_PLANILLA_AUTOLIQUIDACION.COD_OFICINA'
      Size = 3
    end
    object qryactplaNUM_DECLARACION: TFloatField
      FieldName = 'NUM_DECLARACION'
      Origin = 'SOFTEPS.DET_PLANILLA_AUTOLIQUIDACION.NUM_DECLARACION'
    end
  end
  object qrymcyacom: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      'SELECT NUM_DECLARACION FROM AFILIADOS_COMPENSADOS'
      'WHERE AFI_NUMERO_DOC = :DOC'
      'AND NUM_PLANILLA = :NUM')
    Left = 230
    Top = 12
    ParamData = <
      item
        DataType = ftString
        Name = 'DOC'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NUM'
        ParamType = ptUnknown
        Value = ''
      end>
    object qrymcyacomNUM_DECLARACION: TFloatField
      FieldName = 'NUM_DECLARACION'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.NUM_DECLARACION'
    end
  end
  object Database1: TDatabase
    AliasName = 'softeps'
    DatabaseName = 'softeps'
    LoginPrompt = False
    Params.Strings = (
      'SERVER NAME=DBO'
      'USER NAME=DBO'
      'NET PROTOCOL=TNS'
      'OPEN MODE=READ/WRITE'
      'SCHEMA CACHE SIZE=8'
      'LANGDRIVER='
      'SQLQRYMODE=SERVER'
      'SQLPASSTHRU MODE=SHARED AUTOCOMMIT'
      'SCHEMA CACHE TIME=-1'
      'MAX ROWS=-1'
      'BATCH COUNT=200'
      'ENABLE SCHEMA CACHE=FALSE'
      'SCHEMA CACHE DIR='
      'ENABLE BCD=FALSE'
      'ENABLE INTEGERS=FALSE'
      'LIST SYNONYMS=NONE'
      'ROWSET SIZE=20'
      'BLOBS TO CACHE=64'
      'BLOB SIZE=32'
      'OBJECT MODE=TRUE'
      'PASSWORD=pacho')
    SessionName = 'Default'
    Left = 26
    Top = 2
  end
  object epsac: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      
        'SELECT AFILIADOS_COMPENSADOS.NUM_DECLARACION,'#39'EPS035'#39' AS COD_EPS' +
        ',FECHA_DECLARACION,'
      
        '       DECODE(COT_TIPO_DECLA,'#39'0'#39','#39'IN'#39','#39'AA'#39') AS TIPO_DECLARACION,' +
        'PERIODO_COMPENSADO,'
      
        '       AFI_TIPO_DOC,AFI_NUMERO_DOC,PRI_APELLIDO,SEG_APELLIDO,PRI' +
        '_NOMBRE,SEG_NOMBRE,FEC_NACIMIENTO,'
      
        '       COD_SEXO,'#39' '#39' AS TP_CONYUGE,'#39' '#39' AS COD_CONYUGE,COD_DEPARTA' +
        'MENTO_RES,COD_CIUDAD_RES,FEC_AFILIACION_UNI,'
      
        '       DECODE(TIP_AFILIADO,'#39'D'#39','#39'1'#39','#39'E'#39','#39'2'#39','#39'I'#39','#39'3'#39','#39'M'#39','#39'4'#39','#39'P'#39','#39 +
        '10'#39','#39'S'#39','#39'11'#39') AS TIP_COTIZANTE,'
      
        '       DECODE(AUTOLIQUIDACION.EMP_TIPO_DOC,'#39'NIT'#39','#39'NI'#39',AUTOLIQUID' +
        'ACION.EMP_TIPO_DOC) AS TIP_EMPRESA,'
      
        '       AUTOLIQUIDACION.EMP_NUMERO_DOC,COTIZACION,SALARIO,DIAS,0 ' +
        'AS COT_8,FEC_PAGO,DIAS,COTIZACION       '
      
        'FROM AFILIADOS_COMPENSADOS, AFILIADOS,DECLARACIONES, AUTOLIQUIDA' +
        'CION'
      'WHERE AFILIADOS_COMPENSADOS.NUM_DECLARACION >= :dec1 '
      '           AND AFILIADOS_COMPENSADOS.NUM_DECLARACION <= :dec2'
      '           AND TIP_BENEFICIARIO = '#39'C'#39
      
        '           AND AFILIADOS_COMPENSADOS.NUM_DECLARACION = DECLARACI' +
        'ONES.NUM_DECLARACION'
      '           AND AFI_TIPO_DOC = TIP_DOCUMENTO '
      '           AND AFI_NUMERO_DOC = NUM_DOCUMENTO'
      
        '           AND AFILIADOS_COMPENSADOS.NUM_PLANILLA = AUTOLIQUIDAC' +
        'ION.NUM_PLANILLA'
      'ORDER BY AFILIADOS_COMPENSADOS.NUM_DECLARACION')
    Left = 230
    Top = 12
    ParamData = <
      item
        DataType = ftString
        Name = 'dec1'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'dec2'
        ParamType = ptUnknown
        Value = ''
      end>
    object epsacNUM_DECLARACION: TFloatField
      FieldName = 'NUM_DECLARACION'
    end
    object epsacCOD_EPS: TStringField
      FieldName = 'COD_EPS'
      FixedChar = True
      Size = 6
    end
    object epsacFECHA_DECLARACION: TDateTimeField
      FieldName = 'FECHA_DECLARACION'
    end
    object epsacTIPO_DECLARACION: TStringField
      FieldName = 'TIPO_DECLARACION'
      Size = 2
    end
    object epsacPERIODO_COMPENSADO: TStringField
      FieldName = 'PERIODO_COMPENSADO'
      Size = 10
    end
    object epsacAFI_TIPO_DOC: TStringField
      FieldName = 'AFI_TIPO_DOC'
      Size = 3
    end
    object epsacAFI_NUMERO_DOC: TStringField
      FieldName = 'AFI_NUMERO_DOC'
      Size = 18
    end
    object epsacPRI_APELLIDO: TStringField
      FieldName = 'PRI_APELLIDO'
      Size = 25
    end
    object epsacSEG_APELLIDO: TStringField
      FieldName = 'SEG_APELLIDO'
      Size = 25
    end
    object epsacPRI_NOMBRE: TStringField
      FieldName = 'PRI_NOMBRE'
      Size = 25
    end
    object epsacSEG_NOMBRE: TStringField
      FieldName = 'SEG_NOMBRE'
      Size = 25
    end
    object epsacFEC_NACIMIENTO: TDateTimeField
      FieldName = 'FEC_NACIMIENTO'
    end
    object epsacCOD_SEXO: TStringField
      FieldName = 'COD_SEXO'
      Size = 1
    end
    object epsacTP_CONYUGE: TStringField
      FieldName = 'TP_CONYUGE'
      FixedChar = True
      Size = 1
    end
    object epsacCOD_CONYUGE: TStringField
      FieldName = 'COD_CONYUGE'
      FixedChar = True
      Size = 1
    end
    object epsacCOD_DEPARTAMENTO_RES: TStringField
      FieldName = 'COD_DEPARTAMENTO_RES'
      Size = 2
    end
    object epsacCOD_CIUDAD_RES: TStringField
      FieldName = 'COD_CIUDAD_RES'
      Size = 3
    end
    object epsacFEC_AFILIACION_UNI: TDateTimeField
      FieldName = 'FEC_AFILIACION_UNI'
    end
    object epsacTIP_COTIZANTE: TStringField
      FieldName = 'TIP_COTIZANTE'
      Size = 2
    end
    object epsacTIP_EMPRESA: TStringField
      FieldName = 'TIP_EMPRESA'
      Size = 3
    end
    object epsacEMP_NUMERO_DOC: TStringField
      FieldName = 'EMP_NUMERO_DOC'
      Size = 18
    end
    object epsacCOTIZACION: TFloatField
      FieldName = 'COTIZACION'
    end
    object epsacSALARIO: TFloatField
      FieldName = 'SALARIO'
    end
    object epsacDIAS: TStringField
      FieldName = 'DIAS'
      Size = 2
    end
    object epsacCOT_8: TFloatField
      FieldName = 'COT_8'
    end
    object epsacFEC_PAGO: TDateTimeField
      FieldName = 'FEC_PAGO'
    end
    object epsacDIAS_1: TStringField
      FieldName = 'DIAS_1'
      Size = 2
    end
    object epsacCOTIZACION_1: TFloatField
      FieldName = 'COTIZACION_1'
    end
  end
  object epsab: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      
        'SELECT AFILIADOS_COMPENSADOS.NUM_DECLARACION,'#39'EPS035'#39' AS COD_EPS' +
        ',PERIODO_COMPENSADO,TIP_DOCUMENTO_COT,NUM_DOCUMENTO_COT,'
      
        '       AFI_TIPO_DOC,AFI_NUMERO_DOC,PRI_APELLIDO,SEG_APELLIDO,PRI' +
        '_NOMBRE,SEG_NOMBRE,'
      '       DECODE(TIP_BENEFICIARIO,'#39'B'#39','#39'1'#39','#39'2'#39') AS TIPO_AFILIADO,'
      
        '       DECODE(AFILIADOS_COMPENSADOS.COD_PARENTESCO,'#39'C'#39','#39'1'#39','#39'H'#39','#39 +
        '2'#39','#39'P'#39','#39'3'#39','#39'4'#39') AS REL_COTIZANTE,'
      
        '       COD_DEPARTAMENTO_RES,COD_CIUDAD_RES,FEC_NACIMIENTO,COD_SE' +
        'XO,FEC_AFILIACION_UNI,DIAS'
      
        'FROM AFILIADOS_COMPENSADOS, AFILIADOS,DECLARACIONES, AUTOLIQUIDA' +
        'CION'
      
        'WHERE AFILIADOS_COMPENSADOS.NUM_DECLARACION >= :dec1 AND AFILIAD' +
        'OS_COMPENSADOS.NUM_DECLARACION <= :dec2'
      '           AND TIP_BENEFICIARIO <> '#39'C'#39
      
        '           AND AFILIADOS_COMPENSADOS.NUM_DECLARACION = DECLARACI' +
        'ONES.NUM_DECLARACION'
      '           AND AFI_TIPO_DOC = TIP_DOCUMENTO (+)'
      '           AND AFI_NUMERO_DOC = NUM_DOCUMENTO (+)'
      
        '           AND AFILIADOS_COMPENSADOS.NUM_PLANILLA = AUTOLIQUIDAC' +
        'ION.NUM_PLANILLA (+)'
      '')
    Left = 230
    Top = 12
    ParamData = <
      item
        DataType = ftString
        Name = 'dec1'
        ParamType = ptInputOutput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'dec2'
        ParamType = ptInputOutput
        Value = ''
      end>
    object epsabNUM_DECLARACION: TFloatField
      FieldName = 'NUM_DECLARACION'
    end
    object epsabCOD_EPS: TStringField
      FieldName = 'COD_EPS'
      FixedChar = True
      Size = 6
    end
    object epsabPERIODO_COMPENSADO: TStringField
      FieldName = 'PERIODO_COMPENSADO'
      Size = 10
    end
    object epsabTIP_DOCUMENTO_COT: TStringField
      FieldName = 'TIP_DOCUMENTO_COT'
      Size = 3
    end
    object epsabNUM_DOCUMENTO_COT: TStringField
      FieldName = 'NUM_DOCUMENTO_COT'
      Size = 18
    end
    object epsabAFI_TIPO_DOC: TStringField
      FieldName = 'AFI_TIPO_DOC'
      Size = 3
    end
    object epsabAFI_NUMERO_DOC: TStringField
      FieldName = 'AFI_NUMERO_DOC'
      Size = 18
    end
    object epsabPRI_APELLIDO: TStringField
      FieldName = 'PRI_APELLIDO'
      Size = 25
    end
    object epsabSEG_APELLIDO: TStringField
      FieldName = 'SEG_APELLIDO'
      Size = 25
    end
    object epsabPRI_NOMBRE: TStringField
      FieldName = 'PRI_NOMBRE'
      Size = 25
    end
    object epsabSEG_NOMBRE: TStringField
      FieldName = 'SEG_NOMBRE'
      Size = 25
    end
    object epsabTIPO_AFILIADO: TStringField
      FieldName = 'TIPO_AFILIADO'
      Size = 1
    end
    object epsabREL_COTIZANTE: TStringField
      FieldName = 'REL_COTIZANTE'
      Size = 1
    end
    object epsabCOD_DEPARTAMENTO_RES: TStringField
      FieldName = 'COD_DEPARTAMENTO_RES'
      Size = 2
    end
    object epsabCOD_CIUDAD_RES: TStringField
      FieldName = 'COD_CIUDAD_RES'
      Size = 3
    end
    object epsabFEC_NACIMIENTO: TDateTimeField
      FieldName = 'FEC_NACIMIENTO'
    end
    object epsabCOD_SEXO: TStringField
      FieldName = 'COD_SEXO'
      Size = 1
    end
    object epsabFEC_AFILIACION_UNI: TDateTimeField
      FieldName = 'FEC_AFILIACION_UNI'
    end
    object epsabDIAS: TStringField
      FieldName = 'DIAS'
      Size = 2
    end
  end
  object qrycot: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      
        'select sum(tot_cotizantes_mcn) as mcn,sum(tot_cotizantes_mce) as' +
        ' mce,sum(tot_cotizantes_mpn) as mpn,sum(tot_cotizantes_mpe) as m' +
        'pe '
      'from bases_de_calculo a, declaraciones b'
      'where b.periodo_compensado = :per'
      'and b.num_declaracion = a.num_declaracion'
      'group by b.periodo_compensado')
    Left = 230
    Top = 12
    ParamData = <
      item
        DataType = ftString
        Name = 'per'
        ParamType = ptInputOutput
        Value = ''
      end>
    object qrycotMCN: TFloatField
      FieldName = 'MCN'
      Origin = 'SOFTEPS.BASES_DE_CALCULO.TOT_COTIZANTES_MCN'
    end
    object qrycotMCE: TFloatField
      FieldName = 'MCE'
      Origin = 'SOFTEPS.BASES_DE_CALCULO.TOT_COTIZANTES_MCE'
    end
    object qrycotMPN: TFloatField
      FieldName = 'MPN'
      Origin = 'SOFTEPS.BASES_DE_CALCULO.TOT_COTIZANTES_MPN'
    end
    object qrycotMPE: TFloatField
      FieldName = 'MPE'
      Origin = 'SOFTEPS.BASES_DE_CALCULO.TOT_COTIZANTES_MPE'
    end
  end
  object qryben: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      
        'select sum(tot_beneficiarios_mcn) as mcn,sum(tot_beneficiarios_m' +
        'ce) as mce,sum(tot_beneficiarios_mpnl) as mpn,sum(tot_beneficiar' +
        'ios_mpe) as mpe '
      'from bases_de_calculo a, declaraciones b'
      'where b.periodo_compensado = :per'
      'and b.num_declaracion = a.num_declaracion'
      'group by b.periodo_compensado')
    Left = 230
    Top = 12
    ParamData = <
      item
        DataType = ftString
        Name = 'per'
        ParamType = ptUnknown
        Value = ''
      end>
    object qrybenMCN: TFloatField
      FieldName = 'MCN'
      Origin = 'SOFTEPS.BASES_DE_CALCULO.TOT_BENEFICIARIOS_MCN'
    end
    object qrybenMCE: TFloatField
      FieldName = 'MCE'
      Origin = 'SOFTEPS.BASES_DE_CALCULO.TOT_BENEFICIARIOS_MCE'
    end
    object qrybenMPN: TFloatField
      FieldName = 'MPN'
      Origin = 'SOFTEPS.BASES_DE_CALCULO.TOT_BENEFICIARIOS_MPNL'
    end
    object qrybenMPE: TFloatField
      FieldName = 'MPE'
      Origin = 'SOFTEPS.BASES_DE_CALCULO.TOT_BENEFICIARIOS_MPE'
    end
  end
  object qrydep: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      'select sum(tot_dependientes)  as dep'
      'from bases_de_calculo_dep a, declaraciones b'
      'where b.periodo_compensado = :per'
      'and b.num_declaracion = a.num_declaracion'
      'group by b.periodo_compensado')
    Left = 230
    Top = 12
    ParamData = <
      item
        DataType = ftString
        Name = 'per'
        ParamType = ptInputOutput
        Value = ''
      end>
    object qrydepDEP: TFloatField
      FieldName = 'DEP'
      Origin = 'SOFTEPS.BASES_DE_CALCULO_DEP.TOT_DEPENDIENTES'
    end
  end
  object qrysalbase: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      
        'select sum(ing_salbase_cotiz12)  as b12, sum(ing_salbase_cotiz8)' +
        ' as b8'
      'from liquidacion_compensacion a, declaraciones b'
      'where b.periodo_compensado = :per'
      'and b.num_declaracion = a.num_declaracion'
      'group by b.periodo_compensado'
      '')
    Left = 230
    Top = 12
    ParamData = <
      item
        DataType = ftString
        Name = 'per'
        ParamType = ptUnknown
        Value = ''
      end>
    object qrysalbaseB12: TFloatField
      FieldName = 'B12'
      Origin = 'SOFTEPS.LIQUIDACION_COMPENSACION.ING_SALBASE_COTIZ12'
    end
    object qrysalbaseB8: TFloatField
      FieldName = 'B8'
      Origin = 'SOFTEPS.LIQUIDACION_COMPENSACION.ING_SALBASE_COTIZ8'
    end
  end
  object qryreca: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      'select sum(val_total_reca12) as r12, sum(val_total_reca8) as r8'
      'from liquidacion_compensacion a, declaraciones b'
      'where b.periodo_compensado = :per'
      'and b.num_declaracion = a.num_declaracion'
      'group by b.periodo_compensado')
    Left = 230
    Top = 12
    ParamData = <
      item
        DataType = ftString
        Name = 'per'
        ParamType = ptUnknown
        Value = ''
      end>
    object qryrecaR12: TFloatField
      FieldName = 'R12'
      Origin = 'SOFTEPS.LIQUIDACION_COMPENSACION.VAL_TOTAL_RECA12'
    end
    object qryrecaR8: TFloatField
      FieldName = 'R8'
      Origin = 'SOFTEPS.LIQUIDACION_COMPENSACION.VAL_TOTAL_RECA8'
    end
  end
  object qryded: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      
        'select sum(val_deducido_aut12) as a12, sum(val_deducido_aut8) as' +
        ' a8'
      'from liquidacion_compensacion a, declaraciones b'
      'where b.periodo_compensado = :per'
      'and b.num_declaracion = a.num_declaracion'
      'group by b.periodo_compensado')
    Left = 230
    Top = 12
    ParamData = <
      item
        DataType = ftString
        Name = 'per'
        ParamType = ptUnknown
        Value = ''
      end>
    object qrydedA12: TFloatField
      FieldName = 'A12'
      Origin = 'SOFTEPS.LIQUIDACION_COMPENSACION.VAL_DEDUCIDO_AUT12'
    end
    object qrydedA8: TFloatField
      FieldName = 'A8'
      Origin = 'SOFTEPS.LIQUIDACION_COMPENSACION.VAL_DEDUCIDO_AUT8'
    end
  end
  object qrycoti: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      
        'select sum(val_total_cotiz12) as c12, sum(val_total_cotiz8) as c' +
        '8'
      'from liquidacion_compensacion a, declaraciones b'
      'where b.periodo_compensado = :per'
      'and b.num_declaracion = a.num_declaracion'
      'group by b.periodo_compensado')
    Left = 230
    Top = 12
    ParamData = <
      item
        DataType = ftString
        Name = 'per'
        ParamType = ptInputOutput
        Value = ''
      end>
    object qrycotiC12: TFloatField
      FieldName = 'C12'
      Origin = 'SOFTEPS.LIQUIDACION_COMPENSACION.VAL_TOTAL_COTIZ12'
    end
    object qrycotiC8: TFloatField
      FieldName = 'C8'
      Origin = 'SOFTEPS.LIQUIDACION_COMPENSACION.VAL_TOTAL_COTIZ8'
    end
  end
  object qryrecu: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      
        'select sum(val_reconocer_upc12) as r12, sum(val_reconocer_upc8) ' +
        'as r8'
      'from liquidacion_compensacion a, declaraciones b'
      'where b.periodo_compensado = :per'
      'and b.num_declaracion = a.num_declaracion'
      'group by b.periodo_compensado')
    Left = 230
    Top = 12
    ParamData = <
      item
        DataType = ftString
        Name = 'per'
        ParamType = ptUnknown
        Value = ''
      end>
    object qryrecuR12: TFloatField
      FieldName = 'R12'
      Origin = 'SOFTEPS.LIQUIDACION_COMPENSACION.VAL_RECONOCER_UPC12'
    end
    object qryrecuR8: TFloatField
      FieldName = 'R8'
      Origin = 'SOFTEPS.LIQUIDACION_COMPENSACION.VAL_RECONOCER_UPC8'
    end
  end
  object qrymat: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      
        'select sum(val_lincencias_mat12) as m12, sum(val_licencias_mat8)' +
        ' as m8'
      'from liquidacion_compensacion a, declaraciones b'
      'where b.periodo_compensado = :per'
      'and b.num_declaracion = a.num_declaracion'
      'group by b.periodo_compensado')
    Left = 230
    Top = 12
    ParamData = <
      item
        DataType = ftString
        Name = 'per'
        ParamType = ptUnknown
        Value = ''
      end>
    object qrymatM12: TFloatField
      FieldName = 'M12'
      Origin = 'SOFTEPS.LIQUIDACION_COMPENSACION.VAL_LINCENCIAS_MAT12'
    end
    object qrymatM8: TFloatField
      FieldName = 'M8'
      Origin = 'SOFTEPS.LIQUIDACION_COMPENSACION.VAL_LICENCIAS_MAT8'
    end
  end
  object qryinc: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      
        'select sum(pro_incapacidades12) as i12, sum(pro_incapacidades8) ' +
        'as i8'
      'from liquidacion_compensacion a, declaraciones b'
      'where b.periodo_compensado = :per'
      'and b.num_declaracion = a.num_declaracion'
      'group by b.periodo_compensado')
    Left = 230
    Top = 12
    ParamData = <
      item
        DataType = ftString
        Name = 'per'
        ParamType = ptUnknown
        Value = ''
      end>
    object qryincI12: TFloatField
      FieldName = 'I12'
      Origin = 'SOFTEPS.LIQUIDACION_COMPENSACION.PRO_INCAPACIDADES12'
    end
    object qryincI8: TFloatField
      FieldName = 'I8'
      Origin = 'SOFTEPS.LIQUIDACION_COMPENSACION.PRO_INCAPACIDADES8'
    end
  end
  object qrypc: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      
        'select sum(val_pagcobrar_fsg12) as p12,  sum(val_pagcobrar_fsg8)' +
        ' as p8'
      'from liquidacion_compensacion a, declaraciones b'
      'where b.periodo_compensado = :per'
      'and b.num_declaracion = a.num_declaracion'
      'group by b.periodo_compensado')
    Left = 230
    Top = 12
    ParamData = <
      item
        DataType = ftString
        Name = 'per'
        ParamType = ptInputOutput
        Value = ''
      end>
    object qrypcP12: TFloatField
      FieldName = 'P12'
      Origin = 'SOFTEPS.LIQUIDACION_COMPENSACION.VAL_PAGCOBRAR_FSG12'
    end
    object qrypcP8: TFloatField
      FieldName = 'P8'
      Origin = 'SOFTEPS.LIQUIDACION_COMPENSACION.VAL_PAGCOBRAR_FSG8'
    end
  end
  object qrypro: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      'select sum(val_promocion) as pr'
      'from liquidacion_compensacion a, declaraciones b'
      'where b.periodo_compensado = :per'
      'and b.num_declaracion = a.num_declaracion'
      'group by b.periodo_compensado')
    Left = 230
    Top = 12
    ParamData = <
      item
        DataType = ftString
        Name = 'per'
        ParamType = ptUnknown
        Value = ''
      end>
    object qryproPR: TFloatField
      FieldName = 'PR'
      Origin = 'SOFTEPS.LIQUIDACION_COMPENSACION.VAL_PROMOCION'
    end
  end
  object qryrpr: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      'select sum(rec_promocion) as rpr'
      'from liquidacion_compensacion a, declaraciones b'
      'where b.periodo_compensado = :per'
      'and b.num_declaracion = a.num_declaracion'
      'group by b.periodo_compensado')
    Left = 230
    Top = 12
    ParamData = <
      item
        DataType = ftString
        Name = 'per'
        ParamType = ptUnknown
        Value = ''
      end>
    object qryrprRPR: TFloatField
      FieldName = 'RPR'
      Origin = 'SOFTEPS.LIQUIDACION_COMPENSACION.REC_PROMOCION'
    end
  end
  object qryspr: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      'select sum(sal_compensar_prom) as spr'
      'from liquidacion_compensacion a, declaraciones b'
      'where b.periodo_compensado = :per'
      'and b.num_declaracion = a.num_declaracion'
      'group by b.periodo_compensado')
    Left = 230
    Top = 12
    ParamData = <
      item
        DataType = ftString
        Name = 'per'
        ParamType = ptUnknown
        Value = ''
      end>
    object qrysprSPR: TFloatField
      FieldName = 'SPR'
      Origin = 'SOFTEPS.LIQUIDACION_COMPENSACION.SAL_COMPENSAR_PROM'
    end
  end
  object qryvpa: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      'select sum(val_promocion)  as vp'
      'from bases_de_calculo_dep a, declaraciones b'
      'where b.periodo_compensado = :per'
      'and b.num_declaracion = a.num_declaracion'
      'group by b.periodo_compensado')
    Left = 230
    Top = 12
    ParamData = <
      item
        DataType = ftString
        Name = 'per'
        ParamType = ptUnknown
        Value = ''
      end>
    object qryvpaVP: TFloatField
      FieldName = 'VP'
      Origin = 'SOFTEPS.BASES_DE_CALCULO_DEP.VAL_PROMOCION'
    end
  end
  object qrysol: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      
        'select sum(val_solidaridad_12) as s12, sum(val_solidaridad_8) as' +
        ' s8'
      'from liquidacion_compensacion a, declaraciones b'
      'where b.periodo_compensado = :per'
      'and b.num_declaracion = a.num_declaracion'
      'group by b.periodo_compensado')
    Left = 230
    Top = 12
    ParamData = <
      item
        DataType = ftString
        Name = 'per'
        ParamType = ptUnknown
        Value = ''
      end>
    object qrysolS12: TFloatField
      FieldName = 'S12'
      Origin = 'SOFTEPS.LIQUIDACION_COMPENSACION.VAL_SOLIDARIDAD_12'
    end
    object qrysolS8: TFloatField
      FieldName = 'S8'
      Origin = 'SOFTEPS.LIQUIDACION_COMPENSACION.VAL_SOLIDARIDAD_8'
    end
  end
  object qrysola: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      'select sum(val_solidaridad)  as vsa'
      'from bases_de_calculo_dep a, declaraciones b'
      'where b.periodo_compensado = :per'
      'and b.num_declaracion = a.num_declaracion'
      'group by b.periodo_compensado')
    Left = 230
    Top = 12
    ParamData = <
      item
        DataType = ftString
        Name = 'per'
        ParamType = ptUnknown
        Value = ''
      end>
    object qrysolaVSA: TFloatField
      FieldName = 'VSA'
      Origin = 'SOFTEPS.BASES_DE_CALCULO_DEP.VAL_SOLIDARIDAD'
    end
  end
  object qryupcd: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      'select sum(val_upc_dependientes)  as upd'
      'from bases_de_calculo_dep a, declaraciones b'
      'where b.periodo_compensado = :per'
      'and b.num_declaracion = a.num_declaracion'
      'group by b.periodo_compensado')
    Left = 230
    Top = 12
    ParamData = <
      item
        DataType = ftString
        Name = 'per'
        ParamType = ptUnknown
        Value = ''
      end>
    object qryupcdUPD: TFloatField
      FieldName = 'UPD'
      Origin = 'SOFTEPS.BASES_DE_CALCULO_DEP.VAL_UPC_DEPENDIENTES'
    end
  end
  object qrypla005: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      'SELECT * '
      'FROM AUTOLIQUIDACION, DET_PLANILLA_AUTOLIQUIDACION, BANCOS'
      'WHERE FEC_PAGO >= :fec'
      'AND FEC_PAGO <= :fec1'
      
        'AND AUTOLIQUIDACION.NUM_PLANILLA = DET_PLANILLA_AUTOLIQUIDACION.' +
        'NUM_PLANILLA'
      'AND AUTOLIQUIDACION.COD_BANCO = BANCOS.COD_BANCO')
    Left = 230
    Top = 12
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'fec'
        ParamType = ptUnknown
        Value = 0d
      end
      item
        DataType = ftDateTime
        Name = 'fec1'
        ParamType = ptUnknown
        Value = 0d
      end>
    object qrypla005NUM_PLANILLA: TStringField
      FieldName = 'NUM_PLANILLA'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.NUM_PLANILLA'
      Size = 15
    end
    object qrypla005EMP_TIPO_DOC: TStringField
      FieldName = 'EMP_TIPO_DOC'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.EMP_TIPO_DOC'
      Size = 3
    end
    object qrypla005EMP_NUMERO_DOC: TStringField
      FieldName = 'EMP_NUMERO_DOC'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.EMP_NUMERO_DOC'
      Size = 18
    end
    object qrypla005COD_SUCURSAL: TStringField
      FieldName = 'COD_SUCURSAL'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.COD_SUCURSAL'
      Size = 2
    end
    object qrypla005TIP_DECLARACION: TStringField
      FieldName = 'TIP_DECLARACION'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.TIP_DECLARACION'
      Size = 1
    end
    object qrypla005FEC_PAGO: TDateTimeField
      FieldName = 'FEC_PAGO'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.FEC_PAGO'
    end
    object qrypla005NUM_PLANILLA_CORR: TStringField
      FieldName = 'NUM_PLANILLA_CORR'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.NUM_PLANILLA_CORR'
      Size = 15
    end
    object qrypla005PER_COTIZACION: TStringField
      FieldName = 'PER_COTIZACION'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.PER_COTIZACION'
      Size = 7
    end
    object qrypla005PER_PRESENTACION: TStringField
      FieldName = 'PER_PRESENTACION'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.PER_PRESENTACION'
      Size = 7
    end
    object qrypla005TOT_PLANILLA: TFloatField
      FieldName = 'TOT_PLANILLA'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.TOT_PLANILLA'
    end
    object qrypla005TOT_APORTE_PER: TFloatField
      FieldName = 'TOT_APORTE_PER'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.TOT_APORTE_PER'
    end
    object qrypla005TOT_INCAPACIDAD: TFloatField
      FieldName = 'TOT_INCAPACIDAD'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.TOT_INCAPACIDAD'
    end
    object qrypla005TOT_LICENCIAS: TFloatField
      FieldName = 'TOT_LICENCIAS'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.TOT_LICENCIAS'
    end
    object qrypla005TOT_APORTE: TFloatField
      FieldName = 'TOT_APORTE'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.TOT_APORTE'
    end
    object qrypla005INT_MORA: TFloatField
      FieldName = 'INT_MORA'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.INT_MORA'
    end
    object qrypla005TOT_APORTE_MMORA: TFloatField
      FieldName = 'TOT_APORTE_MMORA'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.TOT_APORTE_MMORA'
    end
    object qrypla005TOT_SALDO_FAV: TFloatField
      FieldName = 'TOT_SALDO_FAV'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.TOT_SALDO_FAV'
    end
    object qrypla005TOT_UPC: TFloatField
      FieldName = 'TOT_UPC'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.TOT_UPC'
    end
    object qrypla005TOT_PAGADO: TFloatField
      FieldName = 'TOT_PAGADO'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.TOT_PAGADO'
    end
    object qrypla005COD_BANCO: TStringField
      FieldName = 'COD_BANCO'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.COD_BANCO'
      Size = 3
    end
    object qrypla005NUM_CUENTA: TStringField
      FieldName = 'NUM_CUENTA'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.NUM_CUENTA'
    end
    object qrypla005VAL_EFECTIVO: TFloatField
      FieldName = 'VAL_EFECTIVO'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.VAL_EFECTIVO'
    end
    object qrypla005VAL_CHEQUE: TFloatField
      FieldName = 'VAL_CHEQUE'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.VAL_CHEQUE'
    end
    object qrypla005EST_PLANILLA: TStringField
      FieldName = 'EST_PLANILLA'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.EST_PLANILLA'
      Size = 3
    end
    object qrypla005COD_REGIONAL: TStringField
      FieldName = 'COD_REGIONAL'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.COD_REGIONAL'
      Size = 3
    end
    object qrypla005COD_OFICINA: TStringField
      FieldName = 'COD_OFICINA'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.COD_OFICINA'
      Size = 3
    end
    object qrypla005NUM_DECLARACION: TFloatField
      FieldName = 'NUM_DECLARACION'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.NUM_DECLARACION'
    end
    object qrypla005CRU_CONCILIACION: TStringField
      FieldName = 'CRU_CONCILIACION'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.CRU_CONCILIACION'
      Size = 1
    end
    object qrypla005FEC_DIGITACION: TDateTimeField
      FieldName = 'FEC_DIGITACION'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.FEC_DIGITACION'
    end
    object qrypla005TIP_DOC_USUARIO: TStringField
      FieldName = 'TIP_DOC_USUARIO'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.TIP_DOC_USUARIO'
      Size = 3
    end
    object qrypla005NUM_DOC_USUARIO: TStringField
      FieldName = 'NUM_DOC_USUARIO'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.NUM_DOC_USUARIO'
      Size = 18
    end
    object qrypla005FEC_MODIFICACION: TDateTimeField
      FieldName = 'FEC_MODIFICACION'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.FEC_MODIFICACION'
    end
    object qrypla005NO_INCAP_PAG: TStringField
      FieldName = 'NO_INCAP_PAG'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.NO_INCAP_PAG'
      Size = 30
    end
    object qrypla005VAL_INCAP_PAG: TFloatField
      FieldName = 'VAL_INCAP_PAG'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.VAL_INCAP_PAG'
    end
    object qrypla005NO_LICEN_PAG: TStringField
      FieldName = 'NO_LICEN_PAG'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.NO_LICEN_PAG'
      Size = 30
    end
    object qrypla005VAL_LICEN_PAG: TFloatField
      FieldName = 'VAL_LICEN_PAG'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.VAL_LICEN_PAG'
    end
    object qrypla005NO_MESES_MORA: TFloatField
      FieldName = 'NO_MESES_MORA'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.NO_MESES_MORA'
    end
    object qrypla005NO_PLANINILLA_ANT: TStringField
      FieldName = 'NO_PLANINILLA_ANT'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.NO_PLANINILLA_ANT'
      Size = 15
    end
    object qrypla005VAL_NETO_UPC: TFloatField
      FieldName = 'VAL_NETO_UPC'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.VAL_NETO_UPC'
    end
    object qrypla005VAL_INTERES_UPC: TFloatField
      FieldName = 'VAL_INTERES_UPC'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.VAL_INTERES_UPC'
    end
    object qrypla005VAL_APORMASINT_UPC: TFloatField
      FieldName = 'VAL_APORMASINT_UPC'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.VAL_APORMASINT_UPC'
    end
    object qrypla005VAL_SALFAVOR_UPC: TFloatField
      FieldName = 'VAL_SALFAVOR_UPC'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.VAL_SALFAVOR_UPC'
    end
    object qrypla005VAL_PAGO_UPC: TFloatField
      FieldName = 'VAL_PAGO_UPC'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.VAL_PAGO_UPC'
    end
    object qrypla005NUM_PLANILLA_1: TStringField
      FieldName = 'NUM_PLANILLA_1'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.VAL_PAGO_UPC'
      Size = 15
    end
    object qrypla005AFI_TIPO_DOC: TStringField
      FieldName = 'AFI_TIPO_DOC'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.VAL_PAGO_UPC'
      Size = 3
    end
    object qrypla005AFI_NUMERO_DOC: TStringField
      FieldName = 'AFI_NUMERO_DOC'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.VAL_PAGO_UPC'
      Size = 18
    end
    object qrypla005NOV_ING: TStringField
      FieldName = 'NOV_ING'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.VAL_PAGO_UPC'
      Size = 1
    end
    object qrypla005NOV_RET: TStringField
      FieldName = 'NOV_RET'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.VAL_PAGO_UPC'
      Size = 1
    end
    object qrypla005NOV_TDA: TStringField
      FieldName = 'NOV_TDA'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.VAL_PAGO_UPC'
      Size = 1
    end
    object qrypla005NOV_TAA: TStringField
      FieldName = 'NOV_TAA'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.VAL_PAGO_UPC'
      Size = 1
    end
    object qrypla005NOV_VSP: TStringField
      FieldName = 'NOV_VSP'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.VAL_PAGO_UPC'
      Size = 1
    end
    object qrypla005NOV_VST: TStringField
      FieldName = 'NOV_VST'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.VAL_PAGO_UPC'
      Size = 1
    end
    object qrypla005NOV_SLN: TStringField
      FieldName = 'NOV_SLN'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.VAL_PAGO_UPC'
      Size = 1
    end
    object qrypla005NOV_IGE: TStringField
      FieldName = 'NOV_IGE'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.VAL_PAGO_UPC'
      Size = 1
    end
    object qrypla005NOV_LMA: TStringField
      FieldName = 'NOV_LMA'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.VAL_PAGO_UPC'
      Size = 1
    end
    object qrypla005NOV_VAC: TStringField
      FieldName = 'NOV_VAC'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.VAL_PAGO_UPC'
      Size = 1
    end
    object qrypla005DIA_COTIZADOS: TStringField
      FieldName = 'DIA_COTIZADOS'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.VAL_PAGO_UPC'
      Size = 2
    end
    object qrypla005SAL_BASE: TFloatField
      FieldName = 'SAL_BASE'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.VAL_PAGO_UPC'
    end
    object qrypla005VAL_NETO_NOV: TFloatField
      FieldName = 'VAL_NETO_NOV'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.VAL_PAGO_UPC'
    end
    object qrypla005ING_BASE_COT: TFloatField
      FieldName = 'ING_BASE_COT'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.VAL_PAGO_UPC'
    end
    object qrypla005COT_OBLIGATORIA: TFloatField
      FieldName = 'COT_OBLIGATORIA'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.VAL_PAGO_UPC'
    end
    object qrypla005NUM_INCAPACIDAD_EGR: TStringField
      FieldName = 'NUM_INCAPACIDAD_EGR'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.VAL_PAGO_UPC'
      Size = 10
    end
    object qrypla005VAL_INCAPACIDAD_EGR: TFloatField
      FieldName = 'VAL_INCAPACIDAD_EGR'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.VAL_PAGO_UPC'
    end
    object qrypla005NUM_LICENCIA_MAT: TStringField
      FieldName = 'NUM_LICENCIA_MAT'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.VAL_PAGO_UPC'
      Size = 10
    end
    object qrypla005VAL_LICENCIA_MAT: TFloatField
      FieldName = 'VAL_LICENCIA_MAT'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.VAL_PAGO_UPC'
    end
    object qrypla005VAL_UPC_ADI: TFloatField
      FieldName = 'VAL_UPC_ADI'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.VAL_PAGO_UPC'
    end
    object qrypla005VAL_TOTAL_COT: TFloatField
      FieldName = 'VAL_TOTAL_COT'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.VAL_PAGO_UPC'
    end
    object qrypla005DET_ESTADO: TStringField
      FieldName = 'DET_ESTADO'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.VAL_PAGO_UPC'
      Size = 3
    end
    object qrypla005PER_COTIZACION_1: TStringField
      FieldName = 'PER_COTIZACION_1'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.VAL_PAGO_UPC'
      Size = 7
    end
    object qrypla005PER_PRESENTACION_1: TStringField
      FieldName = 'PER_PRESENTACION_1'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.VAL_PAGO_UPC'
      Size = 7
    end
    object qrypla005COD_OFICINA_1: TStringField
      FieldName = 'COD_OFICINA_1'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.VAL_PAGO_UPC'
      Size = 3
    end
    object qrypla005NUM_DECLARACION_1: TFloatField
      FieldName = 'NUM_DECLARACION_1'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.VAL_PAGO_UPC'
    end
    object qrypla005COD_BANCO_1: TStringField
      FieldName = 'COD_BANCO_1'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.NUM_PLANILLA'
      Size = 3
    end
    object qrypla005NOM_BANCO: TStringField
      FieldName = 'NOM_BANCO'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.NUM_PLANILLA'
      Size = 50
    end
    object qrypla005CTA_BANCO: TStringField
      FieldName = 'CTA_BANCO'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.NUM_PLANILLA'
      Size = 15
    end
    object qrypla005DIR_BANCO: TStringField
      FieldName = 'DIR_BANCO'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.NUM_PLANILLA'
      Size = 70
    end
    object qrypla005TIP_DOCUMENTO: TStringField
      FieldName = 'TIP_DOCUMENTO'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.NUM_PLANILLA'
      Size = 3
    end
    object qrypla005NUM_DOCUMENTO: TStringField
      FieldName = 'NUM_DOCUMENTO'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.NUM_PLANILLA'
      Size = 18
    end
    object qrypla005COD_DEPARTAMENTO: TStringField
      FieldName = 'COD_DEPARTAMENTO'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.NUM_PLANILLA'
      Size = 2
    end
    object qrypla005COD_CIUDAD: TStringField
      FieldName = 'COD_CIUDAD'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.NUM_PLANILLA'
      Size = 3
    end
    object qrypla005TIPO_RECAUDO: TStringField
      FieldName = 'TIPO_RECAUDO'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.NUM_PLANILLA'
      Size = 1
    end
    object qrypla005EST_BANCO: TStringField
      FieldName = 'EST_BANCO'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.NUM_PLANILLA'
      Size = 1
    end
  end
  object qryplac005: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      'SELECT * FROM AFILIADOS_COMPENSADOS, DECLARACIONES'
      'WHERE AFI_NUMERO_DOC = :DOC'
      'AND NUM_PLANILLA = :PLA'
      
        'AND AFILIADOS_COMPENSADOS.NUM_DECLARACION = DECLARACIONES.NUM_DE' +
        'CLARACION')
    Left = 230
    Top = 12
    ParamData = <
      item
        DataType = ftString
        Name = 'DOC'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'PLA'
        ParamType = ptUnknown
        Value = ''
      end>
    object qryplac005AFI_NUMERO_DOC: TStringField
      FieldName = 'AFI_NUMERO_DOC'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.AFI_NUMERO_DOC'
      Size = 18
    end
    object qryplac005AFI_TIPO_DOC: TStringField
      FieldName = 'AFI_TIPO_DOC'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.AFI_TIPO_DOC'
      Size = 3
    end
    object qryplac005NUM_DECLARACION: TFloatField
      FieldName = 'NUM_DECLARACION'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.NUM_DECLARACION'
    end
    object qryplac005COD_GRUPO_ETAREO: TFloatField
      FieldName = 'COD_GRUPO_ETAREO'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.COD_GRUPO_ETAREO'
    end
    object qryplac005TIP_UPC: TStringField
      FieldName = 'TIP_UPC'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.TIP_UPC'
      Size = 1
    end
    object qryplac005TIP_PAGO: TStringField
      FieldName = 'TIP_PAGO'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.TIP_PAGO'
      Size = 1
    end
    object qryplac005TIP_BENEFICIARIO: TStringField
      FieldName = 'TIP_BENEFICIARIO'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.TIP_BENEFICIARIO'
      Size = 1
    end
    object qryplac005DIAS: TStringField
      FieldName = 'DIAS'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.DIAS'
      Size = 2
    end
    object qryplac005SALARIO: TFloatField
      FieldName = 'SALARIO'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.SALARIO'
    end
    object qryplac005PORCENTAJE: TStringField
      FieldName = 'PORCENTAJE'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.PORCENTAJE'
      Size = 2
    end
    object qryplac005COTIZACION: TFloatField
      FieldName = 'COTIZACION'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.COTIZACION'
    end
    object qryplac005VAL_DEDUCCION: TFloatField
      FieldName = 'VAL_DEDUCCION'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.VAL_DEDUCCION'
    end
    object qryplac005TIP_DEDUCCION: TStringField
      FieldName = 'TIP_DEDUCCION'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.TIP_DEDUCCION'
      Size = 3
    end
    object qryplac005VALOR_UPC: TFloatField
      FieldName = 'VALOR_UPC'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.VALOR_UPC'
    end
    object qryplac005TIP_AFILIADO: TStringField
      FieldName = 'TIP_AFILIADO'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.TIP_AFILIADO'
      Size = 1
    end
    object qryplac005FEC_CONSIGNACION: TDateTimeField
      FieldName = 'FEC_CONSIGNACION'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.FEC_CONSIGNACION'
    end
    object qryplac005COD_PARENTESCO: TStringField
      FieldName = 'COD_PARENTESCO'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.COD_PARENTESCO'
      Size = 3
    end
    object qryplac005NUM_PLANILLA: TStringField
      FieldName = 'NUM_PLANILLA'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.NUM_PLANILLA'
      Size = 15
    end
    object qryplac005TIP_DOCUMENTO_COT: TStringField
      FieldName = 'TIP_DOCUMENTO_COT'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.TIP_DOCUMENTO_COT'
      Size = 3
    end
    object qryplac005NUM_DOCUMENTO_COT: TStringField
      FieldName = 'NUM_DOCUMENTO_COT'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.NUM_DOCUMENTO_COT'
      Size = 18
    end
    object qryplac005EMP_TIPO_DOC: TStringField
      FieldName = 'EMP_TIPO_DOC'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.EMP_TIPO_DOC'
      Size = 3
    end
    object qryplac005EMP_NUMERO_DOC: TStringField
      FieldName = 'EMP_NUMERO_DOC'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.EMP_NUMERO_DOC'
      Size = 15
    end
    object qryplac005ID_MULTIAFILIADO: TStringField
      FieldName = 'ID_MULTIAFILIADO'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.ID_MULTIAFILIADO'
      Size = 9
    end
    object qryplac005CAUSA: TStringField
      FieldName = 'CAUSA'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.CAUSA'
      Size = 30
    end
    object qryplac005VAL_UPC: TFloatField
      FieldName = 'VAL_UPC'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.VAL_UPC'
    end
    object qryplac005EST_MULTIAFILIADO: TStringField
      FieldName = 'EST_MULTIAFILIADO'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.EST_MULTIAFILIADO'
      Size = 3
    end
    object qryplac005NUM_DECLARACION_ANT: TFloatField
      FieldName = 'NUM_DECLARACION_ANT'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.NUM_DECLARACION_ANT'
    end
    object qryplac005NUM_DECLARACION_1: TFloatField
      FieldName = 'NUM_DECLARACION_1'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.AFI_NUMERO_DOC'
    end
    object qryplac005COT_TIPO_DECLA: TFloatField
      FieldName = 'COT_TIPO_DECLA'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.AFI_NUMERO_DOC'
    end
    object qryplac005PERIODO_COMPENSADO: TStringField
      FieldName = 'PERIODO_COMPENSADO'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.AFI_NUMERO_DOC'
      Size = 10
    end
    object qryplac005FECHA_DECLARACION: TDateTimeField
      FieldName = 'FECHA_DECLARACION'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.AFI_NUMERO_DOC'
    end
    object qryplac005TIPO_CIERRE: TStringField
      FieldName = 'TIPO_CIERRE'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.AFI_NUMERO_DOC'
      Size = 1
    end
    object qryplac005NUM_DECLARATIVA: TFloatField
      FieldName = 'NUM_DECLARATIVA'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.AFI_NUMERO_DOC'
    end
  end
  object qryaf005: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      'SELECT * FROM AFILIADOS'
      'WHERE TIP_DOCUMENTO = :TP'
      'AND NUM_DOCUMENTO = :NM')
    Left = 230
    Top = 12
    ParamData = <
      item
        DataType = ftString
        Name = 'TP'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NM'
        ParamType = ptUnknown
        Value = ''
      end>
    object qryaf005TIP_DOCUMENTO: TStringField
      FieldName = 'TIP_DOCUMENTO'
      Origin = 'SOFTEPS.AFILIADOS.TIP_DOCUMENTO'
      Size = 3
    end
    object qryaf005NUM_DOCUMENTO: TStringField
      FieldName = 'NUM_DOCUMENTO'
      Origin = 'SOFTEPS.AFILIADOS.NUM_DOCUMENTO'
      Size = 18
    end
    object qryaf005COD_SEXO: TStringField
      FieldName = 'COD_SEXO'
      Origin = 'SOFTEPS.AFILIADOS.COD_SEXO'
      Size = 1
    end
    object qryaf005COD_TIPO_AFIL: TStringField
      FieldName = 'COD_TIPO_AFIL'
      Origin = 'SOFTEPS.AFILIADOS.COD_TIPO_AFIL'
      Size = 1
    end
    object qryaf005COD_MODALIDAD_TRA: TStringField
      FieldName = 'COD_MODALIDAD_TRA'
      Origin = 'SOFTEPS.AFILIADOS.COD_MODALIDAD_TRA'
      Size = 1
    end
    object qryaf005COD_ESTADO_CIV: TStringField
      FieldName = 'COD_ESTADO_CIV'
      Origin = 'SOFTEPS.AFILIADOS.COD_ESTADO_CIV'
      Size = 1
    end
    object qryaf005COD_ESTRATO: TStringField
      FieldName = 'COD_ESTRATO'
      Origin = 'SOFTEPS.AFILIADOS.COD_ESTRATO'
      Size = 3
    end
    object qryaf005COD_ESCOLARIDAD: TStringField
      FieldName = 'COD_ESCOLARIDAD'
      Origin = 'SOFTEPS.AFILIADOS.COD_ESCOLARIDAD'
      Size = 3
    end
    object qryaf005COD_PROFESION: TStringField
      FieldName = 'COD_PROFESION'
      Origin = 'SOFTEPS.AFILIADOS.COD_PROFESION'
      Size = 3
    end
    object qryaf005COD_ESTADO: TStringField
      FieldName = 'COD_ESTADO'
      Origin = 'SOFTEPS.AFILIADOS.COD_ESTADO'
      Size = 2
    end
    object qryaf005COD_OFICINA: TStringField
      FieldName = 'COD_OFICINA'
      Origin = 'SOFTEPS.AFILIADOS.COD_OFICINA'
      Size = 3
    end
    object qryaf005COD_REGIONAL: TStringField
      FieldName = 'COD_REGIONAL'
      Origin = 'SOFTEPS.AFILIADOS.COD_REGIONAL'
      Size = 3
    end
    object qryaf005PRI_NOMBRE: TStringField
      FieldName = 'PRI_NOMBRE'
      Origin = 'SOFTEPS.AFILIADOS.PRI_NOMBRE'
      Size = 25
    end
    object qryaf005SEG_NOMBRE: TStringField
      FieldName = 'SEG_NOMBRE'
      Origin = 'SOFTEPS.AFILIADOS.SEG_NOMBRE'
      Size = 25
    end
    object qryaf005PRI_APELLIDO: TStringField
      FieldName = 'PRI_APELLIDO'
      Origin = 'SOFTEPS.AFILIADOS.PRI_APELLIDO'
      Size = 25
    end
    object qryaf005SEG_APELLIDO: TStringField
      FieldName = 'SEG_APELLIDO'
      Origin = 'SOFTEPS.AFILIADOS.SEG_APELLIDO'
      Size = 25
    end
    object qryaf005FEC_NACIMIENTO: TDateTimeField
      FieldName = 'FEC_NACIMIENTO'
      Origin = 'SOFTEPS.AFILIADOS.FEC_NACIMIENTO'
    end
    object qryaf005FEC_AFILIACION_SIS: TDateTimeField
      FieldName = 'FEC_AFILIACION_SIS'
      Origin = 'SOFTEPS.AFILIADOS.FEC_AFILIACION_SIS'
    end
    object qryaf005FEC_AFILIACION_UNI: TDateTimeField
      FieldName = 'FEC_AFILIACION_UNI'
      Origin = 'SOFTEPS.AFILIADOS.FEC_AFILIACION_UNI'
    end
    object qryaf005EPS_TIP_DOC: TStringField
      FieldName = 'EPS_TIP_DOC'
      Origin = 'SOFTEPS.AFILIADOS.EPS_TIP_DOC'
      Size = 3
    end
    object qryaf005EPS_NUM_DOC: TStringField
      FieldName = 'EPS_NUM_DOC'
      Origin = 'SOFTEPS.AFILIADOS.EPS_NUM_DOC'
      Size = 18
    end
    object qryaf005COD_DEPARTAMENTO_RES: TStringField
      FieldName = 'COD_DEPARTAMENTO_RES'
      Origin = 'SOFTEPS.AFILIADOS.COD_DEPARTAMENTO_RES'
      Size = 2
    end
    object qryaf005COD_CIUDAD_RES: TStringField
      FieldName = 'COD_CIUDAD_RES'
      Origin = 'SOFTEPS.AFILIADOS.COD_CIUDAD_RES'
      Size = 3
    end
    object qryaf005COD_BARRIO_RES: TStringField
      FieldName = 'COD_BARRIO_RES'
      Origin = 'SOFTEPS.AFILIADOS.COD_BARRIO_RES'
      Size = 3
    end
    object qryaf005COD_ZONA: TStringField
      FieldName = 'COD_ZONA'
      Origin = 'SOFTEPS.AFILIADOS.COD_ZONA'
      Size = 3
    end
    object qryaf005ACE_TIP_DOC: TStringField
      FieldName = 'ACE_TIP_DOC'
      Origin = 'SOFTEPS.AFILIADOS.ACE_TIP_DOC'
      Size = 3
    end
    object qryaf005ACE_NUMERO_DOC: TStringField
      FieldName = 'ACE_NUMERO_DOC'
      Origin = 'SOFTEPS.AFILIADOS.ACE_NUMERO_DOC'
      Size = 18
    end
    object qryaf005COD_DISCAPACIDAD: TStringField
      FieldName = 'COD_DISCAPACIDAD'
      Origin = 'SOFTEPS.AFILIADOS.COD_DISCAPACIDAD'
      Size = 1
    end
    object qryaf005NUM_SEMANA_COTIZA: TFloatField
      FieldName = 'NUM_SEMANA_COTIZA'
      Origin = 'SOFTEPS.AFILIADOS.NUM_SEMANA_COTIZA'
    end
    object qryaf005FEC_RADICACION: TDateTimeField
      FieldName = 'FEC_RADICACION'
      Origin = 'SOFTEPS.AFILIADOS.FEC_RADICACION'
    end
    object qryaf005NUM_FORMATO_AFIL: TStringField
      FieldName = 'NUM_FORMATO_AFIL'
      Origin = 'SOFTEPS.AFILIADOS.NUM_FORMATO_AFIL'
      Size = 10
    end
    object qryaf005DIR_AFILIADO_RES: TStringField
      FieldName = 'DIR_AFILIADO_RES'
      Origin = 'SOFTEPS.AFILIADOS.DIR_AFILIADO_RES'
      Size = 50
    end
    object qryaf005TEL_AFILIADO_RES: TStringField
      FieldName = 'TEL_AFILIADO_RES'
      Origin = 'SOFTEPS.AFILIADOS.TEL_AFILIADO_RES'
    end
    object qryaf005TEL_AFILIADO_RES2: TStringField
      FieldName = 'TEL_AFILIADO_RES2'
      Origin = 'SOFTEPS.AFILIADOS.TEL_AFILIADO_RES2'
    end
    object qryaf005CEL_AFILIADO: TStringField
      FieldName = 'CEL_AFILIADO'
      Origin = 'SOFTEPS.AFILIADOS.CEL_AFILIADO'
    end
    object qryaf005EML_AFILIADO: TStringField
      FieldName = 'EML_AFILIADO'
      Origin = 'SOFTEPS.AFILIADOS.EML_AFILIADO'
      Size = 50
    end
    object qryaf005FEC_ULTIMA_NOV: TDateTimeField
      FieldName = 'FEC_ULTIMA_NOV'
      Origin = 'SOFTEPS.AFILIADOS.FEC_ULTIMA_NOV'
    end
    object qryaf005TIP_DOCUMENTO_IPS: TStringField
      FieldName = 'TIP_DOCUMENTO_IPS'
      Origin = 'SOFTEPS.AFILIADOS.TIP_DOCUMENTO_IPS'
      Size = 3
    end
    object qryaf005NUM_DOCUMENTO_IPS: TStringField
      FieldName = 'NUM_DOCUMENTO_IPS'
      Origin = 'SOFTEPS.AFILIADOS.NUM_DOCUMENTO_IPS'
      Size = 18
    end
    object qryaf005TIP_DOCUMENTO_MED: TStringField
      FieldName = 'TIP_DOCUMENTO_MED'
      Origin = 'SOFTEPS.AFILIADOS.TIP_DOCUMENTO_MED'
      Size = 3
    end
    object qryaf005NUM_DOCUMENTO_MED: TStringField
      FieldName = 'NUM_DOCUMENTO_MED'
      Origin = 'SOFTEPS.AFILIADOS.NUM_DOCUMENTO_MED'
      Size = 18
    end
    object qryaf005TIP_DOCUMENTO_ODO: TStringField
      FieldName = 'TIP_DOCUMENTO_ODO'
      Origin = 'SOFTEPS.AFILIADOS.TIP_DOCUMENTO_ODO'
      Size = 3
    end
    object qryaf005NUM_DOCUMENTO_ODO: TStringField
      FieldName = 'NUM_DOCUMENTO_ODO'
      Origin = 'SOFTEPS.AFILIADOS.NUM_DOCUMENTO_ODO'
      Size = 18
    end
    object qryaf005SEM_COTIZACION: TFloatField
      FieldName = 'SEM_COTIZACION'
      Origin = 'SOFTEPS.AFILIADOS.SEM_COTIZACION'
    end
  end
  object qrymcafiemp890: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      'SELECT * FROM AFILIADOS_EMPRESAS '
      'WHERE TIP_DOCUMENTO_AFI = :tip_documento'
      '          AND NUM_DOCUMENTO_AFI = :num_documento'
      '')
    Left = 230
    Top = 12
    ParamData = <
      item
        DataType = ftString
        Name = 'tip_documento'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'num_documento'
        ParamType = ptUnknown
        Value = ''
      end>
    object qrymcafiemp890COD_OCUPACION: TStringField
      FieldName = 'COD_OCUPACION'
      Origin = 'SOFTEPS.AFILIADOS_EMPRESAS.COD_OCUPACION'
      Size = 3
    end
    object qrymcafiemp890TIP_DOCUMENTO_AFI: TStringField
      FieldName = 'TIP_DOCUMENTO_AFI'
      Origin = 'SOFTEPS.AFILIADOS_EMPRESAS.TIP_DOCUMENTO_AFI'
      Size = 3
    end
    object qrymcafiemp890NUM_DOCUMENTO_AFI: TStringField
      FieldName = 'NUM_DOCUMENTO_AFI'
      Origin = 'SOFTEPS.AFILIADOS_EMPRESAS.NUM_DOCUMENTO_AFI'
      Size = 18
    end
    object qrymcafiemp890TIP_DOCUMENTO_EMP: TStringField
      FieldName = 'TIP_DOCUMENTO_EMP'
      Origin = 'SOFTEPS.AFILIADOS_EMPRESAS.TIP_DOCUMENTO_EMP'
      Size = 3
    end
    object qrymcafiemp890NUM_DOCUMENTO_EMP: TStringField
      FieldName = 'NUM_DOCUMENTO_EMP'
      Origin = 'SOFTEPS.AFILIADOS_EMPRESAS.NUM_DOCUMENTO_EMP'
      Size = 18
    end
    object qrymcafiemp890COD_SUCURSAL: TStringField
      FieldName = 'COD_SUCURSAL'
      Origin = 'SOFTEPS.AFILIADOS_EMPRESAS.COD_SUCURSAL'
      Size = 2
    end
    object qrymcafiemp890COD_ESTADO: TStringField
      FieldName = 'COD_ESTADO'
      Origin = 'SOFTEPS.AFILIADOS_EMPRESAS.COD_ESTADO'
      Size = 2
    end
    object qrymcafiemp890VAL_SUELDO_AFIL: TFloatField
      FieldName = 'VAL_SUELDO_AFIL'
      Origin = 'SOFTEPS.AFILIADOS_EMPRESAS.VAL_SUELDO_AFIL'
    end
    object qrymcafiemp890FEC_INGRESO_UNI: TDateTimeField
      FieldName = 'FEC_INGRESO_UNI'
      Origin = 'SOFTEPS.AFILIADOS_EMPRESAS.FEC_INGRESO_UNI'
    end
    object qrymcafiemp890FEC_EGRESO_UNI: TDateTimeField
      FieldName = 'FEC_EGRESO_UNI'
      Origin = 'SOFTEPS.AFILIADOS_EMPRESAS.FEC_EGRESO_UNI'
    end
    object qrymcafiemp890COD_DEPARTAMENTO_LAB: TStringField
      FieldName = 'COD_DEPARTAMENTO_LAB'
      Origin = 'SOFTEPS.AFILIADOS_EMPRESAS.COD_DEPARTAMENTO_LAB'
      Size = 2
    end
    object qrymcafiemp890COD_CIUDAD_LAB: TStringField
      FieldName = 'COD_CIUDAD_LAB'
      Origin = 'SOFTEPS.AFILIADOS_EMPRESAS.COD_CIUDAD_LAB'
      Size = 3
    end
    object qrymcafiemp890DIR_AFILIADO_LAB: TStringField
      FieldName = 'DIR_AFILIADO_LAB'
      Origin = 'SOFTEPS.AFILIADOS_EMPRESAS.DIR_AFILIADO_LAB'
      Size = 50
    end
    object qrymcafiemp890TEL_AFILIADO_LAB: TStringField
      FieldName = 'TEL_AFILIADO_LAB'
      Origin = 'SOFTEPS.AFILIADOS_EMPRESAS.TEL_AFILIADO_LAB'
    end
    object qrymcafiemp890TEL_AFILIADO_LAB2: TStringField
      FieldName = 'TEL_AFILIADO_LAB2'
      Origin = 'SOFTEPS.AFILIADOS_EMPRESAS.TEL_AFILIADO_LAB2'
    end
    object qrymcafiemp890COD_TIPO_SAL: TStringField
      FieldName = 'COD_TIPO_SAL'
      Origin = 'SOFTEPS.AFILIADOS_EMPRESAS.COD_TIPO_SAL'
      Size = 1
    end
    object qrymcafiemp890COD_ZONA: TStringField
      FieldName = 'COD_ZONA'
      Origin = 'SOFTEPS.AFILIADOS_EMPRESAS.COD_ZONA'
      Size = 3
    end
    object qrymcafiemp890FEC_ING_EMPRESA: TDateTimeField
      FieldName = 'FEC_ING_EMPRESA'
      Origin = 'SOFTEPS.AFILIADOS_EMPRESAS.FEC_ING_EMPRESA'
    end
  end
  object qrymcrel890: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      'SELECT * FROM RELACION_AFILIADOS '
      'WHERE TIP_DOCUMENTO_BEN =  :tip_documento'
      '          AND NUM_DOCUMENTO_BEN = :num_documento'
      '')
    Left = 230
    Top = 12
    ParamData = <
      item
        DataType = ftString
        Name = 'tip_documento'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'num_documento'
        ParamType = ptUnknown
        Value = ''
      end>
    object qrymcrel890TIP_DOCUMENTO_COT: TStringField
      FieldName = 'TIP_DOCUMENTO_COT'
      Origin = 'SOFTEPS.RELACION_AFILIADOS.TIP_DOCUMENTO_COT'
      Size = 3
    end
    object qrymcrel890NUM_DOCUMENTO_COT: TStringField
      FieldName = 'NUM_DOCUMENTO_COT'
      Origin = 'SOFTEPS.RELACION_AFILIADOS.NUM_DOCUMENTO_COT'
      Size = 18
    end
    object qrymcrel890TIP_DOCUMENTO_BEN: TStringField
      FieldName = 'TIP_DOCUMENTO_BEN'
      Origin = 'SOFTEPS.RELACION_AFILIADOS.TIP_DOCUMENTO_BEN'
      Size = 3
    end
    object qrymcrel890NUM_DOCUMENTO_BEN: TStringField
      FieldName = 'NUM_DOCUMENTO_BEN'
      Origin = 'SOFTEPS.RELACION_AFILIADOS.NUM_DOCUMENTO_BEN'
      Size = 18
    end
    object qrymcrel890FEC_INCLUSION_NOV: TDateTimeField
      FieldName = 'FEC_INCLUSION_NOV'
      Origin = 'SOFTEPS.RELACION_AFILIADOS.FEC_INCLUSION_NOV'
    end
    object qrymcrel890COD_PARENTESCO: TStringField
      FieldName = 'COD_PARENTESCO'
      Origin = 'SOFTEPS.RELACION_AFILIADOS.COD_PARENTESCO'
      Size = 3
    end
    object qrymcrel890FEC_EXCLUSION_NOV: TDateTimeField
      FieldName = 'FEC_EXCLUSION_NOV'
      Origin = 'SOFTEPS.RELACION_AFILIADOS.FEC_EXCLUSION_NOV'
    end
    object qrymcrel890COD_ESTADO: TStringField
      FieldName = 'COD_ESTADO'
      Origin = 'SOFTEPS.RELACION_AFILIADOS.COD_ESTADO'
      Size = 2
    end
    object qrymcrel890COD_RELACION_ADI: TStringField
      FieldName = 'COD_RELACION_ADI'
      Origin = 'SOFTEPS.RELACION_AFILIADOS.COD_RELACION_ADI'
      Size = 2
    end
  end
  object qrymcempr890: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      'SELECT * FROM EMPRESAS'
      'WHERE TIP_DOCUMENTO = :TP_DOC'
      'AND NUM_DOCUMENTO = :DOC')
    Left = 230
    Top = 12
    ParamData = <
      item
        DataType = ftString
        Name = 'TP_DOC'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'DOC'
        ParamType = ptUnknown
        Value = ''
      end>
    object qrymcempr890TIP_DOCUMENTO: TStringField
      FieldName = 'TIP_DOCUMENTO'
      Origin = 'SOFTEPS.EMPRESAS.TIP_DOCUMENTO'
      Size = 3
    end
    object qrymcempr890NUM_DOCUMENTO: TStringField
      FieldName = 'NUM_DOCUMENTO'
      Origin = 'SOFTEPS.EMPRESAS.NUM_DOCUMENTO'
      Size = 18
    end
    object qrymcempr890COD_SUCURSAL: TStringField
      FieldName = 'COD_SUCURSAL'
      Origin = 'SOFTEPS.EMPRESAS.COD_SUCURSAL'
      Size = 2
    end
    object qrymcempr890COD_ACTIVIDAD_ECO: TStringField
      FieldName = 'COD_ACTIVIDAD_ECO'
      Origin = 'SOFTEPS.EMPRESAS.COD_ACTIVIDAD_ECO'
      Size = 4
    end
    object qrymcempr890COD_ESTADO: TStringField
      FieldName = 'COD_ESTADO'
      Origin = 'SOFTEPS.EMPRESAS.COD_ESTADO'
      Size = 2
    end
    object qrymcempr890COD_OFICINA: TStringField
      FieldName = 'COD_OFICINA'
      Origin = 'SOFTEPS.EMPRESAS.COD_OFICINA'
      Size = 3
    end
    object qrymcempr890COD_REGIONAL: TStringField
      FieldName = 'COD_REGIONAL'
      Origin = 'SOFTEPS.EMPRESAS.COD_REGIONAL'
      Size = 3
    end
    object qrymcempr890TIP_DOCUMENTO_ARP: TStringField
      FieldName = 'TIP_DOCUMENTO_ARP'
      Origin = 'SOFTEPS.EMPRESAS.TIP_DOCUMENTO_ARP'
      Size = 3
    end
    object qrymcempr890NUM_DOCUMENTO_ARP: TStringField
      FieldName = 'NUM_DOCUMENTO_ARP'
      Origin = 'SOFTEPS.EMPRESAS.NUM_DOCUMENTO_ARP'
      Size = 18
    end
    object qrymcempr890COD_DEPARTAMENTO: TStringField
      FieldName = 'COD_DEPARTAMENTO'
      Origin = 'SOFTEPS.EMPRESAS.COD_DEPARTAMENTO'
      Size = 2
    end
    object qrymcempr890COD_CIUDAD: TStringField
      FieldName = 'COD_CIUDAD'
      Origin = 'SOFTEPS.EMPRESAS.COD_CIUDAD'
      Size = 3
    end
    object qrymcempr890TIP_APORTANTE: TStringField
      FieldName = 'TIP_APORTANTE'
      Origin = 'SOFTEPS.EMPRESAS.TIP_APORTANTE'
      Size = 1
    end
    object qrymcempr890NOM_EMPRESA: TStringField
      FieldName = 'NOM_EMPRESA'
      Origin = 'SOFTEPS.EMPRESAS.NOM_EMPRESA'
      Size = 100
    end
    object qrymcempr890FEC_AFILIACION: TDateTimeField
      FieldName = 'FEC_AFILIACION'
      Origin = 'SOFTEPS.EMPRESAS.FEC_AFILIACION'
    end
    object qrymcempr890DIR_EMPRESA: TStringField
      FieldName = 'DIR_EMPRESA'
      Origin = 'SOFTEPS.EMPRESAS.DIR_EMPRESA'
      Size = 50
    end
    object qrymcempr890TEL_EMPRESA: TStringField
      FieldName = 'TEL_EMPRESA'
      Origin = 'SOFTEPS.EMPRESAS.TEL_EMPRESA'
    end
    object qrymcempr890TEL_EMPRESA2: TStringField
      FieldName = 'TEL_EMPRESA2'
      Origin = 'SOFTEPS.EMPRESAS.TEL_EMPRESA2'
    end
    object qrymcempr890URL_EMPRESA: TStringField
      FieldName = 'URL_EMPRESA'
      Origin = 'SOFTEPS.EMPRESAS.URL_EMPRESA'
    end
    object qrymcempr890EML_EMPRESA: TStringField
      FieldName = 'EML_EMPRESA'
      Origin = 'SOFTEPS.EMPRESAS.EML_EMPRESA'
      Size = 50
    end
    object qrymcempr890TOT_EMPLEADOS: TStringField
      FieldName = 'TOT_EMPLEADOS'
      Origin = 'SOFTEPS.EMPRESAS.TOT_EMPLEADOS'
      Size = 10
    end
    object qrymcempr890COD_TIPO_PER: TStringField
      FieldName = 'COD_TIPO_PER'
      Origin = 'SOFTEPS.EMPRESAS.COD_TIPO_PER'
      Size = 1
    end
    object qrymcempr890COD_ZONA: TStringField
      FieldName = 'COD_ZONA'
      Origin = 'SOFTEPS.EMPRESAS.COD_ZONA'
      Size = 3
    end
    object qrymcempr890COD_DEPARTAMENTO_PAG: TStringField
      FieldName = 'COD_DEPARTAMENTO_PAG'
      Origin = 'SOFTEPS.EMPRESAS.COD_DEPARTAMENTO_PAG'
      Size = 2
    end
    object qrymcempr890COD_CIUDAD_PAG: TStringField
      FieldName = 'COD_CIUDAD_PAG'
      Origin = 'SOFTEPS.EMPRESAS.COD_CIUDAD_PAG'
      Size = 3
    end
    object qrymcempr890COD_PRESENTACION_COM: TStringField
      FieldName = 'COD_PRESENTACION_COM'
      Origin = 'SOFTEPS.EMPRESAS.COD_PRESENTACION_COM'
      Size = 1
    end
    object qrymcempr890COD_TIP_EMPRESA: TStringField
      FieldName = 'COD_TIP_EMPRESA'
      Origin = 'SOFTEPS.EMPRESAS.COD_TIP_EMPRESA'
      Size = 1
    end
    object qrymcempr890TIP_DOCUMENTO_PEN: TStringField
      FieldName = 'TIP_DOCUMENTO_PEN'
      Origin = 'SOFTEPS.EMPRESAS.TIP_DOCUMENTO_PEN'
      Size = 3
    end
    object qrymcempr890NUM_DOCUMENTO_PEN: TStringField
      FieldName = 'NUM_DOCUMENTO_PEN'
      Origin = 'SOFTEPS.EMPRESAS.NUM_DOCUMENTO_PEN'
      Size = 18
    end
  end
  object qrymcactpla: TQuery
    DatabaseName = 'softeps'
    RequestLive = True
    SQL.Strings = (
      'SELECT TIP_DECLARACION '
      'FROM AUTOLIQUIDACION'
      'WHERE NUM_PLANILLA = :NUM')
    Left = 230
    Top = 12
    ParamData = <
      item
        DataType = ftString
        Name = 'NUM'
        ParamType = ptUnknown
        Value = ''
      end>
    object qrymcactplaTIP_DECLARACION: TStringField
      FieldName = 'TIP_DECLARACION'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.TIP_DECLARACION'
      Size = 1
    end
  end
  object mcqrymccierres: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      'SELECT * FROM MCCIERRES WHERE TIP_CIERRE = :tip_cierre'
      '            AND PER_COMPENSACION = :per_compensacion')
    Left = 230
    Top = 12
    ParamData = <
      item
        DataType = ftString
        Name = 'tip_cierre'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'per_compensacion'
        ParamType = ptUnknown
        Value = ''
      end>
    object mcqrymccierresTIP_CIERRE: TStringField
      FieldName = 'TIP_CIERRE'
      Origin = 'SOFTEPS.MCCIERRES.TIP_CIERRE'
      Size = 1
    end
    object mcqrymccierresPER_COMPENSACION: TStringField
      FieldName = 'PER_COMPENSACION'
      Origin = 'SOFTEPS.MCCIERRES.PER_COMPENSACION'
      Size = 7
    end
    object mcqrymccierresFEC_DIGITACION: TDateTimeField
      FieldName = 'FEC_DIGITACION'
      Origin = 'SOFTEPS.MCCIERRES.FEC_DIGITACION'
    end
  end
  object mctblcierres: TTable
    DatabaseName = 'softeps'
    TableName = 'MCCIERRES'
    Left = 230
    Top = 12
    object mctblcierresTIP_CIERRE: TStringField
      FieldName = 'TIP_CIERRE'
      Required = True
      Size = 1
    end
    object mctblcierresPER_COMPENSACION: TStringField
      FieldName = 'PER_COMPENSACION'
      Required = True
      Size = 7
    end
    object mctblcierresFEC_DIGITACION: TDateTimeField
      FieldName = 'FEC_DIGITACION'
      Required = True
    end
  end
  object mcqrymcpladet: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      'SELECT DISTINCT'
      ' DET_PLANILLA_AUTOLIQUIDACION.PER_COTIZACION,'
      ' DET_PLANILLA_AUTOLIQUIDACION.COT_OBLIGATORIA, '
      ' DET_PLANILLA_AUTOLIQUIDACION.DIA_COTIZADOS,'
      ' DET_PLANILLA_AUTOLIQUIDACION.ING_BASE_COT,'
      ' DET_PLANILLA_AUTOLIQUIDACION.NOV_SLN,'
      ' DET_PLANILLA_AUTOLIQUIDACION.NUM_PLANILLA,'
      ' DET_PLANILLA_AUTOLIQUIDACION.NOV_LMA,'
      ' DET_PLANILLA_AUTOLIQUIDACION.VAL_LICENCIA_MAT,'
      ' DET_PLANILLA_AUTOLIQUIDACION.NOV_IGE,'
      ' DET_PLANILLA_AUTOLIQUIDACION.VAL_INCAPACIDAD_EGR,'
      ' DET_PLANILLA_AUTOLIQUIDACION.VAL_UPC_ADI,'
      ' DET_PLANILLA_AUTOLIQUIDACION.AFI_TIPO_DOC,'
      ' DET_PLANILLA_AUTOLIQUIDACION.AFI_NUMERO_DOC,'
      ' AUTOLIQUIDACION.TIP_DECLARACION,'
      ' AUTOLIQUIDACION.FEC_PAGO,'
      ' AUTOLIQUIDACION.EMP_TIPO_DOC,'
      ' AUTOLIQUIDACION.EMP_NUMERO_DOC,'
      ' RELACION_AFILIADOS.TIP_DOCUMENTO_BEN,'
      ' RELACION_AFILIADOS.NUM_DOCUMENTO_BEN,'
      ' RELACION_AFILIADOS.FEC_INCLUSION_NOV,'
      ' RELACION_AFILIADOS.COD_PARENTESCO,'
      ' AFILIADOS.FEC_NACIMIENTO,'
      ' AFILIADOS.COD_SEXO,'
      ' AFILIADOS.COD_TIPO_AFIL,'
      ' AFILIADOS.COD_MODALIDAD_TRA,'
      ' CIUDADES.POR_ALTO_RIE'
      
        'FROM DET_PLANILLA_AUTOLIQUIDACION ,AUTOLIQUIDACION, RELACION_AFI' +
        'LIADOS, AFILIADOS, CIUDADES '
      
        'WHERE (DET_PLANILLA_AUTOLIQUIDACION.PER_PRESENTACION =:per_prese' +
        'ntacion) '
      '           AND (DET_ESTADO = '#39'CIE'#39') '
      '           AND (FEC_DIGITACION >=:fecha_inicio) '
      '           AND (FEC_DIGITACION <= :fecha_fin) '
      
        '           AND (DET_PLANILLA_AUTOLIQUIDACION.NUM_PLANILLA = AUTO' +
        'LIQUIDACION.NUM_PLANILLA) '
      '          AND (AFI_NUMERO_DOC = NUM_DOCUMENTO_COT)'
      
        '          AND (FEC_EXCLUSION_NOV > TO_DATE('#39'01/'#39'||DET_PLANILLA_A' +
        'UTOLIQUIDACION.PER_COTIZACION,'#39'DD/MM/YYYY'#39') OR FEC_EXCLUSION_NOV' +
        ' IS NULL) '
      
        '           AND (FEC_INCLUSION_NOV < TO_DATE('#39'28/'#39'||DET_PLANILLA_' +
        'AUTOLIQUIDACION.PER_COTIZACION,'#39'DD/MM/YYYY'#39') )'
      '          AND (NUM_DOCUMENTO_BEN = AFILIADOS.NUM_DOCUMENTO)'
      '          AND (COD_DEPARTAMENTO_RES = COD_DEPARTAMENTO)'
      '         AND (COD_CIUDAD_RES = COD_CIUDAD)'
      '         AND (COD_MODALIDAD_TRA = '#39'N'#39')'
      
        'ORDER BY TO_DATE(DET_PLANILLA_AUTOLIQUIDACION.PER_COTIZACION,'#39'MM' +
        '/YYYY'#39') ASC'
      '')
    Left = 230
    Top = 12
    ParamData = <
      item
        DataType = ftString
        Name = 'per_presentacion'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftDateTime
        Name = 'fecha_inicio'
        ParamType = ptUnknown
        Value = 0d
      end
      item
        DataType = ftDateTime
        Name = 'fecha_fin'
        ParamType = ptUnknown
        Value = 0d
      end>
    object mcqrymcpladetPER_COTIZACION: TStringField
      FieldName = 'PER_COTIZACION'
      Size = 7
    end
    object mcqrymcpladetCOT_OBLIGATORIA: TFloatField
      FieldName = 'COT_OBLIGATORIA'
    end
    object mcqrymcpladetDIA_COTIZADOS: TStringField
      FieldName = 'DIA_COTIZADOS'
      Size = 2
    end
    object mcqrymcpladetING_BASE_COT: TFloatField
      FieldName = 'ING_BASE_COT'
    end
    object mcqrymcpladetNOV_SLN: TStringField
      FieldName = 'NOV_SLN'
      Size = 1
    end
    object mcqrymcpladetNUM_PLANILLA: TStringField
      FieldName = 'NUM_PLANILLA'
      Size = 15
    end
    object mcqrymcpladetNOV_LMA: TStringField
      FieldName = 'NOV_LMA'
      Size = 1
    end
    object mcqrymcpladetVAL_LICENCIA_MAT: TFloatField
      FieldName = 'VAL_LICENCIA_MAT'
    end
    object mcqrymcpladetNOV_IGE: TStringField
      FieldName = 'NOV_IGE'
      Size = 1
    end
    object mcqrymcpladetVAL_INCAPACIDAD_EGR: TFloatField
      FieldName = 'VAL_INCAPACIDAD_EGR'
    end
    object mcqrymcpladetVAL_UPC_ADI: TFloatField
      FieldName = 'VAL_UPC_ADI'
    end
    object mcqrymcpladetAFI_TIPO_DOC: TStringField
      FieldName = 'AFI_TIPO_DOC'
      Size = 3
    end
    object mcqrymcpladetAFI_NUMERO_DOC: TStringField
      FieldName = 'AFI_NUMERO_DOC'
      Size = 18
    end
    object mcqrymcpladetTIP_DECLARACION: TStringField
      FieldName = 'TIP_DECLARACION'
      Size = 1
    end
    object mcqrymcpladetFEC_PAGO: TDateTimeField
      FieldName = 'FEC_PAGO'
    end
    object mcqrymcpladetEMP_TIPO_DOC: TStringField
      FieldName = 'EMP_TIPO_DOC'
      Size = 3
    end
    object mcqrymcpladetEMP_NUMERO_DOC: TStringField
      FieldName = 'EMP_NUMERO_DOC'
      Size = 18
    end
    object mcqrymcpladetTIP_DOCUMENTO_BEN: TStringField
      FieldName = 'TIP_DOCUMENTO_BEN'
      Size = 3
    end
    object mcqrymcpladetNUM_DOCUMENTO_BEN: TStringField
      FieldName = 'NUM_DOCUMENTO_BEN'
      Size = 18
    end
    object mcqrymcpladetFEC_INCLUSION_NOV: TDateTimeField
      FieldName = 'FEC_INCLUSION_NOV'
    end
    object mcqrymcpladetCOD_PARENTESCO: TStringField
      FieldName = 'COD_PARENTESCO'
      Size = 3
    end
    object mcqrymcpladetFEC_NACIMIENTO: TDateTimeField
      FieldName = 'FEC_NACIMIENTO'
    end
    object mcqrymcpladetCOD_SEXO: TStringField
      FieldName = 'COD_SEXO'
      Size = 1
    end
    object mcqrymcpladetCOD_TIPO_AFIL: TStringField
      FieldName = 'COD_TIPO_AFIL'
      Size = 1
    end
    object mcqrymcpladetCOD_MODALIDAD_TRA: TStringField
      FieldName = 'COD_MODALIDAD_TRA'
      Size = 1
    end
    object mcqrymcpladetPOR_ALTO_RIE: TStringField
      FieldName = 'POR_ALTO_RIE'
      Size = 3
    end
  end
  object mcqrymcyacom: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      'SELECT NUM_DECLARACION FROM MCAFILIADOS_COMPENSADOS'
      'WHERE AFI_NUMERO_DOC = :DOC'
      'AND NUM_PLANILLA = :NUM')
    Left = 230
    Top = 12
    ParamData = <
      item
        DataType = ftString
        Name = 'DOC'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NUM'
        ParamType = ptUnknown
        Value = ''
      end>
    object mcqrymcyacomNUM_DECLARACION: TFloatField
      FieldName = 'NUM_DECLARACION'
      Origin = 'SOFTEPS.MCAFILIADOS_COMPENSADOS.NUM_DECLARACION'
    end
  end
  object mcqrymcdeclaracion: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      'SELECT * FROM MCDECLARACIONES '
      'WHERE PERIODO_COMPENSADO = :PER_COMPENSADO '
      '          AND FECHA_DECLARACION = :FECHA_DEC')
    Left = 230
    Top = 12
    ParamData = <
      item
        DataType = ftString
        Name = 'PER_COMPENSADO'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftDateTime
        Name = 'FECHA_DEC'
        ParamType = ptUnknown
        Value = 0d
      end>
    object mcqrymcdeclaracionNUM_DECLARACION: TFloatField
      FieldName = 'NUM_DECLARACION'
      Origin = 'SOFTEPS.MCDECLARACIONES.NUM_DECLARACION'
    end
    object mcqrymcdeclaracionCOT_TIPO_DECLA: TFloatField
      FieldName = 'COT_TIPO_DECLA'
      Origin = 'SOFTEPS.MCDECLARACIONES.COT_TIPO_DECLA'
    end
    object mcqrymcdeclaracionPERIODO_COMPENSADO: TStringField
      FieldName = 'PERIODO_COMPENSADO'
      Origin = 'SOFTEPS.MCDECLARACIONES.PERIODO_COMPENSADO'
      Size = 10
    end
    object mcqrymcdeclaracionFECHA_DECLARACION: TDateTimeField
      FieldName = 'FECHA_DECLARACION'
      Origin = 'SOFTEPS.MCDECLARACIONES.FECHA_DECLARACION'
    end
    object mcqrymcdeclaracionTIPO_CIERRE: TStringField
      FieldName = 'TIPO_CIERRE'
      Origin = 'SOFTEPS.MCDECLARACIONES.TIPO_CIERRE'
      Size = 1
    end
    object mcqrymcdeclaracionNUM_DECLARATIVA: TFloatField
      FieldName = 'NUM_DECLARATIVA'
      Origin = 'SOFTEPS.MCDECLARACIONES.NUM_DECLARATIVA'
    end
  end
  object mcqrymcdeclaracion1: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      'SELECT * FROM MCDECLARACIONES ORDER BY NUM_DECLARACION')
    Left = 230
    Top = 12
    object mcqrymcdeclaracion1NUM_DECLARACION: TFloatField
      FieldName = 'NUM_DECLARACION'
      Origin = 'SOFTEPS.MCDECLARACIONES.NUM_DECLARACION'
    end
    object mcqrymcdeclaracion1COT_TIPO_DECLA: TFloatField
      FieldName = 'COT_TIPO_DECLA'
      Origin = 'SOFTEPS.MCDECLARACIONES.COT_TIPO_DECLA'
    end
    object mcqrymcdeclaracion1PERIODO_COMPENSADO: TStringField
      FieldName = 'PERIODO_COMPENSADO'
      Origin = 'SOFTEPS.MCDECLARACIONES.PERIODO_COMPENSADO'
      Size = 10
    end
    object mcqrymcdeclaracion1FECHA_DECLARACION: TDateTimeField
      FieldName = 'FECHA_DECLARACION'
      Origin = 'SOFTEPS.MCDECLARACIONES.FECHA_DECLARACION'
    end
    object mcqrymcdeclaracion1TIPO_CIERRE: TStringField
      FieldName = 'TIPO_CIERRE'
      Origin = 'SOFTEPS.MCDECLARACIONES.TIPO_CIERRE'
      Size = 1
    end
    object mcqrymcdeclaracion1NUM_DECLARATIVA: TFloatField
      FieldName = 'NUM_DECLARATIVA'
      Origin = 'SOFTEPS.MCDECLARACIONES.NUM_DECLARATIVA'
    end
  end
  object mctbldeclaraciones: TTable
    DatabaseName = 'softeps'
    TableName = 'MCDECLARACIONES'
    Left = 230
    Top = 12
    object mctbldeclaracionesNUM_DECLARACION: TFloatField
      FieldName = 'NUM_DECLARACION'
      Required = True
    end
    object mctbldeclaracionesCOT_TIPO_DECLA: TFloatField
      FieldName = 'COT_TIPO_DECLA'
      Required = True
    end
    object mctbldeclaracionesPERIODO_COMPENSADO: TStringField
      FieldName = 'PERIODO_COMPENSADO'
      Required = True
      Size = 10
    end
    object mctbldeclaracionesFECHA_DECLARACION: TDateTimeField
      FieldName = 'FECHA_DECLARACION'
      Required = True
    end
    object mctbldeclaracionesTIPO_CIERRE: TStringField
      FieldName = 'TIPO_CIERRE'
      Size = 1
    end
    object mctbldeclaracionesNUM_DECLARATIVA: TFloatField
      FieldName = 'NUM_DECLARATIVA'
    end
  end
  object mcqrymcidduplica: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      'SELECT * FROM MCAFILIADOS_COMPENSADOS '
      'WHERE AFI_TIPO_DOC = :tp_doc'
      '      AND AFI_NUMERO_DOC = :nm_doc'
      '      AND NUM_DECLARACION = :nm_dec')
    Left = 230
    Top = 12
    ParamData = <
      item
        DataType = ftString
        Name = 'tp_doc'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'nm_doc'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'nm_dec'
        ParamType = ptUnknown
        Value = ''
      end>
    object mcqrymcidduplicaAFI_NUMERO_DOC: TStringField
      FieldName = 'AFI_NUMERO_DOC'
      Origin = 'SOFTEPS.MCAFILIADOS_COMPENSADOS.AFI_NUMERO_DOC'
      Size = 18
    end
    object mcqrymcidduplicaAFI_TIPO_DOC: TStringField
      FieldName = 'AFI_TIPO_DOC'
      Origin = 'SOFTEPS.MCAFILIADOS_COMPENSADOS.AFI_TIPO_DOC'
      Size = 3
    end
    object mcqrymcidduplicaNUM_DECLARACION: TFloatField
      FieldName = 'NUM_DECLARACION'
      Origin = 'SOFTEPS.MCAFILIADOS_COMPENSADOS.NUM_DECLARACION'
    end
    object mcqrymcidduplicaCOD_GRUPO_ETAREO: TFloatField
      FieldName = 'COD_GRUPO_ETAREO'
      Origin = 'SOFTEPS.MCAFILIADOS_COMPENSADOS.COD_GRUPO_ETAREO'
    end
    object mcqrymcidduplicaTIP_UPC: TStringField
      FieldName = 'TIP_UPC'
      Origin = 'SOFTEPS.MCAFILIADOS_COMPENSADOS.TIP_UPC'
      Size = 1
    end
    object mcqrymcidduplicaTIP_PAGO: TStringField
      FieldName = 'TIP_PAGO'
      Origin = 'SOFTEPS.MCAFILIADOS_COMPENSADOS.TIP_PAGO'
      Size = 1
    end
    object mcqrymcidduplicaTIP_BENEFICIARIO: TStringField
      FieldName = 'TIP_BENEFICIARIO'
      Origin = 'SOFTEPS.MCAFILIADOS_COMPENSADOS.TIP_BENEFICIARIO'
      Size = 1
    end
    object mcqrymcidduplicaDIAS: TStringField
      FieldName = 'DIAS'
      Origin = 'SOFTEPS.MCAFILIADOS_COMPENSADOS.DIAS'
      Size = 2
    end
    object mcqrymcidduplicaSALARIO: TFloatField
      FieldName = 'SALARIO'
      Origin = 'SOFTEPS.MCAFILIADOS_COMPENSADOS.SALARIO'
    end
    object mcqrymcidduplicaPORCENTAJE: TStringField
      FieldName = 'PORCENTAJE'
      Origin = 'SOFTEPS.MCAFILIADOS_COMPENSADOS.PORCENTAJE'
      Size = 2
    end
    object mcqrymcidduplicaCOTIZACION: TFloatField
      FieldName = 'COTIZACION'
      Origin = 'SOFTEPS.MCAFILIADOS_COMPENSADOS.COTIZACION'
    end
    object mcqrymcidduplicaVAL_DEDUCCION: TFloatField
      FieldName = 'VAL_DEDUCCION'
      Origin = 'SOFTEPS.MCAFILIADOS_COMPENSADOS.VAL_DEDUCCION'
    end
    object mcqrymcidduplicaTIP_DEDUCCION: TStringField
      FieldName = 'TIP_DEDUCCION'
      Origin = 'SOFTEPS.MCAFILIADOS_COMPENSADOS.TIP_DEDUCCION'
      Size = 3
    end
    object mcqrymcidduplicaVALOR_UPC: TFloatField
      FieldName = 'VALOR_UPC'
      Origin = 'SOFTEPS.MCAFILIADOS_COMPENSADOS.VALOR_UPC'
    end
    object mcqrymcidduplicaTIP_AFILIADO: TStringField
      FieldName = 'TIP_AFILIADO'
      Origin = 'SOFTEPS.MCAFILIADOS_COMPENSADOS.TIP_AFILIADO'
      Size = 1
    end
    object mcqrymcidduplicaFEC_CONSIGNACION: TDateTimeField
      FieldName = 'FEC_CONSIGNACION'
      Origin = 'SOFTEPS.MCAFILIADOS_COMPENSADOS.FEC_CONSIGNACION'
    end
    object mcqrymcidduplicaCOD_PARENTESCO: TStringField
      FieldName = 'COD_PARENTESCO'
      Origin = 'SOFTEPS.MCAFILIADOS_COMPENSADOS.COD_PARENTESCO'
      Size = 3
    end
    object mcqrymcidduplicaNUM_PLANILLA: TStringField
      FieldName = 'NUM_PLANILLA'
      Origin = 'SOFTEPS.MCAFILIADOS_COMPENSADOS.NUM_PLANILLA'
      Size = 15
    end
    object mcqrymcidduplicaTIP_DOCUMENTO_COT: TStringField
      FieldName = 'TIP_DOCUMENTO_COT'
      Origin = 'SOFTEPS.MCAFILIADOS_COMPENSADOS.TIP_DOCUMENTO_COT'
      Size = 3
    end
    object mcqrymcidduplicaNUM_DOCUMENTO_COT: TStringField
      FieldName = 'NUM_DOCUMENTO_COT'
      Origin = 'SOFTEPS.MCAFILIADOS_COMPENSADOS.NUM_DOCUMENTO_COT'
      Size = 18
    end
    object mcqrymcidduplicaEMP_TIPO_DOC: TStringField
      FieldName = 'EMP_TIPO_DOC'
      Origin = 'SOFTEPS.MCAFILIADOS_COMPENSADOS.EMP_TIPO_DOC'
      Size = 3
    end
    object mcqrymcidduplicaEMP_NUMERO_DOC: TStringField
      FieldName = 'EMP_NUMERO_DOC'
      Origin = 'SOFTEPS.MCAFILIADOS_COMPENSADOS.EMP_NUMERO_DOC'
      Size = 15
    end
    object mcqrymcidduplicaID_MULTIAFILIADO: TStringField
      FieldName = 'ID_MULTIAFILIADO'
      Origin = 'SOFTEPS.MCAFILIADOS_COMPENSADOS.ID_MULTIAFILIADO'
      Size = 9
    end
    object mcqrymcidduplicaCAUSA: TStringField
      FieldName = 'CAUSA'
      Origin = 'SOFTEPS.MCAFILIADOS_COMPENSADOS.CAUSA'
      Size = 30
    end
    object mcqrymcidduplicaVAL_UPC: TFloatField
      FieldName = 'VAL_UPC'
      Origin = 'SOFTEPS.MCAFILIADOS_COMPENSADOS.VAL_UPC'
    end
    object mcqrymcidduplicaEST_MULTIAFILIADO: TStringField
      FieldName = 'EST_MULTIAFILIADO'
      Origin = 'SOFTEPS.MCAFILIADOS_COMPENSADOS.EST_MULTIAFILIADO'
      Size = 3
    end
    object mcqrymcidduplicaNUM_DECLARACION_ANT: TFloatField
      FieldName = 'NUM_DECLARACION_ANT'
      Origin = 'SOFTEPS.MCAFILIADOS_COMPENSADOS.NUM_DECLARACION_ANT'
    end
  end
  object mcqrycompensa: TQuery
    DatabaseName = 'softeps'
    RequestLive = True
    SQL.Strings = (
      'SELECT * FROM MCAFILIADOS_COMPENSADOS'
      'WHERE AFI_TIPO_DOC = '#39'XX'#39)
    Left = 230
    Top = 12
    object mcqrycompensaAFI_NUMERO_DOC: TStringField
      FieldName = 'AFI_NUMERO_DOC'
      Origin = 'SOFTEPS.MCAFILIADOS_COMPENSADOS.AFI_NUMERO_DOC'
      Size = 18
    end
    object mcqrycompensaAFI_TIPO_DOC: TStringField
      FieldName = 'AFI_TIPO_DOC'
      Origin = 'SOFTEPS.MCAFILIADOS_COMPENSADOS.AFI_TIPO_DOC'
      Size = 3
    end
    object mcqrycompensaNUM_DECLARACION: TFloatField
      FieldName = 'NUM_DECLARACION'
      Origin = 'SOFTEPS.MCAFILIADOS_COMPENSADOS.NUM_DECLARACION'
    end
    object mcqrycompensaCOD_GRUPO_ETAREO: TFloatField
      FieldName = 'COD_GRUPO_ETAREO'
      Origin = 'SOFTEPS.MCAFILIADOS_COMPENSADOS.COD_GRUPO_ETAREO'
    end
    object mcqrycompensaTIP_UPC: TStringField
      FieldName = 'TIP_UPC'
      Origin = 'SOFTEPS.MCAFILIADOS_COMPENSADOS.TIP_UPC'
      Size = 1
    end
    object mcqrycompensaTIP_PAGO: TStringField
      FieldName = 'TIP_PAGO'
      Origin = 'SOFTEPS.MCAFILIADOS_COMPENSADOS.TIP_PAGO'
      Size = 1
    end
    object mcqrycompensaTIP_BENEFICIARIO: TStringField
      FieldName = 'TIP_BENEFICIARIO'
      Origin = 'SOFTEPS.MCAFILIADOS_COMPENSADOS.TIP_BENEFICIARIO'
      Size = 1
    end
    object mcqrycompensaDIAS: TStringField
      FieldName = 'DIAS'
      Origin = 'SOFTEPS.MCAFILIADOS_COMPENSADOS.DIAS'
      Size = 2
    end
    object mcqrycompensaSALARIO: TFloatField
      FieldName = 'SALARIO'
      Origin = 'SOFTEPS.MCAFILIADOS_COMPENSADOS.SALARIO'
    end
    object mcqrycompensaPORCENTAJE: TStringField
      FieldName = 'PORCENTAJE'
      Origin = 'SOFTEPS.MCAFILIADOS_COMPENSADOS.PORCENTAJE'
      Size = 2
    end
    object mcqrycompensaCOTIZACION: TFloatField
      FieldName = 'COTIZACION'
      Origin = 'SOFTEPS.MCAFILIADOS_COMPENSADOS.COTIZACION'
    end
    object mcqrycompensaVAL_DEDUCCION: TFloatField
      FieldName = 'VAL_DEDUCCION'
      Origin = 'SOFTEPS.MCAFILIADOS_COMPENSADOS.VAL_DEDUCCION'
    end
    object mcqrycompensaTIP_DEDUCCION: TStringField
      FieldName = 'TIP_DEDUCCION'
      Origin = 'SOFTEPS.MCAFILIADOS_COMPENSADOS.TIP_DEDUCCION'
      Size = 3
    end
    object mcqrycompensaVALOR_UPC: TFloatField
      FieldName = 'VALOR_UPC'
      Origin = 'SOFTEPS.MCAFILIADOS_COMPENSADOS.VALOR_UPC'
    end
    object mcqrycompensaTIP_AFILIADO: TStringField
      FieldName = 'TIP_AFILIADO'
      Origin = 'SOFTEPS.MCAFILIADOS_COMPENSADOS.TIP_AFILIADO'
      Size = 1
    end
    object mcqrycompensaFEC_CONSIGNACION: TDateTimeField
      FieldName = 'FEC_CONSIGNACION'
      Origin = 'SOFTEPS.MCAFILIADOS_COMPENSADOS.FEC_CONSIGNACION'
    end
    object mcqrycompensaCOD_PARENTESCO: TStringField
      FieldName = 'COD_PARENTESCO'
      Origin = 'SOFTEPS.MCAFILIADOS_COMPENSADOS.COD_PARENTESCO'
      Size = 3
    end
    object mcqrycompensaNUM_PLANILLA: TStringField
      FieldName = 'NUM_PLANILLA'
      Origin = 'SOFTEPS.MCAFILIADOS_COMPENSADOS.NUM_PLANILLA'
      Size = 15
    end
    object mcqrycompensaTIP_DOCUMENTO_COT: TStringField
      FieldName = 'TIP_DOCUMENTO_COT'
      Origin = 'SOFTEPS.MCAFILIADOS_COMPENSADOS.TIP_DOCUMENTO_COT'
      Size = 3
    end
    object mcqrycompensaNUM_DOCUMENTO_COT: TStringField
      FieldName = 'NUM_DOCUMENTO_COT'
      Origin = 'SOFTEPS.MCAFILIADOS_COMPENSADOS.NUM_DOCUMENTO_COT'
      Size = 18
    end
    object mcqrycompensaEMP_TIPO_DOC: TStringField
      FieldName = 'EMP_TIPO_DOC'
      Origin = 'SOFTEPS.MCAFILIADOS_COMPENSADOS.EMP_TIPO_DOC'
      Size = 3
    end
    object mcqrycompensaEMP_NUMERO_DOC: TStringField
      FieldName = 'EMP_NUMERO_DOC'
      Origin = 'SOFTEPS.MCAFILIADOS_COMPENSADOS.EMP_NUMERO_DOC'
      Size = 15
    end
    object mcqrycompensaID_MULTIAFILIADO: TStringField
      FieldName = 'ID_MULTIAFILIADO'
      Origin = 'SOFTEPS.MCAFILIADOS_COMPENSADOS.ID_MULTIAFILIADO'
      Size = 9
    end
    object mcqrycompensaCAUSA: TStringField
      FieldName = 'CAUSA'
      Origin = 'SOFTEPS.MCAFILIADOS_COMPENSADOS.CAUSA'
      Size = 30
    end
    object mcqrycompensaVAL_UPC: TFloatField
      FieldName = 'VAL_UPC'
      Origin = 'SOFTEPS.MCAFILIADOS_COMPENSADOS.VAL_UPC'
    end
    object mcqrycompensaEST_MULTIAFILIADO: TStringField
      FieldName = 'EST_MULTIAFILIADO'
      Origin = 'SOFTEPS.MCAFILIADOS_COMPENSADOS.EST_MULTIAFILIADO'
      Size = 3
    end
    object mcqrycompensaNUM_DECLARACION_ANT: TFloatField
      FieldName = 'NUM_DECLARACION_ANT'
      Origin = 'SOFTEPS.MCAFILIADOS_COMPENSADOS.NUM_DECLARACION_ANT'
    end
  end
  object mcqrymcdeclaracion2: TQuery
    DatabaseName = 'softeps'
    RequestLive = True
    SQL.Strings = (
      'SELECT * FROM MCDECLARACIONES '
      'WHERE FECHA_DECLARACION = :fecha'
      'ORDER BY NUM_DECLARACION')
    Left = 230
    Top = 12
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'fecha'
        ParamType = ptUnknown
        Value = 0d
      end>
    object mcqrymcdeclaracion2NUM_DECLARACION: TFloatField
      FieldName = 'NUM_DECLARACION'
      Origin = 'SOFTEPS.MCDECLARACIONES.NUM_DECLARACION'
    end
    object mcqrymcdeclaracion2COT_TIPO_DECLA: TFloatField
      FieldName = 'COT_TIPO_DECLA'
      Origin = 'SOFTEPS.MCDECLARACIONES.COT_TIPO_DECLA'
    end
    object mcqrymcdeclaracion2PERIODO_COMPENSADO: TStringField
      FieldName = 'PERIODO_COMPENSADO'
      Origin = 'SOFTEPS.MCDECLARACIONES.PERIODO_COMPENSADO'
      Size = 10
    end
    object mcqrymcdeclaracion2FECHA_DECLARACION: TDateTimeField
      FieldName = 'FECHA_DECLARACION'
      Origin = 'SOFTEPS.MCDECLARACIONES.FECHA_DECLARACION'
    end
    object mcqrymcdeclaracion2TIPO_CIERRE: TStringField
      FieldName = 'TIPO_CIERRE'
      Origin = 'SOFTEPS.MCDECLARACIONES.TIPO_CIERRE'
      Size = 1
    end
    object mcqrymcdeclaracion2NUM_DECLARATIVA: TFloatField
      FieldName = 'NUM_DECLARATIVA'
      Origin = 'SOFTEPS.MCDECLARACIONES.NUM_DECLARATIVA'
    end
  end
  object mcqrymcbases: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      
        'SELECT MCAFILIADOS_COMPENSADOS.NUM_DECLARACION,COD_GRUPO_ETAREO,' +
        ' TIP_BENEFICIARIO, TIP_UPC, decode(DIAS,'#39'30'#39','#39'C'#39','#39'P'#39') AS UPC, CO' +
        'UNT(*) AS NUMERO, SUM(DIAS) AS DIAS, PERIODO_COMPENSADO, SUM(VAL' +
        '_UPC) AS VAL_UPC'
      'FROM MCAFILIADOS_COMPENSADOS, MCDECLARACIONES'
      
        'WHERE MCAFILIADOS_COMPENSADOS.NUM_DECLARACION = :dec AND ID_MULT' +
        'IAFILIADO IS NULL'
      
        'AND MCAFILIADOS_COMPENSADOS.NUM_DECLARACION = MCDECLARACIONES.NU' +
        'M_DECLARACION'
      
        'GROUP BY MCAFILIADOS_COMPENSADOS.NUM_DECLARACION,COD_GRUPO_ETARE' +
        'O, TIP_BENEFICIARIO, TIP_UPC, decode(DIAS,'#39'30'#39','#39'C'#39','#39'P'#39'), PERIODO' +
        '_COMPENSADO')
    Left = 230
    Top = 12
    ParamData = <
      item
        DataType = ftString
        Name = 'dec'
        ParamType = ptUnknown
        Value = ''
      end>
    object mcqrymcbasesNUM_DECLARACION: TFloatField
      FieldName = 'NUM_DECLARACION'
    end
    object mcqrymcbasesCOD_GRUPO_ETAREO: TFloatField
      FieldName = 'COD_GRUPO_ETAREO'
    end
    object mcqrymcbasesTIP_BENEFICIARIO: TStringField
      FieldName = 'TIP_BENEFICIARIO'
      Size = 1
    end
    object mcqrymcbasesTIP_UPC: TStringField
      FieldName = 'TIP_UPC'
      Size = 1
    end
    object mcqrymcbasesUPC: TStringField
      FieldName = 'UPC'
      Size = 1
    end
    object mcqrymcbasesNUMERO: TFloatField
      FieldName = 'NUMERO'
    end
    object mcqrymcbasesDIAS: TFloatField
      FieldName = 'DIAS'
    end
    object mcqrymcbasesPERIODO_COMPENSADO: TStringField
      FieldName = 'PERIODO_COMPENSADO'
      Size = 10
    end
    object mcqrymcbasesVAL_UPC: TFloatField
      FieldName = 'VAL_UPC'
    end
  end
  object mcqrymcbasesdecalculo: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      'SELECT * FROM MCBASES_DE_CALCULO '
      'WHERE NUM_DECLARACION =:num_declaracion'
      '      AND COD_GRUPO_ETA =:cod_grupo_etareo')
    Left = 230
    Top = 12
    ParamData = <
      item
        DataType = ftFloat
        Name = 'num_declaracion'
        ParamType = ptUnknown
        Value = 0
      end
      item
        DataType = ftFloat
        Name = 'cod_grupo_etareo'
        ParamType = ptUnknown
        Value = 0
      end>
    object mcqrymcbasesdecalculoNUM_DECLARACION: TFloatField
      FieldName = 'NUM_DECLARACION'
      Origin = 'SOFTEPS.MCBASES_DE_CALCULO.NUM_DECLARACION'
    end
    object mcqrymcbasesdecalculoCOD_GRUPO_ETA: TFloatField
      FieldName = 'COD_GRUPO_ETA'
      Origin = 'SOFTEPS.MCBASES_DE_CALCULO.COD_GRUPO_ETA'
    end
    object mcqrymcbasesdecalculoTOT_COTIZANTES_MCN: TFloatField
      FieldName = 'TOT_COTIZANTES_MCN'
      Origin = 'SOFTEPS.MCBASES_DE_CALCULO.TOT_COTIZANTES_MCN'
    end
    object mcqrymcbasesdecalculoTOT_COTIZANTES_MCE: TFloatField
      FieldName = 'TOT_COTIZANTES_MCE'
      Origin = 'SOFTEPS.MCBASES_DE_CALCULO.TOT_COTIZANTES_MCE'
    end
    object mcqrymcbasesdecalculoTOT_COTIZANTES_MPN: TFloatField
      FieldName = 'TOT_COTIZANTES_MPN'
      Origin = 'SOFTEPS.MCBASES_DE_CALCULO.TOT_COTIZANTES_MPN'
    end
    object mcqrymcbasesdecalculoTOT_COTIZANTES_MPE: TFloatField
      FieldName = 'TOT_COTIZANTES_MPE'
      Origin = 'SOFTEPS.MCBASES_DE_CALCULO.TOT_COTIZANTES_MPE'
    end
    object mcqrymcbasesdecalculoTOT_BENEFICIARIOS_MCN: TFloatField
      FieldName = 'TOT_BENEFICIARIOS_MCN'
      Origin = 'SOFTEPS.MCBASES_DE_CALCULO.TOT_BENEFICIARIOS_MCN'
    end
    object mcqrymcbasesdecalculoTOT_BENEFICIARIOS_MCE: TFloatField
      FieldName = 'TOT_BENEFICIARIOS_MCE'
      Origin = 'SOFTEPS.MCBASES_DE_CALCULO.TOT_BENEFICIARIOS_MCE'
    end
    object mcqrymcbasesdecalculoTOT_BENEFICIARIOS_MPNL: TFloatField
      FieldName = 'TOT_BENEFICIARIOS_MPNL'
      Origin = 'SOFTEPS.MCBASES_DE_CALCULO.TOT_BENEFICIARIOS_MPNL'
    end
    object mcqrymcbasesdecalculoTOT_BENEFICIARIOS_MPE: TFloatField
      FieldName = 'TOT_BENEFICIARIOS_MPE'
      Origin = 'SOFTEPS.MCBASES_DE_CALCULO.TOT_BENEFICIARIOS_MPE'
    end
    object mcqrymcbasesdecalculoTOT_AFILIADOS_MCN: TFloatField
      FieldName = 'TOT_AFILIADOS_MCN'
      Origin = 'SOFTEPS.MCBASES_DE_CALCULO.TOT_AFILIADOS_MCN'
    end
    object mcqrymcbasesdecalculoTOT_AFILIADOS_MCE: TFloatField
      FieldName = 'TOT_AFILIADOS_MCE'
      Origin = 'SOFTEPS.MCBASES_DE_CALCULO.TOT_AFILIADOS_MCE'
    end
    object mcqrymcbasesdecalculoTOT_AFILIADOS_MPN: TFloatField
      FieldName = 'TOT_AFILIADOS_MPN'
      Origin = 'SOFTEPS.MCBASES_DE_CALCULO.TOT_AFILIADOS_MPN'
    end
    object mcqrymcbasesdecalculoTOT_AFILIADOS_MPE: TFloatField
      FieldName = 'TOT_AFILIADOS_MPE'
      Origin = 'SOFTEPS.MCBASES_DE_CALCULO.TOT_AFILIADOS_MPE'
    end
    object mcqrymcbasesdecalculoTOT_AFILIADOS_UPCNORMAL: TFloatField
      FieldName = 'TOT_AFILIADOS_UPCNORMAL'
      Origin = 'SOFTEPS.MCBASES_DE_CALCULO.TOT_AFILIADOS_UPCNORMAL'
    end
    object mcqrymcbasesdecalculoTOT_AFILIADOS_UPCESPECIAL: TFloatField
      FieldName = 'TOT_AFILIADOS_UPCESPECIAL'
      Origin = 'SOFTEPS.MCBASES_DE_CALCULO.TOT_AFILIADOS_UPCESPECIAL'
    end
    object mcqrymcbasesdecalculoTOT_DIAS_COTZNN: TFloatField
      FieldName = 'TOT_DIAS_COTZNN'
      Origin = 'SOFTEPS.MCBASES_DE_CALCULO.TOT_DIAS_COTZNN'
    end
    object mcqrymcbasesdecalculoTOT_DIAS_COTIZE: TFloatField
      FieldName = 'TOT_DIAS_COTIZE'
      Origin = 'SOFTEPS.MCBASES_DE_CALCULO.TOT_DIAS_COTIZE'
    end
    object mcqrymcbasesdecalculoTOT_UPC_DZN: TFloatField
      FieldName = 'TOT_UPC_DZN'
      Origin = 'SOFTEPS.MCBASES_DE_CALCULO.TOT_UPC_DZN'
    end
    object mcqrymcbasesdecalculoTOT_UPC_DZE: TFloatField
      FieldName = 'TOT_UPC_DZE'
      Origin = 'SOFTEPS.MCBASES_DE_CALCULO.TOT_UPC_DZE'
    end
    object mcqrymcbasesdecalculoTOT_VALOR_UPC: TFloatField
      FieldName = 'TOT_VALOR_UPC'
      Origin = 'SOFTEPS.MCBASES_DE_CALCULO.TOT_VALOR_UPC'
    end
  end
  object mctblbasesdecalculo: TTable
    DatabaseName = 'softeps'
    TableName = 'MCBASES_DE_CALCULO'
    Left = 230
    Top = 12
    object mctblbasesdecalculoNUM_DECLARACION: TFloatField
      FieldName = 'NUM_DECLARACION'
      Required = True
    end
    object mctblbasesdecalculoCOD_GRUPO_ETA: TFloatField
      FieldName = 'COD_GRUPO_ETA'
      Required = True
    end
    object mctblbasesdecalculoTOT_COTIZANTES_MCN: TFloatField
      FieldName = 'TOT_COTIZANTES_MCN'
    end
    object mctblbasesdecalculoTOT_COTIZANTES_MCE: TFloatField
      FieldName = 'TOT_COTIZANTES_MCE'
    end
    object mctblbasesdecalculoTOT_COTIZANTES_MPN: TFloatField
      FieldName = 'TOT_COTIZANTES_MPN'
    end
    object mctblbasesdecalculoTOT_COTIZANTES_MPE: TFloatField
      FieldName = 'TOT_COTIZANTES_MPE'
    end
    object mctblbasesdecalculoTOT_BENEFICIARIOS_MCN: TFloatField
      FieldName = 'TOT_BENEFICIARIOS_MCN'
    end
    object mctblbasesdecalculoTOT_BENEFICIARIOS_MCE: TFloatField
      FieldName = 'TOT_BENEFICIARIOS_MCE'
    end
    object mctblbasesdecalculoTOT_BENEFICIARIOS_MPNL: TFloatField
      FieldName = 'TOT_BENEFICIARIOS_MPNL'
    end
    object mctblbasesdecalculoTOT_BENEFICIARIOS_MPE: TFloatField
      FieldName = 'TOT_BENEFICIARIOS_MPE'
    end
    object mctblbasesdecalculoTOT_AFILIADOS_MCN: TFloatField
      FieldName = 'TOT_AFILIADOS_MCN'
    end
    object mctblbasesdecalculoTOT_AFILIADOS_MCE: TFloatField
      FieldName = 'TOT_AFILIADOS_MCE'
    end
    object mctblbasesdecalculoTOT_AFILIADOS_MPN: TFloatField
      FieldName = 'TOT_AFILIADOS_MPN'
    end
    object mctblbasesdecalculoTOT_AFILIADOS_MPE: TFloatField
      FieldName = 'TOT_AFILIADOS_MPE'
    end
    object mctblbasesdecalculoTOT_AFILIADOS_UPCNORMAL: TFloatField
      FieldName = 'TOT_AFILIADOS_UPCNORMAL'
    end
    object mctblbasesdecalculoTOT_AFILIADOS_UPCESPECIAL: TFloatField
      FieldName = 'TOT_AFILIADOS_UPCESPECIAL'
    end
    object mctblbasesdecalculoTOT_DIAS_COTZNN: TFloatField
      FieldName = 'TOT_DIAS_COTZNN'
    end
    object mctblbasesdecalculoTOT_DIAS_COTIZE: TFloatField
      FieldName = 'TOT_DIAS_COTIZE'
    end
    object mctblbasesdecalculoTOT_UPC_DZN: TFloatField
      FieldName = 'TOT_UPC_DZN'
    end
    object mctblbasesdecalculoTOT_UPC_DZE: TFloatField
      FieldName = 'TOT_UPC_DZE'
    end
    object mctblbasesdecalculoTOT_VALOR_UPC: TFloatField
      FieldName = 'TOT_VALOR_UPC'
    end
  end
  object mcqrymcconplanillas2: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      'SELECT DISTINCT NUM_PLANILLA '
      'FROM MCAFILIADOS_COMPENSADOS '
      'WHERE NUM_DECLARACION = :num_declara')
    Left = 230
    Top = 12
    ParamData = <
      item
        DataType = ftString
        Name = 'num_declara'
        ParamType = ptUnknown
        Value = ''
      end>
    object mcqrymcconplanillas2NUM_PLANILLA: TStringField
      FieldName = 'NUM_PLANILLA'
      Origin = 'SOFTEPS.MCAFILIADOS_COMPENSADOS.NUM_PLANILLA'
      Size = 15
    end
  end
  object mcqrymcafilcomp1: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      'SELECT * FROM MCAFILIADOS_COMPENSADOS, ESTRUCTURA_COSTOS '
      'WHERE NUM_DECLARACION =:num_declaracion'
      
        '          AND MCAFILIADOS_COMPENSADOS.COD_GRUPO_ETAREO = ESTRUCT' +
        'URA_COSTOS.COD_GRUPO_ETA '
      '          AND ANO_VAL_ESTRUCTURA_COST = :ano'
      
        '          AND (ID_MULTIAFILIADO  IS NULL OR ID_MULTIAFILIADO = '#39 +
        'SOL'#39')')
    Left = 230
    Top = 12
    ParamData = <
      item
        DataType = ftString
        Name = 'num_declaracion'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftDateTime
        Name = 'ano'
        ParamType = ptUnknown
        Value = 0d
      end>
    object mcqrymcafilcomp1AFI_NUMERO_DOC: TStringField
      FieldName = 'AFI_NUMERO_DOC'
      Origin = 'SOFTEPS.MCAFILIADOS_COMPENSADOS.AFI_NUMERO_DOC'
      Size = 18
    end
    object mcqrymcafilcomp1AFI_TIPO_DOC: TStringField
      FieldName = 'AFI_TIPO_DOC'
      Origin = 'SOFTEPS.MCAFILIADOS_COMPENSADOS.AFI_TIPO_DOC'
      Size = 3
    end
    object mcqrymcafilcomp1NUM_DECLARACION: TFloatField
      FieldName = 'NUM_DECLARACION'
      Origin = 'SOFTEPS.MCAFILIADOS_COMPENSADOS.NUM_DECLARACION'
    end
    object mcqrymcafilcomp1COD_GRUPO_ETAREO: TFloatField
      FieldName = 'COD_GRUPO_ETAREO'
      Origin = 'SOFTEPS.MCAFILIADOS_COMPENSADOS.COD_GRUPO_ETAREO'
    end
    object mcqrymcafilcomp1TIP_UPC: TStringField
      FieldName = 'TIP_UPC'
      Origin = 'SOFTEPS.MCAFILIADOS_COMPENSADOS.TIP_UPC'
      Size = 1
    end
    object mcqrymcafilcomp1TIP_PAGO: TStringField
      FieldName = 'TIP_PAGO'
      Origin = 'SOFTEPS.MCAFILIADOS_COMPENSADOS.TIP_PAGO'
      Size = 1
    end
    object mcqrymcafilcomp1TIP_BENEFICIARIO: TStringField
      FieldName = 'TIP_BENEFICIARIO'
      Origin = 'SOFTEPS.MCAFILIADOS_COMPENSADOS.TIP_BENEFICIARIO'
      Size = 1
    end
    object mcqrymcafilcomp1DIAS: TStringField
      FieldName = 'DIAS'
      Origin = 'SOFTEPS.MCAFILIADOS_COMPENSADOS.DIAS'
      Size = 2
    end
    object mcqrymcafilcomp1SALARIO: TFloatField
      FieldName = 'SALARIO'
      Origin = 'SOFTEPS.MCAFILIADOS_COMPENSADOS.SALARIO'
    end
    object mcqrymcafilcomp1PORCENTAJE: TStringField
      FieldName = 'PORCENTAJE'
      Origin = 'SOFTEPS.MCAFILIADOS_COMPENSADOS.PORCENTAJE'
      Size = 2
    end
    object mcqrymcafilcomp1COTIZACION: TFloatField
      FieldName = 'COTIZACION'
      Origin = 'SOFTEPS.MCAFILIADOS_COMPENSADOS.COTIZACION'
    end
    object mcqrymcafilcomp1VAL_DEDUCCION: TFloatField
      FieldName = 'VAL_DEDUCCION'
      Origin = 'SOFTEPS.MCAFILIADOS_COMPENSADOS.VAL_DEDUCCION'
    end
    object mcqrymcafilcomp1TIP_DEDUCCION: TStringField
      FieldName = 'TIP_DEDUCCION'
      Origin = 'SOFTEPS.MCAFILIADOS_COMPENSADOS.TIP_DEDUCCION'
      Size = 3
    end
    object mcqrymcafilcomp1VALOR_UPC: TFloatField
      FieldName = 'VALOR_UPC'
      Origin = 'SOFTEPS.MCAFILIADOS_COMPENSADOS.VALOR_UPC'
    end
    object mcqrymcafilcomp1TIP_AFILIADO: TStringField
      FieldName = 'TIP_AFILIADO'
      Origin = 'SOFTEPS.MCAFILIADOS_COMPENSADOS.TIP_AFILIADO'
      Size = 1
    end
    object mcqrymcafilcomp1FEC_CONSIGNACION: TDateTimeField
      FieldName = 'FEC_CONSIGNACION'
      Origin = 'SOFTEPS.MCAFILIADOS_COMPENSADOS.FEC_CONSIGNACION'
    end
    object mcqrymcafilcomp1COD_PARENTESCO: TStringField
      FieldName = 'COD_PARENTESCO'
      Origin = 'SOFTEPS.MCAFILIADOS_COMPENSADOS.COD_PARENTESCO'
      Size = 3
    end
    object mcqrymcafilcomp1NUM_PLANILLA: TStringField
      FieldName = 'NUM_PLANILLA'
      Origin = 'SOFTEPS.MCAFILIADOS_COMPENSADOS.NUM_PLANILLA'
      Size = 15
    end
    object mcqrymcafilcomp1TIP_DOCUMENTO_COT: TStringField
      FieldName = 'TIP_DOCUMENTO_COT'
      Origin = 'SOFTEPS.MCAFILIADOS_COMPENSADOS.TIP_DOCUMENTO_COT'
      Size = 3
    end
    object mcqrymcafilcomp1NUM_DOCUMENTO_COT: TStringField
      FieldName = 'NUM_DOCUMENTO_COT'
      Origin = 'SOFTEPS.MCAFILIADOS_COMPENSADOS.NUM_DOCUMENTO_COT'
      Size = 18
    end
    object mcqrymcafilcomp1EMP_TIPO_DOC: TStringField
      FieldName = 'EMP_TIPO_DOC'
      Origin = 'SOFTEPS.MCAFILIADOS_COMPENSADOS.EMP_TIPO_DOC'
      Size = 3
    end
    object mcqrymcafilcomp1EMP_NUMERO_DOC: TStringField
      FieldName = 'EMP_NUMERO_DOC'
      Origin = 'SOFTEPS.MCAFILIADOS_COMPENSADOS.EMP_NUMERO_DOC'
      Size = 15
    end
    object mcqrymcafilcomp1ID_MULTIAFILIADO: TStringField
      FieldName = 'ID_MULTIAFILIADO'
      Origin = 'SOFTEPS.MCAFILIADOS_COMPENSADOS.ID_MULTIAFILIADO'
      Size = 9
    end
    object mcqrymcafilcomp1CAUSA: TStringField
      FieldName = 'CAUSA'
      Origin = 'SOFTEPS.MCAFILIADOS_COMPENSADOS.CAUSA'
      Size = 30
    end
    object mcqrymcafilcomp1VAL_UPC: TFloatField
      FieldName = 'VAL_UPC'
      Origin = 'SOFTEPS.MCAFILIADOS_COMPENSADOS.VAL_UPC'
    end
    object mcqrymcafilcomp1EST_MULTIAFILIADO: TStringField
      FieldName = 'EST_MULTIAFILIADO'
      Origin = 'SOFTEPS.MCAFILIADOS_COMPENSADOS.EST_MULTIAFILIADO'
      Size = 3
    end
    object mcqrymcafilcomp1NUM_DECLARACION_ANT: TFloatField
      FieldName = 'NUM_DECLARACION_ANT'
      Origin = 'SOFTEPS.MCAFILIADOS_COMPENSADOS.NUM_DECLARACION_ANT'
    end
    object mcqrymcafilcomp1COD_GRUPO_ETA: TFloatField
      FieldName = 'COD_GRUPO_ETA'
      Origin = 'SOFTEPS.MCAFILIADOS_COMPENSADOS.NUM_DECLARACION_ANT'
    end
    object mcqrymcafilcomp1VAL_ESTRUCTURA_COST: TFloatField
      FieldName = 'VAL_ESTRUCTURA_COST'
      Origin = 'SOFTEPS.MCAFILIADOS_COMPENSADOS.NUM_DECLARACION_ANT'
    end
    object mcqrymcafilcomp1ANO_VAL_ESTRUCTURA_COST: TDateTimeField
      FieldName = 'ANO_VAL_ESTRUCTURA_COST'
      Origin = 'SOFTEPS.MCAFILIADOS_COMPENSADOS.NUM_DECLARACION_ANT'
    end
  end
  object mcqrymcbasesdecalculo1: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      'SELECT * FROM MCBASES_DE_CALCULO '
      '            WHERE NUM_DECLARACION =:num_declaracion')
    Left = 230
    Top = 12
    ParamData = <
      item
        DataType = ftFloat
        Name = 'num_declaracion'
        ParamType = ptUnknown
        Value = 0
      end>
    object mcqrymcbasesdecalculo1NUM_DECLARACION: TFloatField
      FieldName = 'NUM_DECLARACION'
      Origin = 'SOFTEPS.MCBASES_DE_CALCULO.NUM_DECLARACION'
    end
    object mcqrymcbasesdecalculo1COD_GRUPO_ETA: TFloatField
      FieldName = 'COD_GRUPO_ETA'
      Origin = 'SOFTEPS.MCBASES_DE_CALCULO.COD_GRUPO_ETA'
    end
    object mcqrymcbasesdecalculo1TOT_COTIZANTES_MCN: TFloatField
      FieldName = 'TOT_COTIZANTES_MCN'
      Origin = 'SOFTEPS.MCBASES_DE_CALCULO.TOT_COTIZANTES_MCN'
    end
    object mcqrymcbasesdecalculo1TOT_COTIZANTES_MCE: TFloatField
      FieldName = 'TOT_COTIZANTES_MCE'
      Origin = 'SOFTEPS.MCBASES_DE_CALCULO.TOT_COTIZANTES_MCE'
    end
    object mcqrymcbasesdecalculo1TOT_COTIZANTES_MPN: TFloatField
      FieldName = 'TOT_COTIZANTES_MPN'
      Origin = 'SOFTEPS.MCBASES_DE_CALCULO.TOT_COTIZANTES_MPN'
    end
    object mcqrymcbasesdecalculo1TOT_COTIZANTES_MPE: TFloatField
      FieldName = 'TOT_COTIZANTES_MPE'
      Origin = 'SOFTEPS.MCBASES_DE_CALCULO.TOT_COTIZANTES_MPE'
    end
    object mcqrymcbasesdecalculo1TOT_BENEFICIARIOS_MCN: TFloatField
      FieldName = 'TOT_BENEFICIARIOS_MCN'
      Origin = 'SOFTEPS.MCBASES_DE_CALCULO.TOT_BENEFICIARIOS_MCN'
    end
    object mcqrymcbasesdecalculo1TOT_BENEFICIARIOS_MCE: TFloatField
      FieldName = 'TOT_BENEFICIARIOS_MCE'
      Origin = 'SOFTEPS.MCBASES_DE_CALCULO.TOT_BENEFICIARIOS_MCE'
    end
    object mcqrymcbasesdecalculo1TOT_BENEFICIARIOS_MPNL: TFloatField
      FieldName = 'TOT_BENEFICIARIOS_MPNL'
      Origin = 'SOFTEPS.MCBASES_DE_CALCULO.TOT_BENEFICIARIOS_MPNL'
    end
    object mcqrymcbasesdecalculo1TOT_BENEFICIARIOS_MPE: TFloatField
      FieldName = 'TOT_BENEFICIARIOS_MPE'
      Origin = 'SOFTEPS.MCBASES_DE_CALCULO.TOT_BENEFICIARIOS_MPE'
    end
    object mcqrymcbasesdecalculo1TOT_AFILIADOS_MCN: TFloatField
      FieldName = 'TOT_AFILIADOS_MCN'
      Origin = 'SOFTEPS.MCBASES_DE_CALCULO.TOT_AFILIADOS_MCN'
    end
    object mcqrymcbasesdecalculo1TOT_AFILIADOS_MCE: TFloatField
      FieldName = 'TOT_AFILIADOS_MCE'
      Origin = 'SOFTEPS.MCBASES_DE_CALCULO.TOT_AFILIADOS_MCE'
    end
    object mcqrymcbasesdecalculo1TOT_AFILIADOS_MPN: TFloatField
      FieldName = 'TOT_AFILIADOS_MPN'
      Origin = 'SOFTEPS.MCBASES_DE_CALCULO.TOT_AFILIADOS_MPN'
    end
    object mcqrymcbasesdecalculo1TOT_AFILIADOS_MPE: TFloatField
      FieldName = 'TOT_AFILIADOS_MPE'
      Origin = 'SOFTEPS.MCBASES_DE_CALCULO.TOT_AFILIADOS_MPE'
    end
    object mcqrymcbasesdecalculo1TOT_AFILIADOS_UPCNORMAL: TFloatField
      FieldName = 'TOT_AFILIADOS_UPCNORMAL'
      Origin = 'SOFTEPS.MCBASES_DE_CALCULO.TOT_AFILIADOS_UPCNORMAL'
    end
    object mcqrymcbasesdecalculo1TOT_AFILIADOS_UPCESPECIAL: TFloatField
      FieldName = 'TOT_AFILIADOS_UPCESPECIAL'
      Origin = 'SOFTEPS.MCBASES_DE_CALCULO.TOT_AFILIADOS_UPCESPECIAL'
    end
    object mcqrymcbasesdecalculo1TOT_DIAS_COTZNN: TFloatField
      FieldName = 'TOT_DIAS_COTZNN'
      Origin = 'SOFTEPS.MCBASES_DE_CALCULO.TOT_DIAS_COTZNN'
    end
    object mcqrymcbasesdecalculo1TOT_DIAS_COTIZE: TFloatField
      FieldName = 'TOT_DIAS_COTIZE'
      Origin = 'SOFTEPS.MCBASES_DE_CALCULO.TOT_DIAS_COTIZE'
    end
    object mcqrymcbasesdecalculo1TOT_UPC_DZN: TFloatField
      FieldName = 'TOT_UPC_DZN'
      Origin = 'SOFTEPS.MCBASES_DE_CALCULO.TOT_UPC_DZN'
    end
    object mcqrymcbasesdecalculo1TOT_UPC_DZE: TFloatField
      FieldName = 'TOT_UPC_DZE'
      Origin = 'SOFTEPS.MCBASES_DE_CALCULO.TOT_UPC_DZE'
    end
    object mcqrymcbasesdecalculo1TOT_VALOR_UPC: TFloatField
      FieldName = 'TOT_VALOR_UPC'
      Origin = 'SOFTEPS.MCBASES_DE_CALCULO.TOT_VALOR_UPC'
    end
  end
  object mctblliquidacion: TTable
    DatabaseName = 'softeps'
    TableName = 'MCLIQUIDACION_COMPENSACION'
    Left = 230
    Top = 12
    object mctblliquidacionNUM_DECLARACION: TFloatField
      FieldName = 'NUM_DECLARACION'
      Required = True
    end
    object mctblliquidacionING_SALBASE_COTIZ12: TFloatField
      FieldName = 'ING_SALBASE_COTIZ12'
    end
    object mctblliquidacionING_SALBASE_COTIZ8: TFloatField
      FieldName = 'ING_SALBASE_COTIZ8'
    end
    object mctblliquidacionVAL_TOTAL_RECA12: TFloatField
      FieldName = 'VAL_TOTAL_RECA12'
    end
    object mctblliquidacionVAL_TOTAL_RECA8: TFloatField
      FieldName = 'VAL_TOTAL_RECA8'
    end
    object mctblliquidacionVAL_DEDUCIDO_AUT12: TFloatField
      FieldName = 'VAL_DEDUCIDO_AUT12'
    end
    object mctblliquidacionVAL_DEDUCIDO_AUT8: TFloatField
      FieldName = 'VAL_DEDUCIDO_AUT8'
    end
    object mctblliquidacionVAL_TOTAL_COTIZ12: TFloatField
      FieldName = 'VAL_TOTAL_COTIZ12'
    end
    object mctblliquidacionVAL_TOTAL_COTIZ8: TFloatField
      FieldName = 'VAL_TOTAL_COTIZ8'
    end
    object mctblliquidacionVAL_SOLIDARIDAD_12: TFloatField
      FieldName = 'VAL_SOLIDARIDAD_12'
    end
    object mctblliquidacionVAL_SOLIDARIDAD_8: TFloatField
      FieldName = 'VAL_SOLIDARIDAD_8'
    end
    object mctblliquidacionVAL_PYP12: TFloatField
      FieldName = 'VAL_PYP12'
    end
    object mctblliquidacionVAL_PYP8: TFloatField
      FieldName = 'VAL_PYP8'
    end
    object mctblliquidacionPRO_INCAPACIDADES12: TFloatField
      FieldName = 'PRO_INCAPACIDADES12'
    end
    object mctblliquidacionPRO_INCAPACIDADES8: TFloatField
      FieldName = 'PRO_INCAPACIDADES8'
    end
    object mctblliquidacionVAL_COTIZACION_NET12: TFloatField
      FieldName = 'VAL_COTIZACION_NET12'
    end
    object mctblliquidacionVAL_COTIZACION_NET8: TFloatField
      FieldName = 'VAL_COTIZACION_NET8'
    end
    object mctblliquidacionVAL_LINCENCIAS_MAT12: TFloatField
      FieldName = 'VAL_LINCENCIAS_MAT12'
    end
    object mctblliquidacionVAL_LICENCIAS_MAT8: TFloatField
      FieldName = 'VAL_LICENCIAS_MAT8'
    end
    object mctblliquidacionVAL_RECONOCER_UPC12: TFloatField
      FieldName = 'VAL_RECONOCER_UPC12'
    end
    object mctblliquidacionVAL_RECONOCER_UPC8: TFloatField
      FieldName = 'VAL_RECONOCER_UPC8'
    end
    object mctblliquidacionVAL_PAGCOBRAR_FSG12: TFloatField
      FieldName = 'VAL_PAGCOBRAR_FSG12'
    end
    object mctblliquidacionVAL_PAGCOBRAR_FSG8: TFloatField
      FieldName = 'VAL_PAGCOBRAR_FSG8'
    end
    object mctblliquidacionTOT_SUBCUENTA_COMP12: TFloatField
      FieldName = 'TOT_SUBCUENTA_COMP12'
    end
    object mctblliquidacionTOT_SUBCUENTA_COMP8: TFloatField
      FieldName = 'TOT_SUBCUENTA_COMP8'
    end
    object mctblliquidacionVAL_PROMOCION: TFloatField
      FieldName = 'VAL_PROMOCION'
    end
    object mctblliquidacionREC_PROMOCION: TFloatField
      FieldName = 'REC_PROMOCION'
    end
    object mctblliquidacionSAL_COMPENSAR_PROM: TFloatField
      FieldName = 'SAL_COMPENSAR_PROM'
    end
    object mctblliquidacionFEC_CONSIGNACION_SOLID: TDateTimeField
      FieldName = 'FEC_CONSIGNACION_SOLID'
    end
    object mctblliquidacionVAL_CONSIGNACION_SOLID: TFloatField
      FieldName = 'VAL_CONSIGNACION_SOLID'
    end
    object mctblliquidacionFEC_CONSIGNACION_PRO: TDateTimeField
      FieldName = 'FEC_CONSIGNACION_PRO'
    end
    object mctblliquidacionVAL_CONSIGNACION_PROMOCION: TFloatField
      FieldName = 'VAL_CONSIGNACION_PROMOCION'
    end
    object mctblliquidacionFEC_CONSIGNACION_COMP: TDateTimeField
      FieldName = 'FEC_CONSIGNACION_COMP'
    end
    object mctblliquidacionVAL_CONSIGNADO_COMP: TFloatField
      FieldName = 'VAL_CONSIGNADO_COMP'
    end
    object mctblliquidacionNUM_AGREGADOS: TFloatField
      FieldName = 'NUM_AGREGADOS'
    end
    object mctblliquidacionVAL_UPC_AGREG: TFloatField
      FieldName = 'VAL_UPC_AGREG'
    end
    object mctblliquidacionVAL_PROMOCION_AGREG: TFloatField
      FieldName = 'VAL_PROMOCION_AGREG'
    end
    object mctblliquidacionVA_SOLID_AGREG: TFloatField
      FieldName = 'VA_SOLID_AGREG'
    end
    object mctblliquidacionNUM_AUTOLIQUIDACIONES: TFloatField
      FieldName = 'NUM_AUTOLIQUIDACIONES'
    end
    object mctblliquidacionVAL_PAGO_INCAP: TFloatField
      FieldName = 'VAL_PAGO_INCAP'
    end
    object mctblliquidacionTOT_COTIZACIONES_NOIDENT: TFloatField
      FieldName = 'TOT_COTIZACIONES_NOIDENT'
    end
    object mctblliquidacionNUM_TOT_AFIL: TFloatField
      FieldName = 'NUM_TOT_AFIL'
    end
    object mctblliquidacionNUM_TOTAL_COTIZ8: TFloatField
      FieldName = 'NUM_TOTAL_COTIZ8'
    end
    object mctblliquidacionTOT_AFILIADOS_IND: TFloatField
      FieldName = 'TOT_AFILIADOS_IND'
    end
    object mctblliquidacionIBC_AFILIADOS_IND: TFloatField
      FieldName = 'IBC_AFILIADOS_IND'
    end
    object mctblliquidacionTOT_MADRES_COMU: TFloatField
      FieldName = 'TOT_MADRES_COMU'
    end
    object mctblliquidacionIBC_MADRES_COMU: TFloatField
      FieldName = 'IBC_MADRES_COMU'
    end
    object mctblliquidacionTOT_MADRESCOMU_COMP: TFloatField
      FieldName = 'TOT_MADRESCOMU_COMP'
    end
    object mctblliquidacionIBC_MADRESCOMU_COMP: TFloatField
      FieldName = 'IBC_MADRESCOMU_COMP'
    end
    object mctblliquidacionTOT_MIEMBROS_ADICDEP: TFloatField
      FieldName = 'TOT_MIEMBROS_ADICDEP'
    end
    object mctblliquidacionREC_MIEMBROS_ADICDEP: TFloatField
      FieldName = 'REC_MIEMBROS_ADICDEP'
    end
    object mctblliquidacionTOT_INCAPACIDADES_PAG: TFloatField
      FieldName = 'TOT_INCAPACIDADES_PAG'
    end
    object mctblliquidacionVAL_RECAUDO_BRUT: TFloatField
      FieldName = 'VAL_RECAUDO_BRUT'
    end
    object mctblliquidacionVAL_LICENCIAAS_PAG: TFloatField
      FieldName = 'VAL_LICENCIAAS_PAG'
    end
    object mctblliquidacionVAL_APORTES_NETO: TFloatField
      FieldName = 'VAL_APORTES_NETO'
    end
    object mctblliquidacionREC_ACUMULADO_PER_COMP: TFloatField
      FieldName = 'REC_ACUMULADO_PER_COMP'
    end
    object mctblliquidacionVAL_RECONOCER_PYP: TFloatField
      FieldName = 'VAL_RECONOCER_PYP'
    end
  end
  object mcqrymcaficompla: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      'SELECT DISTINCT NUM_PLANILLA, AFI_NUMERO_DOC, AFI_TIPO_DOC '
      'FROM MCAFILIADOS_COMPENSADOS '
      'WHERE NUM_DECLARACION =:num_declaracion')
    Left = 230
    Top = 12
    ParamData = <
      item
        DataType = ftString
        Name = 'num_declaracion'
        ParamType = ptUnknown
        Value = ''
      end>
    object mcqrymcaficomplaNUM_PLANILLA: TStringField
      FieldName = 'NUM_PLANILLA'
      Origin = 'SOFTEPS.MCAFILIADOS_COMPENSADOS.NUM_PLANILLA'
      Size = 15
    end
    object mcqrymcaficomplaAFI_NUMERO_DOC: TStringField
      FieldName = 'AFI_NUMERO_DOC'
      Origin = 'SOFTEPS.MCAFILIADOS_COMPENSADOS.AFI_NUMERO_DOC'
      Size = 18
    end
    object mcqrymcaficomplaAFI_TIPO_DOC: TStringField
      FieldName = 'AFI_TIPO_DOC'
      Origin = 'SOFTEPS.MCAFILIADOS_COMPENSADOS.AFI_TIPO_DOC'
      Size = 3
    end
  end
  object mcqrymcetabas: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      'SELECT * FROM MCBASES_DE_CALCULO '
      'WHERE NUM_DECLARACION = :dec'
      ' AND COD_GRUPO_ETA  = :eta')
    Left = 230
    Top = 12
    ParamData = <
      item
        DataType = ftString
        Name = 'dec'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'eta'
        ParamType = ptUnknown
        Value = ''
      end>
    object mcqrymcetabasNUM_DECLARACION: TFloatField
      FieldName = 'NUM_DECLARACION'
      Origin = 'SOFTEPS.MCBASES_DE_CALCULO.NUM_DECLARACION'
    end
    object mcqrymcetabasCOD_GRUPO_ETA: TFloatField
      FieldName = 'COD_GRUPO_ETA'
      Origin = 'SOFTEPS.MCBASES_DE_CALCULO.COD_GRUPO_ETA'
    end
    object mcqrymcetabasTOT_COTIZANTES_MCN: TFloatField
      FieldName = 'TOT_COTIZANTES_MCN'
      Origin = 'SOFTEPS.MCBASES_DE_CALCULO.TOT_COTIZANTES_MCN'
    end
    object mcqrymcetabasTOT_COTIZANTES_MCE: TFloatField
      FieldName = 'TOT_COTIZANTES_MCE'
      Origin = 'SOFTEPS.MCBASES_DE_CALCULO.TOT_COTIZANTES_MCE'
    end
    object mcqrymcetabasTOT_COTIZANTES_MPN: TFloatField
      FieldName = 'TOT_COTIZANTES_MPN'
      Origin = 'SOFTEPS.MCBASES_DE_CALCULO.TOT_COTIZANTES_MPN'
    end
    object mcqrymcetabasTOT_COTIZANTES_MPE: TFloatField
      FieldName = 'TOT_COTIZANTES_MPE'
      Origin = 'SOFTEPS.MCBASES_DE_CALCULO.TOT_COTIZANTES_MPE'
    end
    object mcqrymcetabasTOT_BENEFICIARIOS_MCN: TFloatField
      FieldName = 'TOT_BENEFICIARIOS_MCN'
      Origin = 'SOFTEPS.MCBASES_DE_CALCULO.TOT_BENEFICIARIOS_MCN'
    end
    object mcqrymcetabasTOT_BENEFICIARIOS_MCE: TFloatField
      FieldName = 'TOT_BENEFICIARIOS_MCE'
      Origin = 'SOFTEPS.MCBASES_DE_CALCULO.TOT_BENEFICIARIOS_MCE'
    end
    object mcqrymcetabasTOT_BENEFICIARIOS_MPNL: TFloatField
      FieldName = 'TOT_BENEFICIARIOS_MPNL'
      Origin = 'SOFTEPS.MCBASES_DE_CALCULO.TOT_BENEFICIARIOS_MPNL'
    end
    object mcqrymcetabasTOT_BENEFICIARIOS_MPE: TFloatField
      FieldName = 'TOT_BENEFICIARIOS_MPE'
      Origin = 'SOFTEPS.MCBASES_DE_CALCULO.TOT_BENEFICIARIOS_MPE'
    end
    object mcqrymcetabasTOT_AFILIADOS_MCN: TFloatField
      FieldName = 'TOT_AFILIADOS_MCN'
      Origin = 'SOFTEPS.MCBASES_DE_CALCULO.TOT_AFILIADOS_MCN'
    end
    object mcqrymcetabasTOT_AFILIADOS_MCE: TFloatField
      FieldName = 'TOT_AFILIADOS_MCE'
      Origin = 'SOFTEPS.MCBASES_DE_CALCULO.TOT_AFILIADOS_MCE'
    end
    object mcqrymcetabasTOT_AFILIADOS_MPN: TFloatField
      FieldName = 'TOT_AFILIADOS_MPN'
      Origin = 'SOFTEPS.MCBASES_DE_CALCULO.TOT_AFILIADOS_MPN'
    end
    object mcqrymcetabasTOT_AFILIADOS_MPE: TFloatField
      FieldName = 'TOT_AFILIADOS_MPE'
      Origin = 'SOFTEPS.MCBASES_DE_CALCULO.TOT_AFILIADOS_MPE'
    end
    object mcqrymcetabasTOT_AFILIADOS_UPCNORMAL: TFloatField
      FieldName = 'TOT_AFILIADOS_UPCNORMAL'
      Origin = 'SOFTEPS.MCBASES_DE_CALCULO.TOT_AFILIADOS_UPCNORMAL'
    end
    object mcqrymcetabasTOT_AFILIADOS_UPCESPECIAL: TFloatField
      FieldName = 'TOT_AFILIADOS_UPCESPECIAL'
      Origin = 'SOFTEPS.MCBASES_DE_CALCULO.TOT_AFILIADOS_UPCESPECIAL'
    end
    object mcqrymcetabasTOT_DIAS_COTZNN: TFloatField
      FieldName = 'TOT_DIAS_COTZNN'
      Origin = 'SOFTEPS.MCBASES_DE_CALCULO.TOT_DIAS_COTZNN'
    end
    object mcqrymcetabasTOT_DIAS_COTIZE: TFloatField
      FieldName = 'TOT_DIAS_COTIZE'
      Origin = 'SOFTEPS.MCBASES_DE_CALCULO.TOT_DIAS_COTIZE'
    end
    object mcqrymcetabasTOT_UPC_DZN: TFloatField
      FieldName = 'TOT_UPC_DZN'
      Origin = 'SOFTEPS.MCBASES_DE_CALCULO.TOT_UPC_DZN'
    end
    object mcqrymcetabasTOT_UPC_DZE: TFloatField
      FieldName = 'TOT_UPC_DZE'
      Origin = 'SOFTEPS.MCBASES_DE_CALCULO.TOT_UPC_DZE'
    end
    object mcqrymcetabasTOT_VALOR_UPC: TFloatField
      FieldName = 'TOT_VALOR_UPC'
      Origin = 'SOFTEPS.MCBASES_DE_CALCULO.TOT_VALOR_UPC'
    end
  end
  object mcqrymcliquidacion: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      'SELECT * FROM MCLIQUIDACION_COMPENSACION'
      'WHERE NUM_DECLARACION = :dec')
    Left = 230
    Top = 12
    ParamData = <
      item
        DataType = ftString
        Name = 'dec'
        ParamType = ptUnknown
        Value = ''
      end>
    object mcqrymcliquidacionNUM_DECLARACION: TFloatField
      FieldName = 'NUM_DECLARACION'
      Origin = 'SOFTEPS.MCLIQUIDACION_COMPENSACION.NUM_DECLARACION'
    end
    object mcqrymcliquidacionING_SALBASE_COTIZ12: TFloatField
      FieldName = 'ING_SALBASE_COTIZ12'
      Origin = 'SOFTEPS.MCLIQUIDACION_COMPENSACION.ING_SALBASE_COTIZ12'
    end
    object mcqrymcliquidacionING_SALBASE_COTIZ8: TFloatField
      FieldName = 'ING_SALBASE_COTIZ8'
      Origin = 'SOFTEPS.MCLIQUIDACION_COMPENSACION.ING_SALBASE_COTIZ8'
    end
    object mcqrymcliquidacionVAL_TOTAL_RECA12: TFloatField
      FieldName = 'VAL_TOTAL_RECA12'
      Origin = 'SOFTEPS.MCLIQUIDACION_COMPENSACION.VAL_TOTAL_RECA12'
    end
    object mcqrymcliquidacionVAL_TOTAL_RECA8: TFloatField
      FieldName = 'VAL_TOTAL_RECA8'
      Origin = 'SOFTEPS.MCLIQUIDACION_COMPENSACION.VAL_TOTAL_RECA8'
    end
    object mcqrymcliquidacionVAL_DEDUCIDO_AUT12: TFloatField
      FieldName = 'VAL_DEDUCIDO_AUT12'
      Origin = 'SOFTEPS.MCLIQUIDACION_COMPENSACION.VAL_DEDUCIDO_AUT12'
    end
    object mcqrymcliquidacionVAL_DEDUCIDO_AUT8: TFloatField
      FieldName = 'VAL_DEDUCIDO_AUT8'
      Origin = 'SOFTEPS.MCLIQUIDACION_COMPENSACION.VAL_DEDUCIDO_AUT8'
    end
    object mcqrymcliquidacionVAL_TOTAL_COTIZ12: TFloatField
      FieldName = 'VAL_TOTAL_COTIZ12'
      Origin = 'SOFTEPS.MCLIQUIDACION_COMPENSACION.VAL_TOTAL_COTIZ12'
    end
    object mcqrymcliquidacionVAL_TOTAL_COTIZ8: TFloatField
      FieldName = 'VAL_TOTAL_COTIZ8'
      Origin = 'SOFTEPS.MCLIQUIDACION_COMPENSACION.VAL_TOTAL_COTIZ8'
    end
    object mcqrymcliquidacionVAL_SOLIDARIDAD_12: TFloatField
      FieldName = 'VAL_SOLIDARIDAD_12'
      Origin = 'SOFTEPS.MCLIQUIDACION_COMPENSACION.VAL_SOLIDARIDAD_12'
    end
    object mcqrymcliquidacionVAL_SOLIDARIDAD_8: TFloatField
      FieldName = 'VAL_SOLIDARIDAD_8'
      Origin = 'SOFTEPS.MCLIQUIDACION_COMPENSACION.VAL_SOLIDARIDAD_8'
    end
    object mcqrymcliquidacionVAL_PYP12: TFloatField
      FieldName = 'VAL_PYP12'
      Origin = 'SOFTEPS.MCLIQUIDACION_COMPENSACION.VAL_PYP12'
    end
    object mcqrymcliquidacionVAL_PYP8: TFloatField
      FieldName = 'VAL_PYP8'
      Origin = 'SOFTEPS.MCLIQUIDACION_COMPENSACION.VAL_PYP8'
    end
    object mcqrymcliquidacionPRO_INCAPACIDADES12: TFloatField
      FieldName = 'PRO_INCAPACIDADES12'
      Origin = 'SOFTEPS.MCLIQUIDACION_COMPENSACION.PRO_INCAPACIDADES12'
    end
    object mcqrymcliquidacionPRO_INCAPACIDADES8: TFloatField
      FieldName = 'PRO_INCAPACIDADES8'
      Origin = 'SOFTEPS.MCLIQUIDACION_COMPENSACION.PRO_INCAPACIDADES8'
    end
    object mcqrymcliquidacionVAL_COTIZACION_NET12: TFloatField
      FieldName = 'VAL_COTIZACION_NET12'
      Origin = 'SOFTEPS.MCLIQUIDACION_COMPENSACION.VAL_COTIZACION_NET12'
    end
    object mcqrymcliquidacionVAL_COTIZACION_NET8: TFloatField
      FieldName = 'VAL_COTIZACION_NET8'
      Origin = 'SOFTEPS.MCLIQUIDACION_COMPENSACION.VAL_COTIZACION_NET8'
    end
    object mcqrymcliquidacionVAL_LINCENCIAS_MAT12: TFloatField
      FieldName = 'VAL_LINCENCIAS_MAT12'
      Origin = 'SOFTEPS.MCLIQUIDACION_COMPENSACION.VAL_LINCENCIAS_MAT12'
    end
    object mcqrymcliquidacionVAL_LICENCIAS_MAT8: TFloatField
      FieldName = 'VAL_LICENCIAS_MAT8'
      Origin = 'SOFTEPS.MCLIQUIDACION_COMPENSACION.VAL_LICENCIAS_MAT8'
    end
    object mcqrymcliquidacionVAL_RECONOCER_UPC12: TFloatField
      FieldName = 'VAL_RECONOCER_UPC12'
      Origin = 'SOFTEPS.MCLIQUIDACION_COMPENSACION.VAL_RECONOCER_UPC12'
    end
    object mcqrymcliquidacionVAL_RECONOCER_UPC8: TFloatField
      FieldName = 'VAL_RECONOCER_UPC8'
      Origin = 'SOFTEPS.MCLIQUIDACION_COMPENSACION.VAL_RECONOCER_UPC8'
    end
    object mcqrymcliquidacionVAL_PAGCOBRAR_FSG12: TFloatField
      FieldName = 'VAL_PAGCOBRAR_FSG12'
      Origin = 'SOFTEPS.MCLIQUIDACION_COMPENSACION.VAL_PAGCOBRAR_FSG12'
    end
    object mcqrymcliquidacionVAL_PAGCOBRAR_FSG8: TFloatField
      FieldName = 'VAL_PAGCOBRAR_FSG8'
      Origin = 'SOFTEPS.MCLIQUIDACION_COMPENSACION.VAL_PAGCOBRAR_FSG8'
    end
    object mcqrymcliquidacionTOT_SUBCUENTA_COMP12: TFloatField
      FieldName = 'TOT_SUBCUENTA_COMP12'
      Origin = 'SOFTEPS.MCLIQUIDACION_COMPENSACION.TOT_SUBCUENTA_COMP12'
    end
    object mcqrymcliquidacionTOT_SUBCUENTA_COMP8: TFloatField
      FieldName = 'TOT_SUBCUENTA_COMP8'
      Origin = 'SOFTEPS.MCLIQUIDACION_COMPENSACION.TOT_SUBCUENTA_COMP8'
    end
    object mcqrymcliquidacionVAL_PROMOCION: TFloatField
      FieldName = 'VAL_PROMOCION'
      Origin = 'SOFTEPS.MCLIQUIDACION_COMPENSACION.VAL_PROMOCION'
    end
    object mcqrymcliquidacionREC_PROMOCION: TFloatField
      FieldName = 'REC_PROMOCION'
      Origin = 'SOFTEPS.MCLIQUIDACION_COMPENSACION.REC_PROMOCION'
    end
    object mcqrymcliquidacionSAL_COMPENSAR_PROM: TFloatField
      FieldName = 'SAL_COMPENSAR_PROM'
      Origin = 'SOFTEPS.MCLIQUIDACION_COMPENSACION.SAL_COMPENSAR_PROM'
    end
    object mcqrymcliquidacionFEC_CONSIGNACION_SOLID: TDateTimeField
      FieldName = 'FEC_CONSIGNACION_SOLID'
      Origin = 'SOFTEPS.MCLIQUIDACION_COMPENSACION.FEC_CONSIGNACION_SOLID'
    end
    object mcqrymcliquidacionVAL_CONSIGNACION_SOLID: TFloatField
      FieldName = 'VAL_CONSIGNACION_SOLID'
      Origin = 'SOFTEPS.MCLIQUIDACION_COMPENSACION.VAL_CONSIGNACION_SOLID'
    end
    object mcqrymcliquidacionFEC_CONSIGNACION_PRO: TDateTimeField
      FieldName = 'FEC_CONSIGNACION_PRO'
      Origin = 'SOFTEPS.MCLIQUIDACION_COMPENSACION.FEC_CONSIGNACION_PRO'
    end
    object mcqrymcliquidacionVAL_CONSIGNACION_PROMOCION: TFloatField
      FieldName = 'VAL_CONSIGNACION_PROMOCION'
      Origin = 'SOFTEPS.MCLIQUIDACION_COMPENSACION.VAL_CONSIGNACION_PROMOCION'
    end
    object mcqrymcliquidacionFEC_CONSIGNACION_COMP: TDateTimeField
      FieldName = 'FEC_CONSIGNACION_COMP'
      Origin = 'SOFTEPS.MCLIQUIDACION_COMPENSACION.FEC_CONSIGNACION_COMP'
    end
    object mcqrymcliquidacionVAL_CONSIGNADO_COMP: TFloatField
      FieldName = 'VAL_CONSIGNADO_COMP'
      Origin = 'SOFTEPS.MCLIQUIDACION_COMPENSACION.VAL_CONSIGNADO_COMP'
    end
    object mcqrymcliquidacionNUM_AGREGADOS: TFloatField
      FieldName = 'NUM_AGREGADOS'
      Origin = 'SOFTEPS.MCLIQUIDACION_COMPENSACION.NUM_AGREGADOS'
    end
    object mcqrymcliquidacionVAL_UPC_AGREG: TFloatField
      FieldName = 'VAL_UPC_AGREG'
      Origin = 'SOFTEPS.MCLIQUIDACION_COMPENSACION.VAL_UPC_AGREG'
    end
    object mcqrymcliquidacionVAL_PROMOCION_AGREG: TFloatField
      FieldName = 'VAL_PROMOCION_AGREG'
      Origin = 'SOFTEPS.MCLIQUIDACION_COMPENSACION.VAL_PROMOCION_AGREG'
    end
    object mcqrymcliquidacionVA_SOLID_AGREG: TFloatField
      FieldName = 'VA_SOLID_AGREG'
      Origin = 'SOFTEPS.MCLIQUIDACION_COMPENSACION.VA_SOLID_AGREG'
    end
    object mcqrymcliquidacionNUM_AUTOLIQUIDACIONES: TFloatField
      FieldName = 'NUM_AUTOLIQUIDACIONES'
      Origin = 'SOFTEPS.MCLIQUIDACION_COMPENSACION.NUM_AUTOLIQUIDACIONES'
    end
    object mcqrymcliquidacionVAL_PAGO_INCAP: TFloatField
      FieldName = 'VAL_PAGO_INCAP'
      Origin = 'SOFTEPS.MCLIQUIDACION_COMPENSACION.VAL_PAGO_INCAP'
    end
    object mcqrymcliquidacionTOT_COTIZACIONES_NOIDENT: TFloatField
      FieldName = 'TOT_COTIZACIONES_NOIDENT'
      Origin = 'SOFTEPS.MCLIQUIDACION_COMPENSACION.TOT_COTIZACIONES_NOIDENT'
    end
    object mcqrymcliquidacionNUM_TOT_AFIL: TFloatField
      FieldName = 'NUM_TOT_AFIL'
      Origin = 'SOFTEPS.MCLIQUIDACION_COMPENSACION.NUM_TOT_AFIL'
    end
    object mcqrymcliquidacionNUM_TOTAL_COTIZ8: TFloatField
      FieldName = 'NUM_TOTAL_COTIZ8'
      Origin = 'SOFTEPS.MCLIQUIDACION_COMPENSACION.NUM_TOTAL_COTIZ8'
    end
    object mcqrymcliquidacionTOT_AFILIADOS_IND: TFloatField
      FieldName = 'TOT_AFILIADOS_IND'
      Origin = 'SOFTEPS.MCLIQUIDACION_COMPENSACION.TOT_AFILIADOS_IND'
    end
    object mcqrymcliquidacionIBC_AFILIADOS_IND: TFloatField
      FieldName = 'IBC_AFILIADOS_IND'
      Origin = 'SOFTEPS.MCLIQUIDACION_COMPENSACION.IBC_AFILIADOS_IND'
    end
    object mcqrymcliquidacionTOT_MADRES_COMU: TFloatField
      FieldName = 'TOT_MADRES_COMU'
      Origin = 'SOFTEPS.MCLIQUIDACION_COMPENSACION.TOT_MADRES_COMU'
    end
    object mcqrymcliquidacionIBC_MADRES_COMU: TFloatField
      FieldName = 'IBC_MADRES_COMU'
      Origin = 'SOFTEPS.MCLIQUIDACION_COMPENSACION.IBC_MADRES_COMU'
    end
    object mcqrymcliquidacionTOT_MADRESCOMU_COMP: TFloatField
      FieldName = 'TOT_MADRESCOMU_COMP'
      Origin = 'SOFTEPS.MCLIQUIDACION_COMPENSACION.TOT_MADRESCOMU_COMP'
    end
    object mcqrymcliquidacionIBC_MADRESCOMU_COMP: TFloatField
      FieldName = 'IBC_MADRESCOMU_COMP'
      Origin = 'SOFTEPS.MCLIQUIDACION_COMPENSACION.IBC_MADRESCOMU_COMP'
    end
    object mcqrymcliquidacionTOT_MIEMBROS_ADICDEP: TFloatField
      FieldName = 'TOT_MIEMBROS_ADICDEP'
      Origin = 'SOFTEPS.MCLIQUIDACION_COMPENSACION.TOT_MIEMBROS_ADICDEP'
    end
    object mcqrymcliquidacionREC_MIEMBROS_ADICDEP: TFloatField
      FieldName = 'REC_MIEMBROS_ADICDEP'
      Origin = 'SOFTEPS.MCLIQUIDACION_COMPENSACION.REC_MIEMBROS_ADICDEP'
    end
    object mcqrymcliquidacionTOT_INCAPACIDADES_PAG: TFloatField
      FieldName = 'TOT_INCAPACIDADES_PAG'
      Origin = 'SOFTEPS.MCLIQUIDACION_COMPENSACION.TOT_INCAPACIDADES_PAG'
    end
    object mcqrymcliquidacionVAL_RECAUDO_BRUT: TFloatField
      FieldName = 'VAL_RECAUDO_BRUT'
      Origin = 'SOFTEPS.MCLIQUIDACION_COMPENSACION.VAL_RECAUDO_BRUT'
    end
    object mcqrymcliquidacionVAL_LICENCIAAS_PAG: TFloatField
      FieldName = 'VAL_LICENCIAAS_PAG'
      Origin = 'SOFTEPS.MCLIQUIDACION_COMPENSACION.VAL_LICENCIAAS_PAG'
    end
    object mcqrymcliquidacionVAL_APORTES_NETO: TFloatField
      FieldName = 'VAL_APORTES_NETO'
      Origin = 'SOFTEPS.MCLIQUIDACION_COMPENSACION.VAL_APORTES_NETO'
    end
    object mcqrymcliquidacionREC_ACUMULADO_PER_COMP: TFloatField
      FieldName = 'REC_ACUMULADO_PER_COMP'
      Origin = 'SOFTEPS.MCLIQUIDACION_COMPENSACION.REC_ACUMULADO_PER_COMP'
    end
    object mcqrymcliquidacionVAL_RECONOCER_PYP: TFloatField
      FieldName = 'VAL_RECONOCER_PYP'
      Origin = 'SOFTEPS.MCLIQUIDACION_COMPENSACION.VAL_RECONOCER_PYP'
    end
  end
  object qrymccompania: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      'SELECT * FROM COMPANIA')
    Left = 230
    Top = 12
    object qrymccompaniaTIP_DOCUMENTO: TStringField
      FieldName = 'TIP_DOCUMENTO'
      Origin = 'SOFTEPS.COMPANIA.TIP_DOCUMENTO'
      Size = 3
    end
    object qrymccompaniaNUM_DOCUMENTO: TStringField
      FieldName = 'NUM_DOCUMENTO'
      Origin = 'SOFTEPS.COMPANIA.NUM_DOCUMENTO'
      Size = 18
    end
    object qrymccompaniaNOM_EPS: TStringField
      FieldName = 'NOM_EPS'
      Origin = 'SOFTEPS.COMPANIA.NOM_EPS'
      Size = 100
    end
    object qrymccompaniaFEC_INCLUSION: TDateTimeField
      FieldName = 'FEC_INCLUSION'
      Origin = 'SOFTEPS.COMPANIA.FEC_INCLUSION'
    end
    object qrymccompaniaCOD_EPS: TStringField
      FieldName = 'COD_EPS'
      Origin = 'SOFTEPS.COMPANIA.COD_EPS'
      Size = 6
    end
    object qrymccompaniaDIR_EPS: TStringField
      FieldName = 'DIR_EPS'
      Origin = 'SOFTEPS.COMPANIA.DIR_EPS'
      Size = 50
    end
    object qrymccompaniaTEL_EPS: TStringField
      FieldName = 'TEL_EPS'
      Origin = 'SOFTEPS.COMPANIA.TEL_EPS'
    end
    object qrymccompaniaFAX_EPS: TStringField
      FieldName = 'FAX_EPS'
      Origin = 'SOFTEPS.COMPANIA.FAX_EPS'
    end
    object qrymccompaniaREP_LEGAL: TStringField
      FieldName = 'REP_LEGAL'
      Origin = 'SOFTEPS.COMPANIA.REP_LEGAL'
      Size = 100
    end
    object qrymccompaniaEML_EPS: TStringField
      FieldName = 'EML_EPS'
      Origin = 'SOFTEPS.COMPANIA.EML_EPS'
      Size = 50
    end
  end
  object mcqrymcbasesdecalculo3: TQuery
    DatabaseName = 'softeps'
    RequestLive = True
    SQL.Strings = (
      'SELECT * FROM MCBASES_DE_CALCULO'
      'WHERE NUM_DECLARACION >= :dec1'
      '  AND NUM_DECLARACION <= :dec2')
    Left = 230
    Top = 12
    ParamData = <
      item
        DataType = ftString
        Name = 'dec1'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'dec2'
        ParamType = ptUnknown
        Value = ''
      end>
    object mcqrymcbasesdecalculo3NUM_DECLARACION: TFloatField
      FieldName = 'NUM_DECLARACION'
      Origin = 'SOFTEPS.MCBASES_DE_CALCULO.NUM_DECLARACION'
    end
    object mcqrymcbasesdecalculo3COD_GRUPO_ETA: TFloatField
      FieldName = 'COD_GRUPO_ETA'
      Origin = 'SOFTEPS.MCBASES_DE_CALCULO.COD_GRUPO_ETA'
    end
    object mcqrymcbasesdecalculo3TOT_COTIZANTES_MCN: TFloatField
      FieldName = 'TOT_COTIZANTES_MCN'
      Origin = 'SOFTEPS.MCBASES_DE_CALCULO.TOT_COTIZANTES_MCN'
    end
    object mcqrymcbasesdecalculo3TOT_COTIZANTES_MCE: TFloatField
      FieldName = 'TOT_COTIZANTES_MCE'
      Origin = 'SOFTEPS.MCBASES_DE_CALCULO.TOT_COTIZANTES_MCE'
    end
    object mcqrymcbasesdecalculo3TOT_COTIZANTES_MPN: TFloatField
      FieldName = 'TOT_COTIZANTES_MPN'
      Origin = 'SOFTEPS.MCBASES_DE_CALCULO.TOT_COTIZANTES_MPN'
    end
    object mcqrymcbasesdecalculo3TOT_COTIZANTES_MPE: TFloatField
      FieldName = 'TOT_COTIZANTES_MPE'
      Origin = 'SOFTEPS.MCBASES_DE_CALCULO.TOT_COTIZANTES_MPE'
    end
    object mcqrymcbasesdecalculo3TOT_BENEFICIARIOS_MCN: TFloatField
      FieldName = 'TOT_BENEFICIARIOS_MCN'
      Origin = 'SOFTEPS.MCBASES_DE_CALCULO.TOT_BENEFICIARIOS_MCN'
    end
    object mcqrymcbasesdecalculo3TOT_BENEFICIARIOS_MCE: TFloatField
      FieldName = 'TOT_BENEFICIARIOS_MCE'
      Origin = 'SOFTEPS.MCBASES_DE_CALCULO.TOT_BENEFICIARIOS_MCE'
    end
    object mcqrymcbasesdecalculo3TOT_BENEFICIARIOS_MPNL: TFloatField
      FieldName = 'TOT_BENEFICIARIOS_MPNL'
      Origin = 'SOFTEPS.MCBASES_DE_CALCULO.TOT_BENEFICIARIOS_MPNL'
    end
    object mcqrymcbasesdecalculo3TOT_BENEFICIARIOS_MPE: TFloatField
      FieldName = 'TOT_BENEFICIARIOS_MPE'
      Origin = 'SOFTEPS.MCBASES_DE_CALCULO.TOT_BENEFICIARIOS_MPE'
    end
    object mcqrymcbasesdecalculo3TOT_AFILIADOS_MCN: TFloatField
      FieldName = 'TOT_AFILIADOS_MCN'
      Origin = 'SOFTEPS.MCBASES_DE_CALCULO.TOT_AFILIADOS_MCN'
    end
    object mcqrymcbasesdecalculo3TOT_AFILIADOS_MCE: TFloatField
      FieldName = 'TOT_AFILIADOS_MCE'
      Origin = 'SOFTEPS.MCBASES_DE_CALCULO.TOT_AFILIADOS_MCE'
    end
    object mcqrymcbasesdecalculo3TOT_AFILIADOS_MPN: TFloatField
      FieldName = 'TOT_AFILIADOS_MPN'
      Origin = 'SOFTEPS.MCBASES_DE_CALCULO.TOT_AFILIADOS_MPN'
    end
    object mcqrymcbasesdecalculo3TOT_AFILIADOS_MPE: TFloatField
      FieldName = 'TOT_AFILIADOS_MPE'
      Origin = 'SOFTEPS.MCBASES_DE_CALCULO.TOT_AFILIADOS_MPE'
    end
    object mcqrymcbasesdecalculo3TOT_AFILIADOS_UPCNORMAL: TFloatField
      FieldName = 'TOT_AFILIADOS_UPCNORMAL'
      Origin = 'SOFTEPS.MCBASES_DE_CALCULO.TOT_AFILIADOS_UPCNORMAL'
    end
    object mcqrymcbasesdecalculo3TOT_AFILIADOS_UPCESPECIAL: TFloatField
      FieldName = 'TOT_AFILIADOS_UPCESPECIAL'
      Origin = 'SOFTEPS.MCBASES_DE_CALCULO.TOT_AFILIADOS_UPCESPECIAL'
    end
    object mcqrymcbasesdecalculo3TOT_DIAS_COTZNN: TFloatField
      FieldName = 'TOT_DIAS_COTZNN'
      Origin = 'SOFTEPS.MCBASES_DE_CALCULO.TOT_DIAS_COTZNN'
    end
    object mcqrymcbasesdecalculo3TOT_DIAS_COTIZE: TFloatField
      FieldName = 'TOT_DIAS_COTIZE'
      Origin = 'SOFTEPS.MCBASES_DE_CALCULO.TOT_DIAS_COTIZE'
    end
    object mcqrymcbasesdecalculo3TOT_UPC_DZN: TFloatField
      FieldName = 'TOT_UPC_DZN'
      Origin = 'SOFTEPS.MCBASES_DE_CALCULO.TOT_UPC_DZN'
    end
    object mcqrymcbasesdecalculo3TOT_UPC_DZE: TFloatField
      FieldName = 'TOT_UPC_DZE'
      Origin = 'SOFTEPS.MCBASES_DE_CALCULO.TOT_UPC_DZE'
    end
    object mcqrymcbasesdecalculo3TOT_VALOR_UPC: TFloatField
      FieldName = 'TOT_VALOR_UPC'
      Origin = 'SOFTEPS.MCBASES_DE_CALCULO.TOT_VALOR_UPC'
    end
  end
  object mcqrymcliquidacion3: TQuery
    DatabaseName = 'softeps'
    RequestLive = True
    SQL.Strings = (
      'SELECT * FROM MCLIQUIDACION_COMPENSACION'
      'WHERE NUM_DECLARACION >= :dec1'
      'AND NUM_DECLARACION <= :dec2')
    Left = 230
    Top = 12
    ParamData = <
      item
        DataType = ftString
        Name = 'dec1'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'dec2'
        ParamType = ptUnknown
        Value = ''
      end>
    object mcqrymcliquidacion3NUM_DECLARACION: TFloatField
      FieldName = 'NUM_DECLARACION'
      Origin = 'SOFTEPS.MCLIQUIDACION_COMPENSACION.NUM_DECLARACION'
    end
    object mcqrymcliquidacion3ING_SALBASE_COTIZ12: TFloatField
      FieldName = 'ING_SALBASE_COTIZ12'
      Origin = 'SOFTEPS.MCLIQUIDACION_COMPENSACION.ING_SALBASE_COTIZ12'
    end
    object mcqrymcliquidacion3ING_SALBASE_COTIZ8: TFloatField
      FieldName = 'ING_SALBASE_COTIZ8'
      Origin = 'SOFTEPS.MCLIQUIDACION_COMPENSACION.ING_SALBASE_COTIZ8'
    end
    object mcqrymcliquidacion3VAL_TOTAL_RECA12: TFloatField
      FieldName = 'VAL_TOTAL_RECA12'
      Origin = 'SOFTEPS.MCLIQUIDACION_COMPENSACION.VAL_TOTAL_RECA12'
    end
    object mcqrymcliquidacion3VAL_TOTAL_RECA8: TFloatField
      FieldName = 'VAL_TOTAL_RECA8'
      Origin = 'SOFTEPS.MCLIQUIDACION_COMPENSACION.VAL_TOTAL_RECA8'
    end
    object mcqrymcliquidacion3VAL_DEDUCIDO_AUT12: TFloatField
      FieldName = 'VAL_DEDUCIDO_AUT12'
      Origin = 'SOFTEPS.MCLIQUIDACION_COMPENSACION.VAL_DEDUCIDO_AUT12'
    end
    object mcqrymcliquidacion3VAL_DEDUCIDO_AUT8: TFloatField
      FieldName = 'VAL_DEDUCIDO_AUT8'
      Origin = 'SOFTEPS.MCLIQUIDACION_COMPENSACION.VAL_DEDUCIDO_AUT8'
    end
    object mcqrymcliquidacion3VAL_TOTAL_COTIZ12: TFloatField
      FieldName = 'VAL_TOTAL_COTIZ12'
      Origin = 'SOFTEPS.MCLIQUIDACION_COMPENSACION.VAL_TOTAL_COTIZ12'
    end
    object mcqrymcliquidacion3VAL_TOTAL_COTIZ8: TFloatField
      FieldName = 'VAL_TOTAL_COTIZ8'
      Origin = 'SOFTEPS.MCLIQUIDACION_COMPENSACION.VAL_TOTAL_COTIZ8'
    end
    object mcqrymcliquidacion3VAL_SOLIDARIDAD_12: TFloatField
      FieldName = 'VAL_SOLIDARIDAD_12'
      Origin = 'SOFTEPS.MCLIQUIDACION_COMPENSACION.VAL_SOLIDARIDAD_12'
    end
    object mcqrymcliquidacion3VAL_SOLIDARIDAD_8: TFloatField
      FieldName = 'VAL_SOLIDARIDAD_8'
      Origin = 'SOFTEPS.MCLIQUIDACION_COMPENSACION.VAL_SOLIDARIDAD_8'
    end
    object mcqrymcliquidacion3VAL_PYP12: TFloatField
      FieldName = 'VAL_PYP12'
      Origin = 'SOFTEPS.MCLIQUIDACION_COMPENSACION.VAL_PYP12'
    end
    object mcqrymcliquidacion3VAL_PYP8: TFloatField
      FieldName = 'VAL_PYP8'
      Origin = 'SOFTEPS.MCLIQUIDACION_COMPENSACION.VAL_PYP8'
    end
    object mcqrymcliquidacion3PRO_INCAPACIDADES12: TFloatField
      FieldName = 'PRO_INCAPACIDADES12'
      Origin = 'SOFTEPS.MCLIQUIDACION_COMPENSACION.PRO_INCAPACIDADES12'
    end
    object mcqrymcliquidacion3PRO_INCAPACIDADES8: TFloatField
      FieldName = 'PRO_INCAPACIDADES8'
      Origin = 'SOFTEPS.MCLIQUIDACION_COMPENSACION.PRO_INCAPACIDADES8'
    end
    object mcqrymcliquidacion3VAL_COTIZACION_NET12: TFloatField
      FieldName = 'VAL_COTIZACION_NET12'
      Origin = 'SOFTEPS.MCLIQUIDACION_COMPENSACION.VAL_COTIZACION_NET12'
    end
    object mcqrymcliquidacion3VAL_COTIZACION_NET8: TFloatField
      FieldName = 'VAL_COTIZACION_NET8'
      Origin = 'SOFTEPS.MCLIQUIDACION_COMPENSACION.VAL_COTIZACION_NET8'
    end
    object mcqrymcliquidacion3VAL_LINCENCIAS_MAT12: TFloatField
      FieldName = 'VAL_LINCENCIAS_MAT12'
      Origin = 'SOFTEPS.MCLIQUIDACION_COMPENSACION.VAL_LINCENCIAS_MAT12'
    end
    object mcqrymcliquidacion3VAL_LICENCIAS_MAT8: TFloatField
      FieldName = 'VAL_LICENCIAS_MAT8'
      Origin = 'SOFTEPS.MCLIQUIDACION_COMPENSACION.VAL_LICENCIAS_MAT8'
    end
    object mcqrymcliquidacion3VAL_RECONOCER_UPC12: TFloatField
      FieldName = 'VAL_RECONOCER_UPC12'
      Origin = 'SOFTEPS.MCLIQUIDACION_COMPENSACION.VAL_RECONOCER_UPC12'
    end
    object mcqrymcliquidacion3VAL_RECONOCER_UPC8: TFloatField
      FieldName = 'VAL_RECONOCER_UPC8'
      Origin = 'SOFTEPS.MCLIQUIDACION_COMPENSACION.VAL_RECONOCER_UPC8'
    end
    object mcqrymcliquidacion3VAL_PAGCOBRAR_FSG12: TFloatField
      FieldName = 'VAL_PAGCOBRAR_FSG12'
      Origin = 'SOFTEPS.MCLIQUIDACION_COMPENSACION.VAL_PAGCOBRAR_FSG12'
    end
    object mcqrymcliquidacion3VAL_PAGCOBRAR_FSG8: TFloatField
      FieldName = 'VAL_PAGCOBRAR_FSG8'
      Origin = 'SOFTEPS.MCLIQUIDACION_COMPENSACION.VAL_PAGCOBRAR_FSG8'
    end
    object mcqrymcliquidacion3TOT_SUBCUENTA_COMP12: TFloatField
      FieldName = 'TOT_SUBCUENTA_COMP12'
      Origin = 'SOFTEPS.MCLIQUIDACION_COMPENSACION.TOT_SUBCUENTA_COMP12'
    end
    object mcqrymcliquidacion3TOT_SUBCUENTA_COMP8: TFloatField
      FieldName = 'TOT_SUBCUENTA_COMP8'
      Origin = 'SOFTEPS.MCLIQUIDACION_COMPENSACION.TOT_SUBCUENTA_COMP8'
    end
    object mcqrymcliquidacion3VAL_PROMOCION: TFloatField
      FieldName = 'VAL_PROMOCION'
      Origin = 'SOFTEPS.MCLIQUIDACION_COMPENSACION.VAL_PROMOCION'
    end
    object mcqrymcliquidacion3REC_PROMOCION: TFloatField
      FieldName = 'REC_PROMOCION'
      Origin = 'SOFTEPS.MCLIQUIDACION_COMPENSACION.REC_PROMOCION'
    end
    object mcqrymcliquidacion3SAL_COMPENSAR_PROM: TFloatField
      FieldName = 'SAL_COMPENSAR_PROM'
      Origin = 'SOFTEPS.MCLIQUIDACION_COMPENSACION.SAL_COMPENSAR_PROM'
    end
    object mcqrymcliquidacion3FEC_CONSIGNACION_SOLID: TDateTimeField
      FieldName = 'FEC_CONSIGNACION_SOLID'
      Origin = 'SOFTEPS.MCLIQUIDACION_COMPENSACION.FEC_CONSIGNACION_SOLID'
    end
    object mcqrymcliquidacion3VAL_CONSIGNACION_SOLID: TFloatField
      FieldName = 'VAL_CONSIGNACION_SOLID'
      Origin = 'SOFTEPS.MCLIQUIDACION_COMPENSACION.VAL_CONSIGNACION_SOLID'
    end
    object mcqrymcliquidacion3FEC_CONSIGNACION_PRO: TDateTimeField
      FieldName = 'FEC_CONSIGNACION_PRO'
      Origin = 'SOFTEPS.MCLIQUIDACION_COMPENSACION.FEC_CONSIGNACION_PRO'
    end
    object mcqrymcliquidacion3VAL_CONSIGNACION_PROMOCION: TFloatField
      FieldName = 'VAL_CONSIGNACION_PROMOCION'
      Origin = 'SOFTEPS.MCLIQUIDACION_COMPENSACION.VAL_CONSIGNACION_PROMOCION'
    end
    object mcqrymcliquidacion3FEC_CONSIGNACION_COMP: TDateTimeField
      FieldName = 'FEC_CONSIGNACION_COMP'
      Origin = 'SOFTEPS.MCLIQUIDACION_COMPENSACION.FEC_CONSIGNACION_COMP'
    end
    object mcqrymcliquidacion3VAL_CONSIGNADO_COMP: TFloatField
      FieldName = 'VAL_CONSIGNADO_COMP'
      Origin = 'SOFTEPS.MCLIQUIDACION_COMPENSACION.VAL_CONSIGNADO_COMP'
    end
    object mcqrymcliquidacion3NUM_AGREGADOS: TFloatField
      FieldName = 'NUM_AGREGADOS'
      Origin = 'SOFTEPS.MCLIQUIDACION_COMPENSACION.NUM_AGREGADOS'
    end
    object mcqrymcliquidacion3VAL_UPC_AGREG: TFloatField
      FieldName = 'VAL_UPC_AGREG'
      Origin = 'SOFTEPS.MCLIQUIDACION_COMPENSACION.VAL_UPC_AGREG'
    end
    object mcqrymcliquidacion3VAL_PROMOCION_AGREG: TFloatField
      FieldName = 'VAL_PROMOCION_AGREG'
      Origin = 'SOFTEPS.MCLIQUIDACION_COMPENSACION.VAL_PROMOCION_AGREG'
    end
    object mcqrymcliquidacion3VA_SOLID_AGREG: TFloatField
      FieldName = 'VA_SOLID_AGREG'
      Origin = 'SOFTEPS.MCLIQUIDACION_COMPENSACION.VA_SOLID_AGREG'
    end
    object mcqrymcliquidacion3NUM_AUTOLIQUIDACIONES: TFloatField
      FieldName = 'NUM_AUTOLIQUIDACIONES'
      Origin = 'SOFTEPS.MCLIQUIDACION_COMPENSACION.NUM_AUTOLIQUIDACIONES'
    end
    object mcqrymcliquidacion3VAL_PAGO_INCAP: TFloatField
      FieldName = 'VAL_PAGO_INCAP'
      Origin = 'SOFTEPS.MCLIQUIDACION_COMPENSACION.VAL_PAGO_INCAP'
    end
    object mcqrymcliquidacion3TOT_COTIZACIONES_NOIDENT: TFloatField
      FieldName = 'TOT_COTIZACIONES_NOIDENT'
      Origin = 'SOFTEPS.MCLIQUIDACION_COMPENSACION.TOT_COTIZACIONES_NOIDENT'
    end
    object mcqrymcliquidacion3NUM_TOT_AFIL: TFloatField
      FieldName = 'NUM_TOT_AFIL'
      Origin = 'SOFTEPS.MCLIQUIDACION_COMPENSACION.NUM_TOT_AFIL'
    end
    object mcqrymcliquidacion3NUM_TOTAL_COTIZ8: TFloatField
      FieldName = 'NUM_TOTAL_COTIZ8'
      Origin = 'SOFTEPS.MCLIQUIDACION_COMPENSACION.NUM_TOTAL_COTIZ8'
    end
    object mcqrymcliquidacion3TOT_AFILIADOS_IND: TFloatField
      FieldName = 'TOT_AFILIADOS_IND'
      Origin = 'SOFTEPS.MCLIQUIDACION_COMPENSACION.TOT_AFILIADOS_IND'
    end
    object mcqrymcliquidacion3IBC_AFILIADOS_IND: TFloatField
      FieldName = 'IBC_AFILIADOS_IND'
      Origin = 'SOFTEPS.MCLIQUIDACION_COMPENSACION.IBC_AFILIADOS_IND'
    end
    object mcqrymcliquidacion3TOT_MADRES_COMU: TFloatField
      FieldName = 'TOT_MADRES_COMU'
      Origin = 'SOFTEPS.MCLIQUIDACION_COMPENSACION.TOT_MADRES_COMU'
    end
    object mcqrymcliquidacion3IBC_MADRES_COMU: TFloatField
      FieldName = 'IBC_MADRES_COMU'
      Origin = 'SOFTEPS.MCLIQUIDACION_COMPENSACION.IBC_MADRES_COMU'
    end
    object mcqrymcliquidacion3TOT_MADRESCOMU_COMP: TFloatField
      FieldName = 'TOT_MADRESCOMU_COMP'
      Origin = 'SOFTEPS.MCLIQUIDACION_COMPENSACION.TOT_MADRESCOMU_COMP'
    end
    object mcqrymcliquidacion3IBC_MADRESCOMU_COMP: TFloatField
      FieldName = 'IBC_MADRESCOMU_COMP'
      Origin = 'SOFTEPS.MCLIQUIDACION_COMPENSACION.IBC_MADRESCOMU_COMP'
    end
    object mcqrymcliquidacion3TOT_MIEMBROS_ADICDEP: TFloatField
      FieldName = 'TOT_MIEMBROS_ADICDEP'
      Origin = 'SOFTEPS.MCLIQUIDACION_COMPENSACION.TOT_MIEMBROS_ADICDEP'
    end
    object mcqrymcliquidacion3REC_MIEMBROS_ADICDEP: TFloatField
      FieldName = 'REC_MIEMBROS_ADICDEP'
      Origin = 'SOFTEPS.MCLIQUIDACION_COMPENSACION.REC_MIEMBROS_ADICDEP'
    end
    object mcqrymcliquidacion3TOT_INCAPACIDADES_PAG: TFloatField
      FieldName = 'TOT_INCAPACIDADES_PAG'
      Origin = 'SOFTEPS.MCLIQUIDACION_COMPENSACION.TOT_INCAPACIDADES_PAG'
    end
    object mcqrymcliquidacion3VAL_RECAUDO_BRUT: TFloatField
      FieldName = 'VAL_RECAUDO_BRUT'
      Origin = 'SOFTEPS.MCLIQUIDACION_COMPENSACION.VAL_RECAUDO_BRUT'
    end
    object mcqrymcliquidacion3VAL_LICENCIAAS_PAG: TFloatField
      FieldName = 'VAL_LICENCIAAS_PAG'
      Origin = 'SOFTEPS.MCLIQUIDACION_COMPENSACION.VAL_LICENCIAAS_PAG'
    end
    object mcqrymcliquidacion3VAL_APORTES_NETO: TFloatField
      FieldName = 'VAL_APORTES_NETO'
      Origin = 'SOFTEPS.MCLIQUIDACION_COMPENSACION.VAL_APORTES_NETO'
    end
    object mcqrymcliquidacion3REC_ACUMULADO_PER_COMP: TFloatField
      FieldName = 'REC_ACUMULADO_PER_COMP'
      Origin = 'SOFTEPS.MCLIQUIDACION_COMPENSACION.REC_ACUMULADO_PER_COMP'
    end
    object mcqrymcliquidacion3VAL_RECONOCER_PYP: TFloatField
      FieldName = 'VAL_RECONOCER_PYP'
      Origin = 'SOFTEPS.MCLIQUIDACION_COMPENSACION.VAL_RECONOCER_PYP'
    end
  end
  object mcqrymccierres1: TQuery
    DatabaseName = 'softeps'
    RequestLive = True
    SQL.Strings = (
      'SELECT * FROM MCCIERRES '
      'WHERE FEC_DIGITACION = :fecha_dec')
    Left = 230
    Top = 12
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'fecha_dec'
        ParamType = ptUnknown
        Value = 0d
      end>
    object mcqrymccierres1TIP_CIERRE: TStringField
      FieldName = 'TIP_CIERRE'
      Origin = 'SOFTEPS.CIERRES.TIP_CIERRE'
      Size = 1
    end
    object mcqrymccierres1PER_COMPENSACION: TStringField
      FieldName = 'PER_COMPENSACION'
      Origin = 'SOFTEPS.CIERRES.PER_COMPENSACION'
      Size = 7
    end
    object mcqrymccierres1FEC_DIGITACION: TDateTimeField
      FieldName = 'FEC_DIGITACION'
      Origin = 'SOFTEPS.CIERRES.FEC_DIGITACION'
    end
  end
  object mcqrymcrafilcomp: TQuery
    DatabaseName = 'softeps'
    RequestLive = True
    SQL.Strings = (
      'SELECT * FROM MCAFILIADOS_COMPENSADOS'
      'WHERE NUM_DECLARACION >= :dec1 '
      '   AND NUM_DECLARACION <= :dec2')
    Left = 230
    Top = 12
    ParamData = <
      item
        DataType = ftString
        Name = 'dec1'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'dec2'
        ParamType = ptUnknown
        Value = ''
      end>
    object mcqrymcrafilcompAFI_NUMERO_DOC: TStringField
      FieldName = 'AFI_NUMERO_DOC'
      Origin = 'SOFTEPS.MCAFILIADOS_COMPENSADOS.AFI_NUMERO_DOC'
      Size = 18
    end
    object mcqrymcrafilcompAFI_TIPO_DOC: TStringField
      FieldName = 'AFI_TIPO_DOC'
      Origin = 'SOFTEPS.MCAFILIADOS_COMPENSADOS.AFI_TIPO_DOC'
      Size = 3
    end
    object mcqrymcrafilcompNUM_DECLARACION: TFloatField
      FieldName = 'NUM_DECLARACION'
      Origin = 'SOFTEPS.MCAFILIADOS_COMPENSADOS.NUM_DECLARACION'
    end
    object mcqrymcrafilcompCOD_GRUPO_ETAREO: TFloatField
      FieldName = 'COD_GRUPO_ETAREO'
      Origin = 'SOFTEPS.MCAFILIADOS_COMPENSADOS.COD_GRUPO_ETAREO'
    end
    object mcqrymcrafilcompTIP_UPC: TStringField
      FieldName = 'TIP_UPC'
      Origin = 'SOFTEPS.MCAFILIADOS_COMPENSADOS.TIP_UPC'
      Size = 1
    end
    object mcqrymcrafilcompTIP_PAGO: TStringField
      FieldName = 'TIP_PAGO'
      Origin = 'SOFTEPS.MCAFILIADOS_COMPENSADOS.TIP_PAGO'
      Size = 1
    end
    object mcqrymcrafilcompTIP_BENEFICIARIO: TStringField
      FieldName = 'TIP_BENEFICIARIO'
      Origin = 'SOFTEPS.MCAFILIADOS_COMPENSADOS.TIP_BENEFICIARIO'
      Size = 1
    end
    object mcqrymcrafilcompDIAS: TStringField
      FieldName = 'DIAS'
      Origin = 'SOFTEPS.MCAFILIADOS_COMPENSADOS.DIAS'
      Size = 2
    end
    object mcqrymcrafilcompSALARIO: TFloatField
      FieldName = 'SALARIO'
      Origin = 'SOFTEPS.MCAFILIADOS_COMPENSADOS.SALARIO'
    end
    object mcqrymcrafilcompPORCENTAJE: TStringField
      FieldName = 'PORCENTAJE'
      Origin = 'SOFTEPS.MCAFILIADOS_COMPENSADOS.PORCENTAJE'
      Size = 2
    end
    object mcqrymcrafilcompCOTIZACION: TFloatField
      FieldName = 'COTIZACION'
      Origin = 'SOFTEPS.MCAFILIADOS_COMPENSADOS.COTIZACION'
    end
    object mcqrymcrafilcompVAL_DEDUCCION: TFloatField
      FieldName = 'VAL_DEDUCCION'
      Origin = 'SOFTEPS.MCAFILIADOS_COMPENSADOS.VAL_DEDUCCION'
    end
    object mcqrymcrafilcompTIP_DEDUCCION: TStringField
      FieldName = 'TIP_DEDUCCION'
      Origin = 'SOFTEPS.MCAFILIADOS_COMPENSADOS.TIP_DEDUCCION'
      Size = 3
    end
    object mcqrymcrafilcompVALOR_UPC: TFloatField
      FieldName = 'VALOR_UPC'
      Origin = 'SOFTEPS.MCAFILIADOS_COMPENSADOS.VALOR_UPC'
    end
    object mcqrymcrafilcompTIP_AFILIADO: TStringField
      FieldName = 'TIP_AFILIADO'
      Origin = 'SOFTEPS.MCAFILIADOS_COMPENSADOS.TIP_AFILIADO'
      Size = 1
    end
    object mcqrymcrafilcompFEC_CONSIGNACION: TDateTimeField
      FieldName = 'FEC_CONSIGNACION'
      Origin = 'SOFTEPS.MCAFILIADOS_COMPENSADOS.FEC_CONSIGNACION'
    end
    object mcqrymcrafilcompCOD_PARENTESCO: TStringField
      FieldName = 'COD_PARENTESCO'
      Origin = 'SOFTEPS.MCAFILIADOS_COMPENSADOS.COD_PARENTESCO'
      Size = 3
    end
    object mcqrymcrafilcompNUM_PLANILLA: TStringField
      FieldName = 'NUM_PLANILLA'
      Origin = 'SOFTEPS.MCAFILIADOS_COMPENSADOS.NUM_PLANILLA'
      Size = 15
    end
    object mcqrymcrafilcompTIP_DOCUMENTO_COT: TStringField
      FieldName = 'TIP_DOCUMENTO_COT'
      Origin = 'SOFTEPS.MCAFILIADOS_COMPENSADOS.TIP_DOCUMENTO_COT'
      Size = 3
    end
    object mcqrymcrafilcompNUM_DOCUMENTO_COT: TStringField
      FieldName = 'NUM_DOCUMENTO_COT'
      Origin = 'SOFTEPS.MCAFILIADOS_COMPENSADOS.NUM_DOCUMENTO_COT'
      Size = 18
    end
    object mcqrymcrafilcompEMP_TIPO_DOC: TStringField
      FieldName = 'EMP_TIPO_DOC'
      Origin = 'SOFTEPS.MCAFILIADOS_COMPENSADOS.EMP_TIPO_DOC'
      Size = 3
    end
    object mcqrymcrafilcompEMP_NUMERO_DOC: TStringField
      FieldName = 'EMP_NUMERO_DOC'
      Origin = 'SOFTEPS.MCAFILIADOS_COMPENSADOS.EMP_NUMERO_DOC'
      Size = 15
    end
    object mcqrymcrafilcompID_MULTIAFILIADO: TStringField
      FieldName = 'ID_MULTIAFILIADO'
      Origin = 'SOFTEPS.MCAFILIADOS_COMPENSADOS.ID_MULTIAFILIADO'
      Size = 9
    end
    object mcqrymcrafilcompCAUSA: TStringField
      FieldName = 'CAUSA'
      Origin = 'SOFTEPS.MCAFILIADOS_COMPENSADOS.CAUSA'
      Size = 30
    end
    object mcqrymcrafilcompVAL_UPC: TFloatField
      FieldName = 'VAL_UPC'
      Origin = 'SOFTEPS.MCAFILIADOS_COMPENSADOS.VAL_UPC'
    end
    object mcqrymcrafilcompEST_MULTIAFILIADO: TStringField
      FieldName = 'EST_MULTIAFILIADO'
      Origin = 'SOFTEPS.MCAFILIADOS_COMPENSADOS.EST_MULTIAFILIADO'
      Size = 3
    end
    object mcqrymcrafilcompNUM_DECLARACION_ANT: TFloatField
      FieldName = 'NUM_DECLARACION_ANT'
      Origin = 'SOFTEPS.MCAFILIADOS_COMPENSADOS.NUM_DECLARACION_ANT'
    end
  end
  object qrymc: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      
        'SELECT PRI_APELLIDO, SEG_APELLIDO, PRI_NOMBRE,SEG_NOMBRE, NUM_DO' +
        'CUMENTO, TIP_DOCUMENTO,'
      
        '       FEC_NACIMIENTO, COD_SEXO, COD_DEPARTAMENTO_RES, COD_CIUDA' +
        'D_RES, FEC_AFILIACION_UNI,'
      
        '       COD_MODALIDAD_TRA, COD_MODALIDAD_TRA,SALARIO, DIAS, PERIO' +
        'DO_COMPENSADO,FEC_CONSIGNACION,'
      
        '       COD_MODALIDAD_TRA,COTIZACION, EMP_NUMERO_DOC, EMP_TIPO_DO' +
        'C, FECHA_DECLARACION'
      'FROM MCAFILIADOS_COMPENSADOS, AFILIADOS, MCDECLARACIONES'
      'WHERE AFI_TIPO_DOC = TIP_DOCUMENTO'
      'AND AFI_NUMERO_DOC = NUM_DOCUMENTO'
      
        'AND MCAFILIADOS_COMPENSADOS.NUM_DECLARACION = MCDECLARACIONES.NU' +
        'M_DECLARACION'
      
        'AND (MCAFILIADOS_COMPENSADOS.NUM_DECLARACION >= :dec AND MCAFILI' +
        'ADOS_COMPENSADOS.NUM_DECLARACION <= :dec1)'
      '')
    Left = 230
    Top = 12
    ParamData = <
      item
        DataType = ftString
        Name = 'dec'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'dec1'
        ParamType = ptUnknown
        Value = ''
      end>
    object qrymcPRI_APELLIDO: TStringField
      FieldName = 'PRI_APELLIDO'
      Origin = 'SOFTEPS.AFILIADOS.PRI_APELLIDO'
      Size = 25
    end
    object qrymcSEG_APELLIDO: TStringField
      FieldName = 'SEG_APELLIDO'
      Origin = 'SOFTEPS.AFILIADOS.SEG_APELLIDO'
      Size = 25
    end
    object qrymcPRI_NOMBRE: TStringField
      FieldName = 'PRI_NOMBRE'
      Origin = 'SOFTEPS.AFILIADOS.PRI_NOMBRE'
      Size = 25
    end
    object qrymcSEG_NOMBRE: TStringField
      FieldName = 'SEG_NOMBRE'
      Origin = 'SOFTEPS.AFILIADOS.SEG_NOMBRE'
      Size = 25
    end
    object qrymcNUM_DOCUMENTO: TStringField
      FieldName = 'NUM_DOCUMENTO'
      Origin = 'SOFTEPS.AFILIADOS.NUM_DOCUMENTO'
      Size = 18
    end
    object qrymcTIP_DOCUMENTO: TStringField
      FieldName = 'TIP_DOCUMENTO'
      Origin = 'SOFTEPS.AFILIADOS.TIP_DOCUMENTO'
      Size = 3
    end
    object qrymcFEC_NACIMIENTO: TDateTimeField
      FieldName = 'FEC_NACIMIENTO'
      Origin = 'SOFTEPS.AFILIADOS.FEC_NACIMIENTO'
    end
    object qrymcCOD_SEXO: TStringField
      FieldName = 'COD_SEXO'
      Origin = 'SOFTEPS.AFILIADOS.COD_SEXO'
      Size = 1
    end
    object qrymcCOD_DEPARTAMENTO_RES: TStringField
      FieldName = 'COD_DEPARTAMENTO_RES'
      Origin = 'SOFTEPS.AFILIADOS.COD_DEPARTAMENTO_RES'
      Size = 2
    end
    object qrymcCOD_CIUDAD_RES: TStringField
      FieldName = 'COD_CIUDAD_RES'
      Origin = 'SOFTEPS.AFILIADOS.COD_CIUDAD_RES'
      Size = 3
    end
    object qrymcFEC_AFILIACION_UNI: TDateTimeField
      FieldName = 'FEC_AFILIACION_UNI'
      Origin = 'SOFTEPS.AFILIADOS.FEC_AFILIACION_UNI'
    end
    object qrymcCOD_MODALIDAD_TRA: TStringField
      FieldName = 'COD_MODALIDAD_TRA'
      Origin = 'SOFTEPS.AFILIADOS.COD_MODALIDAD_TRA'
      Size = 1
    end
    object qrymcCOD_MODALIDAD_TRA_1: TStringField
      FieldName = 'COD_MODALIDAD_TRA_1'
      Origin = 'SOFTEPS.AFILIADOS.COD_MODALIDAD_TRA'
      Size = 1
    end
    object qrymcSALARIO: TFloatField
      FieldName = 'SALARIO'
      Origin = 'SOFTEPS.MCAFILIADOS_COMPENSADOS.SALARIO'
    end
    object qrymcDIAS: TStringField
      FieldName = 'DIAS'
      Origin = 'SOFTEPS.MCAFILIADOS_COMPENSADOS.DIAS'
      Size = 2
    end
    object qrymcPERIODO_COMPENSADO: TStringField
      FieldName = 'PERIODO_COMPENSADO'
      Origin = 'SOFTEPS.MCDECLARACIONES.PERIODO_COMPENSADO'
      Size = 10
    end
    object qrymcFEC_CONSIGNACION: TDateTimeField
      FieldName = 'FEC_CONSIGNACION'
      Origin = 'SOFTEPS.MCAFILIADOS_COMPENSADOS.FEC_CONSIGNACION'
    end
    object qrymcCOD_MODALIDAD_TRA_2: TStringField
      FieldName = 'COD_MODALIDAD_TRA_2'
      Origin = 'SOFTEPS.AFILIADOS.COD_MODALIDAD_TRA'
      Size = 1
    end
    object qrymcCOTIZACION: TFloatField
      FieldName = 'COTIZACION'
      Origin = 'SOFTEPS.MCAFILIADOS_COMPENSADOS.COTIZACION'
    end
    object qrymcEMP_NUMERO_DOC: TStringField
      FieldName = 'EMP_NUMERO_DOC'
      Origin = 'SOFTEPS.MCAFILIADOS_COMPENSADOS.EMP_NUMERO_DOC'
      Size = 15
    end
    object qrymcEMP_TIPO_DOC: TStringField
      FieldName = 'EMP_TIPO_DOC'
      Origin = 'SOFTEPS.MCAFILIADOS_COMPENSADOS.EMP_TIPO_DOC'
      Size = 3
    end
    object qrymcFECHA_DECLARACION: TDateTimeField
      FieldName = 'FECHA_DECLARACION'
      Origin = 'SOFTEPS.MCDECLARACIONES.FECHA_DECLARACION'
    end
  end
  object qrymcanamul: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      'SELECT NUM_DECLARACION, CAUSA, CAUSA2, COUNT(*)'
      'FROM MULTIAFILIADOS'
      'WHERE NUM_DECLARACION > = :dec1 AND'
      'NUM_DECLARACION <= :dec2'
      'GROUP BY NUM_DECLARACION, CAUSA, CAUSA2')
    Left = 230
    Top = 12
    ParamData = <
      item
        DataType = ftFloat
        Name = 'dec1'
        ParamType = ptUnknown
        Value = 0
      end
      item
        DataType = ftFloat
        Name = 'dec2'
        ParamType = ptUnknown
        Value = 0
      end>
    object qrymcanamulNUM_DECLARACION: TFloatField
      FieldName = 'NUM_DECLARACION'
    end
    object qrymcanamulCAUSA: TStringField
      FieldName = 'CAUSA'
      Size = 30
    end
    object qrymcanamulCAUSA2: TStringField
      FieldName = 'CAUSA2'
      Size = 30
    end
    object qrymcanamulCOUNT: TFloatField
      FieldName = 'COUNT(*)'
    end
  end
  object qrymcanaglo: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      'SELECT NUM_DECLARACION, TIP_BENEFICIARIO, COUNT(*),'
      'SUM(DIAS), SUM(SALARIO), SUM(COTIZACION), '
      'SUM(VAL_DEDUCCION), SUM(VAL_UPC)'
      'FROM AFILIADOS_COMPENSADOS'
      'WHERE NUM_DECLARACION >= :dec'
      'AND NUM_DECLARACION <= :dec1'
      'AND ID_MULTIAFILIADO IS NOT NULL'
      'AND  EST_MULTIAFILIADO <> '#39'COM'#39
      'GROUP BY NUM_DECLARACION, TIP_BENEFICIARIO')
    Left = 230
    Top = 12
    ParamData = <
      item
        DataType = ftFloat
        Name = 'dec'
        ParamType = ptUnknown
        Value = 0
      end
      item
        DataType = ftFloat
        Name = 'dec1'
        ParamType = ptUnknown
        Value = 0
      end>
    object qrymcanagloNUM_DECLARACION: TFloatField
      FieldName = 'NUM_DECLARACION'
    end
    object qrymcanagloTIP_BENEFICIARIO: TStringField
      FieldName = 'TIP_BENEFICIARIO'
      Size = 1
    end
    object qrymcanagloCOUNT: TFloatField
      DisplayLabel = 'USUARIOS'
      FieldName = 'COUNT(*)'
    end
    object qrymcanagloSUMDIAS: TFloatField
      FieldName = 'SUM(DIAS)'
    end
    object qrymcanagloSUMSALARIO: TFloatField
      FieldName = 'SUM(SALARIO)'
    end
    object qrymcanagloSUMCOTIZACION: TFloatField
      FieldName = 'SUM(COTIZACION)'
    end
    object qrymcanagloSUMVAL_DEDUCCION: TFloatField
      FieldName = 'SUM(VAL_DEDUCCION)'
    end
    object qrymcanagloSUMVAL_UPC: TFloatField
      FieldName = 'SUM(VAL_UPC)'
    end
  end
  object qrymcdetanaglo: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      'SELECT *'
      'FROM AFILIADOS_COMPENSADOS'
      'WHERE NUM_DECLARACION >= :dec'
      'AND NUM_DECLARACION <= :dec1'
      'AND ID_MULTIAFILIADO IS NOT NULL'
      'AND  EST_MULTIAFILIADO <> '#39'COM'#39)
    Left = 230
    Top = 12
    ParamData = <
      item
        DataType = ftFloat
        Name = 'dec'
        ParamType = ptUnknown
        Value = 0
      end
      item
        DataType = ftFloat
        Name = 'dec1'
        ParamType = ptUnknown
        Value = 0
      end>
    object qrymcdetanagloAFI_NUMERO_DOC: TStringField
      FieldName = 'AFI_NUMERO_DOC'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.AFI_NUMERO_DOC'
      Size = 18
    end
    object qrymcdetanagloAFI_TIPO_DOC: TStringField
      FieldName = 'AFI_TIPO_DOC'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.AFI_TIPO_DOC'
      Size = 3
    end
    object qrymcdetanagloNUM_DECLARACION: TFloatField
      FieldName = 'NUM_DECLARACION'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.NUM_DECLARACION'
    end
    object qrymcdetanagloCOD_GRUPO_ETAREO: TFloatField
      FieldName = 'COD_GRUPO_ETAREO'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.COD_GRUPO_ETAREO'
    end
    object qrymcdetanagloTIP_UPC: TStringField
      FieldName = 'TIP_UPC'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.TIP_UPC'
      Size = 1
    end
    object qrymcdetanagloTIP_PAGO: TStringField
      FieldName = 'TIP_PAGO'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.TIP_PAGO'
      Size = 1
    end
    object qrymcdetanagloTIP_BENEFICIARIO: TStringField
      FieldName = 'TIP_BENEFICIARIO'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.TIP_BENEFICIARIO'
      Size = 1
    end
    object qrymcdetanagloDIAS: TStringField
      FieldName = 'DIAS'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.DIAS'
      Size = 2
    end
    object qrymcdetanagloSALARIO: TFloatField
      FieldName = 'SALARIO'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.SALARIO'
    end
    object qrymcdetanagloPORCENTAJE: TStringField
      FieldName = 'PORCENTAJE'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.PORCENTAJE'
      Size = 2
    end
    object qrymcdetanagloCOTIZACION: TFloatField
      FieldName = 'COTIZACION'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.COTIZACION'
    end
    object qrymcdetanagloVAL_DEDUCCION: TFloatField
      FieldName = 'VAL_DEDUCCION'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.VAL_DEDUCCION'
    end
    object qrymcdetanagloTIP_DEDUCCION: TStringField
      FieldName = 'TIP_DEDUCCION'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.TIP_DEDUCCION'
      Size = 3
    end
    object qrymcdetanagloVALOR_UPC: TFloatField
      FieldName = 'VALOR_UPC'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.VALOR_UPC'
    end
    object qrymcdetanagloTIP_AFILIADO: TStringField
      FieldName = 'TIP_AFILIADO'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.TIP_AFILIADO'
      Size = 1
    end
    object qrymcdetanagloFEC_CONSIGNACION: TDateTimeField
      FieldName = 'FEC_CONSIGNACION'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.FEC_CONSIGNACION'
    end
    object qrymcdetanagloCOD_PARENTESCO: TStringField
      FieldName = 'COD_PARENTESCO'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.COD_PARENTESCO'
      Size = 3
    end
    object qrymcdetanagloNUM_PLANILLA: TStringField
      FieldName = 'NUM_PLANILLA'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.NUM_PLANILLA'
      Size = 15
    end
    object qrymcdetanagloTIP_DOCUMENTO_COT: TStringField
      FieldName = 'TIP_DOCUMENTO_COT'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.TIP_DOCUMENTO_COT'
      Size = 3
    end
    object qrymcdetanagloNUM_DOCUMENTO_COT: TStringField
      FieldName = 'NUM_DOCUMENTO_COT'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.NUM_DOCUMENTO_COT'
      Size = 18
    end
    object qrymcdetanagloEMP_TIPO_DOC: TStringField
      FieldName = 'EMP_TIPO_DOC'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.EMP_TIPO_DOC'
      Size = 3
    end
    object qrymcdetanagloEMP_NUMERO_DOC: TStringField
      FieldName = 'EMP_NUMERO_DOC'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.EMP_NUMERO_DOC'
      Size = 15
    end
    object qrymcdetanagloID_MULTIAFILIADO: TStringField
      FieldName = 'ID_MULTIAFILIADO'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.ID_MULTIAFILIADO'
      Size = 9
    end
    object qrymcdetanagloCAUSA: TStringField
      FieldName = 'CAUSA'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.CAUSA'
      Size = 30
    end
    object qrymcdetanagloVAL_UPC: TFloatField
      FieldName = 'VAL_UPC'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.VAL_UPC'
    end
    object qrymcdetanagloEST_MULTIAFILIADO: TStringField
      FieldName = 'EST_MULTIAFILIADO'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.EST_MULTIAFILIADO'
      Size = 3
    end
    object qrymcdetanagloNUM_DECLARACION_ANT: TFloatField
      FieldName = 'NUM_DECLARACION_ANT'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.NUM_DECLARACION_ANT'
    end
  end
  object qrymcvaldec: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      'SELECT NUM_DECLARACION,NOM_DEPARTAMENTO, NOM_CIUDAD,'
      
        'TIP_BENEFICIARIO, COUNT(*),SUM(DIAS), SUM(SALARIO), SUM(COTIZACI' +
        'ON),'
      'SUM(VAL_DEDUCCION), SUM(VAL_UPC)'
      
        'FROM AFILIADOS_COMPENSADOS A, AFILIADOS B, DEPARTAMENTOS C, CIUD' +
        'ADES D'
      'WHERE AFI_TIPO_DOC = TIP_DOCUMENTO'
      'AND AFI_NUMERO_DOC = NUM_DOCUMENTO'
      'AND B.COD_DEPARTAMENTO_RES = C.COD_DEPARTAMENTO'
      'AND B.COD_DEPARTAMENTO_RES = D.COD_DEPARTAMENTO'
      'AND B.COD_CIUDAD_RES = D.COD_CIUDAD'
      'AND ID_MULTIAFILIADO IS NULL'
      'AND NUM_DECLARACION >= :dec1'
      'AND NUM_DECLARACION <= :dec2'
      
        'GROUP BY NUM_DECLARACION,NOM_DEPARTAMENTO, NOM_CIUDAD, TIP_BENEF' +
        'ICIARIO')
    Left = 230
    Top = 12
    ParamData = <
      item
        DataType = ftFloat
        Name = 'dec1'
        ParamType = ptUnknown
        Value = 0
      end
      item
        DataType = ftFloat
        Name = 'dec2'
        ParamType = ptUnknown
        Value = 0
      end>
    object qrymcvaldecNOM_DEPARTAMENTO: TStringField
      FieldName = 'NOM_DEPARTAMENTO'
      Size = 35
    end
    object qrymcvaldecNOM_CIUDAD: TStringField
      FieldName = 'NOM_CIUDAD'
      Size = 35
    end
    object qrymcvaldecTIP_BENEFICIARIO: TStringField
      FieldName = 'TIP_BENEFICIARIO'
      Size = 1
    end
    object qrymcvaldecCOUNT: TFloatField
      FieldName = 'COUNT(*)'
    end
    object qrymcvaldecSUMDIAS: TFloatField
      FieldName = 'SUM(DIAS)'
    end
    object qrymcvaldecSUMSALARIO: TFloatField
      FieldName = 'SUM(SALARIO)'
    end
    object qrymcvaldecSUMCOTIZACION: TFloatField
      FieldName = 'SUM(COTIZACION)'
    end
    object qrymcvaldecSUMVAL_DEDUCCION: TFloatField
      FieldName = 'SUM(VAL_DEDUCCION)'
    end
    object qrymcvaldecSUMVAL_UPC: TFloatField
      FieldName = 'SUM(VAL_UPC)'
    end
    object qrymcvaldecNUM_DECLARACION: TFloatField
      FieldName = 'NUM_DECLARACION'
    end
  end
  object qrymcdetvaldec: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      'SELECT *'
      
        'FROM AFILIADOS_COMPENSADOS A, AFILIADOS B, DEPARTAMENTOS C, CIUD' +
        'ADES D'
      'WHERE AFI_TIPO_DOC = TIP_DOCUMENTO'
      'AND AFI_NUMERO_DOC = NUM_DOCUMENTO'
      'AND B.COD_DEPARTAMENTO_RES = C.COD_DEPARTAMENTO'
      'AND B.COD_DEPARTAMENTO_RES = D.COD_DEPARTAMENTO'
      'AND B.COD_CIUDAD_RES = D.COD_CIUDAD'
      'AND ID_MULTIAFILIADO IS NULL'
      'AND NUM_DECLARACION >= :dec1'
      'AND NUM_DECLARACION <= :dec2'
      '')
    Left = 230
    Top = 8
    ParamData = <
      item
        DataType = ftString
        Name = 'dec1'
        ParamType = ptUnknown
        Value = 0
      end
      item
        DataType = ftFloat
        Name = 'dec2'
        ParamType = ptUnknown
        Value = 0
      end>
  end
  object qrydecfa1: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      'SELECT * '
      'FROM DECLARACIONES'
      'WHERE FECHA_DECLARACION = :fec'
      'AND NUM_DECLARACION IN (SELECT NUM_DECLARACION'
      'FROM AFILIADOS_COMPENSADOS WHERE TIP_BENEFICIARIO = '#39'A'#39
      'AND COD_GRUPO_ETAREO IN ('#39'4'#39','#39'5'#39','#39'6'#39'))')
    Left = 10
    Top = 78
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'fec'
        ParamType = ptUnknown
        Value = 0d
      end>
    object qrydecfa1NUM_DECLARACION: TFloatField
      FieldName = 'NUM_DECLARACION'
    end
    object qrydecfa1COT_TIPO_DECLA: TFloatField
      FieldName = 'COT_TIPO_DECLA'
    end
    object qrydecfa1PERIODO_COMPENSADO: TStringField
      FieldName = 'PERIODO_COMPENSADO'
      Size = 10
    end
    object qrydecfa1FECHA_DECLARACION: TDateTimeField
      FieldName = 'FECHA_DECLARACION'
    end
    object qrydecfa1TIPO_CIERRE: TStringField
      FieldName = 'TIPO_CIERRE'
      Size = 1
    end
    object qrydecfa1NUM_DECLARATIVA: TFloatField
      FieldName = 'NUM_DECLARATIVA'
    end
  end
  object qrymcbasesdepa1: TQuery
    DatabaseName = 'softeps'
    RequestLive = True
    SQL.Strings = (
      'SELECT * FROM FORMATOA1'
      'WHERE NUM_DECLARACION = :num_declaracion'
      '    AND COD_GRUPO_ETA = :cod_grupo_eta')
    Left = 70
    Top = 92
    ParamData = <
      item
        DataType = ftFloat
        Name = 'num_declaracion'
        ParamType = ptUnknown
        Value = 0
      end
      item
        DataType = ftString
        Name = 'cod_grupo_eta'
        ParamType = ptUnknown
        Value = ''
      end>
    object qrymcbasesdepa1NUM_DECLARACION: TFloatField
      FieldName = 'NUM_DECLARACION'
      Origin = 'SOFTEPS.FORMATOA1.NUM_DECLARACION'
    end
    object qrymcbasesdepa1COD_GRUPO_ETA: TFloatField
      FieldName = 'COD_GRUPO_ETA'
      Origin = 'SOFTEPS.FORMATOA1.COD_GRUPO_ETA'
    end
    object qrymcbasesdepa1TOT_AFI_ZN: TFloatField
      FieldName = 'TOT_AFI_ZN'
      Origin = 'SOFTEPS.FORMATOA1.TOT_AFI_ZN'
    end
    object qrymcbasesdepa1TOT_AFI_ZE: TFloatField
      FieldName = 'TOT_AFI_ZE'
      Origin = 'SOFTEPS.FORMATOA1.TOT_AFI_ZE'
    end
    object qrymcbasesdepa1TOT_UPC_ZN: TFloatField
      FieldName = 'TOT_UPC_ZN'
      Origin = 'SOFTEPS.FORMATOA1.TOT_UPC_ZN'
    end
    object qrymcbasesdepa1TOT_UPC_ZE: TFloatField
      FieldName = 'TOT_UPC_ZE'
      Origin = 'SOFTEPS.FORMATOA1.TOT_UPC_ZE'
    end
    object qrymcbasesdepa1TOT_UPC_ZND: TFloatField
      FieldName = 'TOT_UPC_ZND'
      Origin = 'SOFTEPS.FORMATOA1.TOT_UPC_ZND'
    end
    object qrymcbasesdepa1TOT_UPC_ZED: TFloatField
      FieldName = 'TOT_UPC_ZED'
      Origin = 'SOFTEPS.FORMATOA1.TOT_UPC_ZED'
    end
    object qrymcbasesdepa1TOT_UPC: TFloatField
      FieldName = 'TOT_UPC'
      Origin = 'SOFTEPS.FORMATOA1.TOT_UPC'
    end
    object qrymcbasesdepa1TOT_PYP: TFloatField
      FieldName = 'TOT_PYP'
      Origin = 'SOFTEPS.FORMATOA1.TOT_PYP'
    end
    object qrymcbasesdepa1TOT_SOL: TFloatField
      FieldName = 'TOT_SOL'
      Origin = 'SOFTEPS.FORMATOA1.TOT_SOL'
    end
  end
  object qryformatoa1: TQuery
    DatabaseName = 'softeps'
    RequestLive = True
    SQL.Strings = (
      'SELECT * FROM FORMATOA1')
    Left = 144
    Top = 160
    object qryformatoa1NUM_DECLARACION: TFloatField
      FieldName = 'NUM_DECLARACION'
      Origin = 'SOFTEPS.FORMATOA1.NUM_DECLARACION'
    end
    object qryformatoa1COD_GRUPO_ETA: TFloatField
      FieldName = 'COD_GRUPO_ETA'
      Origin = 'SOFTEPS.FORMATOA1.COD_GRUPO_ETA'
    end
    object qryformatoa1TOT_AFI_ZN: TFloatField
      FieldName = 'TOT_AFI_ZN'
      Origin = 'SOFTEPS.FORMATOA1.TOT_AFI_ZN'
    end
    object qryformatoa1TOT_AFI_ZE: TFloatField
      FieldName = 'TOT_AFI_ZE'
      Origin = 'SOFTEPS.FORMATOA1.TOT_AFI_ZE'
    end
    object qryformatoa1TOT_UPC_ZN: TFloatField
      FieldName = 'TOT_UPC_ZN'
      Origin = 'SOFTEPS.FORMATOA1.TOT_UPC_ZN'
    end
    object qryformatoa1TOT_UPC_ZE: TFloatField
      FieldName = 'TOT_UPC_ZE'
      Origin = 'SOFTEPS.FORMATOA1.TOT_UPC_ZE'
    end
    object qryformatoa1TOT_UPC_ZND: TFloatField
      FieldName = 'TOT_UPC_ZND'
      Origin = 'SOFTEPS.FORMATOA1.TOT_UPC_ZND'
    end
    object qryformatoa1TOT_UPC_ZED: TFloatField
      FieldName = 'TOT_UPC_ZED'
      Origin = 'SOFTEPS.FORMATOA1.TOT_UPC_ZED'
    end
    object qryformatoa1TOT_UPC: TFloatField
      FieldName = 'TOT_UPC'
      Origin = 'SOFTEPS.FORMATOA1.TOT_UPC'
    end
    object qryformatoa1TOT_PYP: TFloatField
      FieldName = 'TOT_PYP'
      Origin = 'SOFTEPS.FORMATOA1.TOT_PYP'
    end
    object qryformatoa1TOT_SOL: TFloatField
      FieldName = 'TOT_SOL'
      Origin = 'SOFTEPS.FORMATOA1.TOT_SOL'
    end
  end
  object qrymcdeclaracion2a1: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      'SELECT * FROM DECLARACIONES'
      'WHERE FECHA_DECLARACION = :fec1'
      'AND NUM_DECLARACION IN (SELECT NUM_DECLARACION FROM'
      'FORMATOA1)')
    Left = 62
    Top = 164
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'fec1'
        ParamType = ptUnknown
        Value = 0d
      end>
    object qrymcdeclaracion2a1NUM_DECLARACION: TFloatField
      FieldName = 'NUM_DECLARACION'
    end
    object qrymcdeclaracion2a1COT_TIPO_DECLA: TFloatField
      FieldName = 'COT_TIPO_DECLA'
    end
    object qrymcdeclaracion2a1PERIODO_COMPENSADO: TStringField
      FieldName = 'PERIODO_COMPENSADO'
      Size = 10
    end
    object qrymcdeclaracion2a1FECHA_DECLARACION: TDateTimeField
      FieldName = 'FECHA_DECLARACION'
    end
    object qrymcdeclaracion2a1TIPO_CIERRE: TStringField
      FieldName = 'TIPO_CIERRE'
      Size = 1
    end
    object qrymcdeclaracion2a1NUM_DECLARATIVA: TFloatField
      FieldName = 'NUM_DECLARATIVA'
    end
  end
  object qrymcetabasa1: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      'SELECT * FROM FORMATOA1'
      'WHERE NUM_DECLARACION = :dec'
      ' AND COD_GRUPO_ETA  = :eta')
    Left = 18
    Top = 212
    ParamData = <
      item
        DataType = ftFloat
        Name = 'dec'
        ParamType = ptUnknown
        Value = 0
      end
      item
        DataType = ftString
        Name = 'eta'
        ParamType = ptUnknown
        Value = ''
      end>
    object qrymcetabasa1NUM_DECLARACION: TFloatField
      FieldName = 'NUM_DECLARACION'
      Origin = 'SOFTEPS.FORMATOA1.NUM_DECLARACION'
    end
    object qrymcetabasa1COD_GRUPO_ETA: TFloatField
      FieldName = 'COD_GRUPO_ETA'
      Origin = 'SOFTEPS.FORMATOA1.COD_GRUPO_ETA'
    end
    object qrymcetabasa1TOT_AFI_ZN: TFloatField
      FieldName = 'TOT_AFI_ZN'
      Origin = 'SOFTEPS.FORMATOA1.TOT_AFI_ZN'
    end
    object qrymcetabasa1TOT_AFI_ZE: TFloatField
      FieldName = 'TOT_AFI_ZE'
      Origin = 'SOFTEPS.FORMATOA1.TOT_AFI_ZE'
    end
    object qrymcetabasa1TOT_UPC_ZN: TFloatField
      FieldName = 'TOT_UPC_ZN'
      Origin = 'SOFTEPS.FORMATOA1.TOT_UPC_ZN'
    end
    object qrymcetabasa1TOT_UPC_ZE: TFloatField
      FieldName = 'TOT_UPC_ZE'
      Origin = 'SOFTEPS.FORMATOA1.TOT_UPC_ZE'
    end
    object qrymcetabasa1TOT_UPC_ZND: TFloatField
      FieldName = 'TOT_UPC_ZND'
      Origin = 'SOFTEPS.FORMATOA1.TOT_UPC_ZND'
    end
    object qrymcetabasa1TOT_UPC_ZED: TFloatField
      FieldName = 'TOT_UPC_ZED'
      Origin = 'SOFTEPS.FORMATOA1.TOT_UPC_ZED'
    end
    object qrymcetabasa1TOT_UPC: TFloatField
      FieldName = 'TOT_UPC'
      Origin = 'SOFTEPS.FORMATOA1.TOT_UPC'
    end
    object qrymcetabasa1TOT_PYP: TFloatField
      FieldName = 'TOT_PYP'
      Origin = 'SOFTEPS.FORMATOA1.TOT_PYP'
    end
    object qrymcetabasa1TOT_SOL: TFloatField
      FieldName = 'TOT_SOL'
      Origin = 'SOFTEPS.FORMATOA1.TOT_SOL'
    end
  end
  object qryestadosdec: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      'SELECT * FROM ESTADOS_DECLARACIONES'
      'ORDER BY NUM_DECLARACION')
    Left = 46
    Top = 302
    object qryestadosdecNUM_DECLARACION: TFloatField
      FieldName = 'NUM_DECLARACION'
      Origin = 'SOFTEPS.ESTADOS_DECLARACIONES.NUM_DECLARACION'
    end
    object qryestadosdecNUM_RADICACION: TFloatField
      FieldName = 'NUM_RADICACION'
      Origin = 'SOFTEPS.ESTADOS_DECLARACIONES.NUM_RADICACION'
    end
    object qryestadosdecFEC_RADICACION: TDateTimeField
      FieldName = 'FEC_RADICACION'
      Origin = 'SOFTEPS.ESTADOS_DECLARACIONES.FEC_RADICACION'
    end
    object qryestadosdecESTADO: TStringField
      FieldName = 'ESTADO'
      Origin = 'SOFTEPS.ESTADOS_DECLARACIONES.ESTADO'
    end
    object qryestadosdecFEC_ESTADO: TDateTimeField
      FieldName = 'FEC_ESTADO'
      Origin = 'SOFTEPS.ESTADOS_DECLARACIONES.FEC_ESTADO'
    end
  end
  object qrytipodec: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      'SELECT * '
      'FROM TIPO_DECLARACIONES'
      'ORDER BY NIVEL')
    Left = 84
    Top = 258
    object qrytipodecTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'SOFTEPS.TIPO_DECLARACIONES.TIPO'
    end
    object qrytipodecNIVEL: TFloatField
      FieldName = 'NIVEL'
      Origin = 'SOFTEPS.TIPO_DECLARACIONES.NIVEL'
    end
  end
  object qrybusdec: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      'SELECT * FROM DECLARACIONES'
      'WHERE NUM_DECLARACION = :dec')
    Left = 122
    Top = 290
    ParamData = <
      item
        DataType = ftFloat
        Name = 'dec'
        ParamType = ptUnknown
        Value = 0
      end>
    object qrybusdecNUM_DECLARACION: TFloatField
      FieldName = 'NUM_DECLARACION'
      Origin = 'SOFTEPS.DECLARACIONES.NUM_DECLARACION'
    end
    object qrybusdecCOT_TIPO_DECLA: TFloatField
      FieldName = 'COT_TIPO_DECLA'
      Origin = 'SOFTEPS.DECLARACIONES.COT_TIPO_DECLA'
    end
    object qrybusdecPERIODO_COMPENSADO: TStringField
      FieldName = 'PERIODO_COMPENSADO'
      Origin = 'SOFTEPS.DECLARACIONES.PERIODO_COMPENSADO'
      Size = 10
    end
    object qrybusdecFECHA_DECLARACION: TDateTimeField
      FieldName = 'FECHA_DECLARACION'
      Origin = 'SOFTEPS.DECLARACIONES.FECHA_DECLARACION'
    end
    object qrybusdecTIPO_CIERRE: TStringField
      FieldName = 'TIPO_CIERRE'
      Origin = 'SOFTEPS.DECLARACIONES.TIPO_CIERRE'
      Size = 1
    end
    object qrybusdecNUM_DECLARATIVA: TFloatField
      FieldName = 'NUM_DECLARATIVA'
      Origin = 'SOFTEPS.DECLARACIONES.NUM_DECLARATIVA'
    end
  end
  object qryestdec: TQuery
    DatabaseName = 'softeps'
    RequestLive = True
    SQL.Strings = (
      'SELECT * FROM ESTADOS_DECLARACIONES'
      'WHERE NUM_DECLARACION = :dec')
    Left = 200
    Top = 244
    ParamData = <
      item
        DataType = ftFloat
        Name = 'dec'
        ParamType = ptUnknown
        Value = 0
      end>
    object qryestdecNUM_DECLARACION: TFloatField
      FieldName = 'NUM_DECLARACION'
      Origin = 'SOFTEPS.ESTADOS_DECLARACIONES.NUM_DECLARACION'
    end
    object qryestdecNUM_RADICACION: TFloatField
      FieldName = 'NUM_RADICACION'
      Origin = 'SOFTEPS.ESTADOS_DECLARACIONES.NUM_RADICACION'
    end
    object qryestdecFEC_RADICACION: TDateTimeField
      FieldName = 'FEC_RADICACION'
      Origin = 'SOFTEPS.ESTADOS_DECLARACIONES.FEC_RADICACION'
    end
    object qryestdecESTADO: TStringField
      FieldName = 'ESTADO'
      Origin = 'SOFTEPS.ESTADOS_DECLARACIONES.ESTADO'
    end
    object qryestdecFEC_ESTADO: TDateTimeField
      FieldName = 'FEC_ESTADO'
      Origin = 'SOFTEPS.ESTADOS_DECLARACIONES.FEC_ESTADO'
    end
  end
end
