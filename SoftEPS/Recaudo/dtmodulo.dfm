object DataModule1: TDataModule1
  OldCreateOrder = True
  Left = 63
  Top = 178
  Height = 394
  Width = 725
  object dtsautoliquidacion: TDataSource
    DataSet = qryautoliquidacion
    Left = 20
    Top = 202
  end
  object dtsdetalleauto: TDataSource
    DataSet = qrydetalle
    Left = 102
    Top = 202
  end
  object qryempresas: TQuery
    ObjectView = True
    AutoRefresh = True
    DatabaseName = 'SOFTEPS'
    SQL.Strings = (
      'select  * '
      'from dbo.empresas '
      'where tip_documento = :ptipo and'
      'num_documento = :pnumero')
    Left = 182
    Top = 12
    ParamData = <
      item
        DataType = ftString
        Name = 'ptipo'
        ParamType = ptUnknown
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'pnumero'
        ParamType = ptUnknown
        Value = '0'
      end>
    object qryempresasTIP_DOCUMENTO: TStringField
      FieldName = 'TIP_DOCUMENTO'
      Origin = 'SOFTEPS.EMPRESAS.TIP_DOCUMENTO'
      Size = 3
    end
    object qryempresasNUM_DOCUMENTO: TStringField
      FieldName = 'NUM_DOCUMENTO'
      Origin = 'SOFTEPS.EMPRESAS.NUM_DOCUMENTO'
      Size = 18
    end
    object qryempresasCOD_SUCURSAL: TStringField
      FieldName = 'COD_SUCURSAL'
      Origin = 'SOFTEPS.EMPRESAS.COD_SUCURSAL'
      Size = 2
    end
    object qryempresasCOD_ACTIVIDAD_ECO: TStringField
      FieldName = 'COD_ACTIVIDAD_ECO'
      Origin = 'SOFTEPS.EMPRESAS.COD_ACTIVIDAD_ECO'
      Size = 4
    end
    object qryempresasCOD_ESTADO: TStringField
      FieldName = 'COD_ESTADO'
      Origin = 'SOFTEPS.EMPRESAS.COD_ESTADO'
      Size = 2
    end
    object qryempresasCOD_OFICINA: TStringField
      FieldName = 'COD_OFICINA'
      Origin = 'SOFTEPS.EMPRESAS.COD_OFICINA'
      Size = 3
    end
    object qryempresasCOD_REGIONAL: TStringField
      FieldName = 'COD_REGIONAL'
      Origin = 'SOFTEPS.EMPRESAS.COD_REGIONAL'
      Size = 3
    end
    object qryempresasTIP_DOCUMENTO_ARP: TStringField
      FieldName = 'TIP_DOCUMENTO_ARP'
      Origin = 'SOFTEPS.EMPRESAS.TIP_DOCUMENTO_ARP'
      Size = 3
    end
    object qryempresasNUM_DOCUMENTO_ARP: TStringField
      FieldName = 'NUM_DOCUMENTO_ARP'
      Origin = 'SOFTEPS.EMPRESAS.NUM_DOCUMENTO_ARP'
      Size = 18
    end
    object qryempresasCOD_DEPARTAMENTO: TStringField
      FieldName = 'COD_DEPARTAMENTO'
      Origin = 'SOFTEPS.EMPRESAS.COD_DEPARTAMENTO'
      Size = 2
    end
    object qryempresasCOD_CIUDAD: TStringField
      FieldName = 'COD_CIUDAD'
      Origin = 'SOFTEPS.EMPRESAS.COD_CIUDAD'
      Size = 3
    end
    object qryempresasTIP_APORTANTE: TStringField
      FieldName = 'TIP_APORTANTE'
      Origin = 'SOFTEPS.EMPRESAS.TIP_APORTANTE'
      Size = 1
    end
    object qryempresasNOM_EMPRESA: TStringField
      FieldName = 'NOM_EMPRESA'
      Origin = 'SOFTEPS.EMPRESAS.NOM_EMPRESA'
      Size = 100
    end
    object qryempresasFEC_AFILIACION: TDateTimeField
      FieldName = 'FEC_AFILIACION'
      Origin = 'SOFTEPS.EMPRESAS.FEC_AFILIACION'
    end
    object qryempresasDIR_EMPRESA: TStringField
      FieldName = 'DIR_EMPRESA'
      Origin = 'SOFTEPS.EMPRESAS.DIR_EMPRESA'
      Size = 50
    end
    object qryempresasTEL_EMPRESA: TStringField
      FieldName = 'TEL_EMPRESA'
      Origin = 'SOFTEPS.EMPRESAS.TEL_EMPRESA'
    end
    object qryempresasTEL_EMPRESA2: TStringField
      FieldName = 'TEL_EMPRESA2'
      Origin = 'SOFTEPS.EMPRESAS.TEL_EMPRESA2'
    end
    object qryempresasURL_EMPRESA: TStringField
      FieldName = 'URL_EMPRESA'
      Origin = 'SOFTEPS.EMPRESAS.URL_EMPRESA'
    end
    object qryempresasEML_EMPRESA: TStringField
      FieldName = 'EML_EMPRESA'
      Origin = 'SOFTEPS.EMPRESAS.EML_EMPRESA'
      Size = 50
    end
    object qryempresasTOT_EMPLEADOS: TStringField
      FieldName = 'TOT_EMPLEADOS'
      Origin = 'SOFTEPS.EMPRESAS.TOT_EMPLEADOS'
      Size = 10
    end
    object qryempresasCOD_TIPO_PER: TStringField
      FieldName = 'COD_TIPO_PER'
      Origin = 'SOFTEPS.EMPRESAS.COD_TIPO_PER'
      Size = 1
    end
    object qryempresasCOD_ZONA: TStringField
      FieldName = 'COD_ZONA'
      Origin = 'SOFTEPS.EMPRESAS.COD_ZONA'
      Size = 3
    end
    object qryempresasCOD_DEPARTAMENTO_PAG: TStringField
      FieldName = 'COD_DEPARTAMENTO_PAG'
      Origin = 'SOFTEPS.EMPRESAS.COD_DEPARTAMENTO_PAG'
      Size = 2
    end
    object qryempresasCOD_CIUDAD_PAG: TStringField
      FieldName = 'COD_CIUDAD_PAG'
      Origin = 'SOFTEPS.EMPRESAS.COD_CIUDAD_PAG'
      Size = 3
    end
    object qryempresasCOD_PRESENTACION_COM: TStringField
      FieldName = 'COD_PRESENTACION_COM'
      Origin = 'SOFTEPS.EMPRESAS.COD_PRESENTACION_COM'
      Size = 1
    end
    object qryempresasCOD_TIP_EMPRESA: TStringField
      FieldName = 'COD_TIP_EMPRESA'
      Origin = 'SOFTEPS.EMPRESAS.COD_TIP_EMPRESA'
      Size = 1
    end
    object qryempresasTIP_DOCUMENTO_PEN: TStringField
      FieldName = 'TIP_DOCUMENTO_PEN'
      Origin = 'SOFTEPS.EMPRESAS.TIP_DOCUMENTO_PEN'
      Size = 3
    end
    object qryempresasNUM_DOCUMENTO_PEN: TStringField
      FieldName = 'NUM_DOCUMENTO_PEN'
      Origin = 'SOFTEPS.EMPRESAS.NUM_DOCUMENTO_PEN'
      Size = 18
    end
  end
  object qrydetalle: TQuery
    ObjectView = True
    AutoRefresh = True
    DatabaseName = 'SOFTEPS'
    FilterOptions = [foCaseInsensitive, foNoPartialCompare]
    RequestLive = True
    SQL.Strings = (
      'SELECT * '
      'FROM  DBO.DET_PLANILLA_AUTOLIQUIDACION'
      '')
    Left = 108
    Top = 16
    object qrydetalleNUM_PLANILLA: TStringField
      FieldName = 'NUM_PLANILLA'
      Origin = 'SOFTEPS.DET_PLANILLA_AUTOLIQUIDACION.NUM_PLANILLA'
      Size = 15
    end
    object qrydetalleAFI_TIPO_DOC: TStringField
      FieldName = 'AFI_TIPO_DOC'
      Origin = 'SOFTEPS.DET_PLANILLA_AUTOLIQUIDACION.AFI_TIPO_DOC'
      Size = 3
    end
    object qrydetalleAFI_NUMERO_DOC: TStringField
      FieldName = 'AFI_NUMERO_DOC'
      Origin = 'SOFTEPS.DET_PLANILLA_AUTOLIQUIDACION.AFI_NUMERO_DOC'
      Size = 18
    end
    object qrydetalleNOV_ING: TStringField
      FieldName = 'NOV_ING'
      Origin = 'SOFTEPS.DET_PLANILLA_AUTOLIQUIDACION.NOV_ING'
      Size = 1
    end
    object qrydetalleNOV_RET: TStringField
      FieldName = 'NOV_RET'
      Origin = 'SOFTEPS.DET_PLANILLA_AUTOLIQUIDACION.NOV_RET'
      Size = 1
    end
    object qrydetalleNOV_TDA: TStringField
      FieldName = 'NOV_TDA'
      Origin = 'SOFTEPS.DET_PLANILLA_AUTOLIQUIDACION.NOV_TDA'
      Size = 1
    end
    object qrydetalleNOV_TAA: TStringField
      FieldName = 'NOV_TAA'
      Origin = 'SOFTEPS.DET_PLANILLA_AUTOLIQUIDACION.NOV_TAA'
      Size = 1
    end
    object qrydetalleNOV_VSP: TStringField
      FieldName = 'NOV_VSP'
      Origin = 'SOFTEPS.DET_PLANILLA_AUTOLIQUIDACION.NOV_VSP'
      Size = 1
    end
    object qrydetalleNOV_VST: TStringField
      FieldName = 'NOV_VST'
      Origin = 'SOFTEPS.DET_PLANILLA_AUTOLIQUIDACION.NOV_VST'
      Size = 1
    end
    object qrydetalleNOV_SLN: TStringField
      FieldName = 'NOV_SLN'
      Origin = 'SOFTEPS.DET_PLANILLA_AUTOLIQUIDACION.NOV_SLN'
      Size = 1
    end
    object qrydetalleNOV_IGE: TStringField
      FieldName = 'NOV_IGE'
      Origin = 'SOFTEPS.DET_PLANILLA_AUTOLIQUIDACION.NOV_IGE'
      Size = 1
    end
    object qrydetalleNOV_LMA: TStringField
      FieldName = 'NOV_LMA'
      Origin = 'SOFTEPS.DET_PLANILLA_AUTOLIQUIDACION.NOV_LMA'
      Size = 1
    end
    object qrydetalleNOV_VAC: TStringField
      FieldName = 'NOV_VAC'
      Origin = 'SOFTEPS.DET_PLANILLA_AUTOLIQUIDACION.NOV_VAC'
      Size = 1
    end
    object qrydetalleDIA_COTIZADOS: TStringField
      FieldName = 'DIA_COTIZADOS'
      Origin = 'SOFTEPS.DET_PLANILLA_AUTOLIQUIDACION.DIA_COTIZADOS'
      Size = 2
    end
    object qrydetalleSAL_BASE: TFloatField
      FieldName = 'SAL_BASE'
      Origin = 'SOFTEPS.DET_PLANILLA_AUTOLIQUIDACION.SAL_BASE'
    end
    object qrydetalleVAL_NETO_NOV: TFloatField
      FieldName = 'VAL_NETO_NOV'
      Origin = 'SOFTEPS.DET_PLANILLA_AUTOLIQUIDACION.VAL_NETO_NOV'
    end
    object qrydetalleING_BASE_COT: TFloatField
      FieldName = 'ING_BASE_COT'
      Origin = 'SOFTEPS.DET_PLANILLA_AUTOLIQUIDACION.ING_BASE_COT'
    end
    object qrydetalleCOT_OBLIGATORIA: TFloatField
      FieldName = 'COT_OBLIGATORIA'
      Origin = 'SOFTEPS.DET_PLANILLA_AUTOLIQUIDACION.COT_OBLIGATORIA'
    end
    object qrydetalleNUM_INCAPACIDAD_EGR: TStringField
      FieldName = 'NUM_INCAPACIDAD_EGR'
      Origin = 'SOFTEPS.DET_PLANILLA_AUTOLIQUIDACION.NUM_INCAPACIDAD_EGR'
      Size = 10
    end
    object qrydetalleVAL_INCAPACIDAD_EGR: TFloatField
      FieldName = 'VAL_INCAPACIDAD_EGR'
      Origin = 'SOFTEPS.DET_PLANILLA_AUTOLIQUIDACION.VAL_INCAPACIDAD_EGR'
    end
    object qrydetalleNUM_LICENCIA_MAT: TStringField
      FieldName = 'NUM_LICENCIA_MAT'
      Origin = 'SOFTEPS.DET_PLANILLA_AUTOLIQUIDACION.NUM_LICENCIA_MAT'
      Size = 10
    end
    object qrydetalleVAL_LICENCIA_MAT: TFloatField
      FieldName = 'VAL_LICENCIA_MAT'
      Origin = 'SOFTEPS.DET_PLANILLA_AUTOLIQUIDACION.VAL_LICENCIA_MAT'
    end
    object qrydetalleVAL_UPC_ADI: TFloatField
      FieldName = 'VAL_UPC_ADI'
      Origin = 'SOFTEPS.DET_PLANILLA_AUTOLIQUIDACION.VAL_UPC_ADI'
    end
    object qrydetalleVAL_TOTAL_COT: TFloatField
      FieldName = 'VAL_TOTAL_COT'
      Origin = 'SOFTEPS.DET_PLANILLA_AUTOLIQUIDACION.VAL_TOTAL_COT'
    end
    object qrydetalleDET_ESTADO: TStringField
      FieldName = 'DET_ESTADO'
      Origin = 'SOFTEPS.DET_PLANILLA_AUTOLIQUIDACION.DET_ESTADO'
      Size = 3
    end
    object qrydetallePER_COTIZACION: TStringField
      FieldName = 'PER_COTIZACION'
      Origin = 'SOFTEPS.DET_PLANILLA_AUTOLIQUIDACION.PER_COTIZACION'
      Size = 7
    end
    object qrydetallePER_PRESENTACION: TStringField
      FieldName = 'PER_PRESENTACION'
      Origin = 'SOFTEPS.DET_PLANILLA_AUTOLIQUIDACION.PER_PRESENTACION'
      Size = 7
    end
    object qrydetalleCOD_OFICINA: TStringField
      FieldName = 'COD_OFICINA'
      Origin = 'SOFTEPS.DET_PLANILLA_AUTOLIQUIDACION.COD_OFICINA'
      Size = 3
    end
    object qrydetalleNUM_DECLARACION: TFloatField
      FieldName = 'NUM_DECLARACION'
      Origin = 'SOFTEPS.DET_PLANILLA_AUTOLIQUIDACION.NUM_DECLARACION'
    end
  end
  object qryautoliquidacion: TQuery
    ObjectView = True
    AutoRefresh = True
    DatabaseName = 'SOFTEPS'
    RequestLive = True
    SQL.Strings = (
      'SELECT * FROM DBO. AUTOLIQUIDACION')
    Left = 34
    Top = 10
    object qryautoliquidacionNUM_PLANILLA: TStringField
      FieldName = 'NUM_PLANILLA'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.NUM_PLANILLA'
      Size = 15
    end
    object qryautoliquidacionEMP_TIPO_DOC: TStringField
      FieldName = 'EMP_TIPO_DOC'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.EMP_TIPO_DOC'
      Size = 3
    end
    object qryautoliquidacionEMP_NUMERO_DOC: TStringField
      FieldName = 'EMP_NUMERO_DOC'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.EMP_NUMERO_DOC'
      Size = 18
    end
    object qryautoliquidacionCOD_SUCURSAL: TStringField
      FieldName = 'COD_SUCURSAL'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.COD_SUCURSAL'
      Size = 2
    end
    object qryautoliquidacionTIP_DECLARACION: TStringField
      FieldName = 'TIP_DECLARACION'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.TIP_DECLARACION'
      Size = 1
    end
    object qryautoliquidacionFEC_PAGO: TDateTimeField
      FieldName = 'FEC_PAGO'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.FEC_PAGO'
    end
    object qryautoliquidacionNUM_PLANILLA_CORR: TStringField
      FieldName = 'NUM_PLANILLA_CORR'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.NUM_PLANILLA_CORR'
      Size = 15
    end
    object qryautoliquidacionPER_COTIZACION: TStringField
      FieldName = 'PER_COTIZACION'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.PER_COTIZACION'
      Size = 7
    end
    object qryautoliquidacionPER_PRESENTACION: TStringField
      FieldName = 'PER_PRESENTACION'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.PER_PRESENTACION'
      Size = 7
    end
    object qryautoliquidacionTOT_PLANILLA: TFloatField
      FieldName = 'TOT_PLANILLA'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.TOT_PLANILLA'
    end
    object qryautoliquidacionTOT_APORTE_PER: TFloatField
      FieldName = 'TOT_APORTE_PER'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.TOT_APORTE_PER'
    end
    object qryautoliquidacionTOT_INCAPACIDAD: TFloatField
      FieldName = 'TOT_INCAPACIDAD'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.TOT_INCAPACIDAD'
    end
    object qryautoliquidacionTOT_LICENCIAS: TFloatField
      FieldName = 'TOT_LICENCIAS'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.TOT_LICENCIAS'
    end
    object qryautoliquidacionTOT_APORTE: TFloatField
      FieldName = 'TOT_APORTE'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.TOT_APORTE'
    end
    object qryautoliquidacionINT_MORA: TFloatField
      FieldName = 'INT_MORA'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.INT_MORA'
    end
    object qryautoliquidacionTOT_APORTE_MMORA: TFloatField
      FieldName = 'TOT_APORTE_MMORA'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.TOT_APORTE_MMORA'
    end
    object qryautoliquidacionTOT_SALDO_FAV: TFloatField
      FieldName = 'TOT_SALDO_FAV'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.TOT_SALDO_FAV'
    end
    object qryautoliquidacionTOT_UPC: TFloatField
      FieldName = 'TOT_UPC'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.TOT_UPC'
    end
    object qryautoliquidacionTOT_PAGADO: TFloatField
      FieldName = 'TOT_PAGADO'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.TOT_PAGADO'
    end
    object qryautoliquidacionCOD_BANCO: TStringField
      FieldName = 'COD_BANCO'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.COD_BANCO'
      Size = 3
    end
    object qryautoliquidacionNUM_CUENTA: TStringField
      FieldName = 'NUM_CUENTA'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.NUM_CUENTA'
    end
    object qryautoliquidacionVAL_EFECTIVO: TFloatField
      FieldName = 'VAL_EFECTIVO'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.VAL_EFECTIVO'
    end
    object qryautoliquidacionVAL_CHEQUE: TFloatField
      FieldName = 'VAL_CHEQUE'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.VAL_CHEQUE'
    end
    object qryautoliquidacionEST_PLANILLA: TStringField
      FieldName = 'EST_PLANILLA'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.EST_PLANILLA'
      Size = 3
    end
    object qryautoliquidacionCOD_REGIONAL: TStringField
      FieldName = 'COD_REGIONAL'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.COD_REGIONAL'
      Size = 3
    end
    object qryautoliquidacionCOD_OFICINA: TStringField
      FieldName = 'COD_OFICINA'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.COD_OFICINA'
      Size = 3
    end
    object qryautoliquidacionNUM_DECLARACION: TFloatField
      FieldName = 'NUM_DECLARACION'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.NUM_DECLARACION'
    end
    object qryautoliquidacionCRU_CONCILIACION: TStringField
      FieldName = 'CRU_CONCILIACION'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.CRU_CONCILIACION'
      Size = 1
    end
    object qryautoliquidacionFEC_DIGITACION: TDateTimeField
      FieldName = 'FEC_DIGITACION'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.FEC_DIGITACION'
    end
    object qryautoliquidacionTIP_DOC_USUARIO: TStringField
      FieldName = 'TIP_DOC_USUARIO'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.TIP_DOC_USUARIO'
      Size = 3
    end
    object qryautoliquidacionNUM_DOC_USUARIO: TStringField
      FieldName = 'NUM_DOC_USUARIO'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.NUM_DOC_USUARIO'
      Size = 18
    end
    object qryautoliquidacionFEC_MODIFICACION: TDateTimeField
      FieldName = 'FEC_MODIFICACION'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.FEC_MODIFICACION'
    end
    object qryautoliquidacionNO_INCAP_PAG: TStringField
      FieldName = 'NO_INCAP_PAG'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.NO_INCAP_PAG'
      Size = 30
    end
    object qryautoliquidacionVAL_INCAP_PAG: TFloatField
      FieldName = 'VAL_INCAP_PAG'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.VAL_INCAP_PAG'
    end
    object qryautoliquidacionNO_LICEN_PAG: TStringField
      FieldName = 'NO_LICEN_PAG'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.NO_LICEN_PAG'
      Size = 30
    end
    object qryautoliquidacionVAL_LICEN_PAG: TFloatField
      FieldName = 'VAL_LICEN_PAG'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.VAL_LICEN_PAG'
    end
    object qryautoliquidacionNO_MESES_MORA: TFloatField
      FieldName = 'NO_MESES_MORA'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.NO_MESES_MORA'
    end
    object qryautoliquidacionNO_PLANINILLA_ANT: TStringField
      FieldName = 'NO_PLANINILLA_ANT'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.NO_PLANINILLA_ANT'
      Size = 15
    end
    object qryautoliquidacionVAL_NETO_UPC: TFloatField
      FieldName = 'VAL_NETO_UPC'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.VAL_NETO_UPC'
    end
    object qryautoliquidacionVAL_INTERES_UPC: TFloatField
      FieldName = 'VAL_INTERES_UPC'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.VAL_INTERES_UPC'
    end
    object qryautoliquidacionVAL_APORMASINT_UPC: TFloatField
      FieldName = 'VAL_APORMASINT_UPC'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.VAL_APORMASINT_UPC'
    end
    object qryautoliquidacionVAL_SALFAVOR_UPC: TFloatField
      FieldName = 'VAL_SALFAVOR_UPC'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.VAL_SALFAVOR_UPC'
    end
    object qryautoliquidacionVAL_PAGO_UPC: TFloatField
      FieldName = 'VAL_PAGO_UPC'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.VAL_PAGO_UPC'
    end
  end
  object dtsempresas: TDataSource
    DataSet = qryempresas
    Left = 174
    Top = 203
  end
  object qryafiliados: TQuery
    DatabaseName = 'SOFTEPS'
    FilterOptions = [foCaseInsensitive, foNoPartialCompare]
    SQL.Strings = (
      
        'select  tip_documento_emp, num_documento_emp,tip_documento_afi, ' +
        'num_documento_afi,pri_apellido,seg_apellido,pri_nombre,seg_nombr' +
        'e,val_sueldo_afil,fec_ingreso_uni,fec_egreso_uni,afiliados_empre' +
        'sas.cod_estado,fec_nacimiento,cod_sexo,cod_modalidad_tra'
      'from dbo.afiliados_empresas,dbo.afiliados '
      'where tip_documento_afi = tip_documento and'
      'num_documento_afi = num_documento AND'
      'tip_documento_afi = :ptipo and'
      'num_documento_afi = :pnumero')
    Left = 248
    Top = 12
    ParamData = <
      item
        DataType = ftString
        Name = 'ptipo'
        ParamType = ptUnknown
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'pnumero'
        ParamType = ptUnknown
        Value = '0'
      end>
    object qryafiliadosTIP_DOCUMENTO_EMP: TStringField
      FieldName = 'TIP_DOCUMENTO_EMP'
      FixedChar = True
      Size = 3
    end
    object qryafiliadosNUM_DOCUMENTO_EMP: TStringField
      FieldName = 'NUM_DOCUMENTO_EMP'
      Size = 18
    end
    object qryafiliadosTIP_DOCUMENTO_AFI: TStringField
      FieldName = 'TIP_DOCUMENTO_AFI'
      FixedChar = True
      Size = 3
    end
    object qryafiliadosNUM_DOCUMENTO_AFI: TStringField
      FieldName = 'NUM_DOCUMENTO_AFI'
      Size = 18
    end
    object qryafiliadosPRI_APELLIDO: TStringField
      FieldName = 'PRI_APELLIDO'
      Size = 25
    end
    object qryafiliadosSEG_APELLIDO: TStringField
      FieldName = 'SEG_APELLIDO'
      Size = 25
    end
    object qryafiliadosPRI_NOMBRE: TStringField
      FieldName = 'PRI_NOMBRE'
      Size = 25
    end
    object qryafiliadosSEG_NOMBRE: TStringField
      FieldName = 'SEG_NOMBRE'
      Size = 25
    end
    object qryafiliadosVAL_SUELDO_AFIL: TFloatField
      FieldName = 'VAL_SUELDO_AFIL'
    end
    object qryafiliadosFEC_INGRESO_UNI: TDateTimeField
      FieldName = 'FEC_INGRESO_UNI'
    end
    object qryafiliadosFEC_EGRESO_UNI: TDateTimeField
      FieldName = 'FEC_EGRESO_UNI'
    end
    object qryafiliadosCOD_ESTADO: TStringField
      FieldName = 'COD_ESTADO'
      FixedChar = True
      Size = 2
    end
    object qryafiliadosFEC_NACIMIENTO: TDateTimeField
      FieldName = 'FEC_NACIMIENTO'
    end
    object qryafiliadosCOD_SEXO: TStringField
      FieldName = 'COD_SEXO'
      FixedChar = True
      Size = 1
    end
    object qryafiliadosCOD_MODALIDAD_TRA: TStringField
      FieldName = 'COD_MODALIDAD_TRA'
      FixedChar = True
      Size = 1
    end
  end
  object dtsafilados: TDataSource
    DataSet = qryafiliados
    Left = 244
    Top = 204
  end
  object dtsdocumento: TDataSource
    DataSet = qrydocumentos
    Left = 310
    Top = 204
  end
  object qryafiliadoauto: TQuery
    DatabaseName = 'SOFTEPS'
    SQL.Strings = (
      
        'select autoliquidacion.Num_Planilla,autoliquidacion.fec_pago fro' +
        'm DBO.det_planilla_autoliquidacion, DBO.autoliquidacion '
      'where det_planilla_autoliquidacion.afi_tipo_doc = :ptipo AND'
      '      det_planilla_autoliquidacion.afi_Numero_doc = :pnumero and'
      
        '      det_planilla_autoliquidacion.num_planilla =  autoliquidaci' +
        'on.num_planilla and'
      '       autoliquidacion.per_cotizacion =  :pperiodo')
    Left = 400
    Top = 9
    ParamData = <
      item
        DataType = ftString
        Name = 'ptipo'
        ParamType = ptUnknown
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'pnumero'
        ParamType = ptUnknown
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'pperiodo'
        ParamType = ptUnknown
        Value = '0'
      end>
    object qryafiliadoautoNUM_PLANILLA: TStringField
      FieldName = 'NUM_PLANILLA'
      Size = 15
    end
    object qryafiliadoautoFEC_PAGO: TDateTimeField
      FieldName = 'FEC_PAGO'
    end
  end
  object dtsafiliadoauto: TDataSource
    DataSet = qryafiliadoauto
    Left = 445
    Top = 206
  end
  object qrygetdate: TQuery
    DatabaseName = 'SOFTEPS'
    SQL.Strings = (
      'SELECT  SYSDATE AS FECHA FROM DUAL')
    Left = 476
    Top = 10
    object qrygetdateFECHA: TDateTimeField
      FieldName = 'FECHA'
    end
  end
  object qrylistaempresas: TQuery
    DatabaseName = 'SOFTEPS'
    SQL.Strings = (
      
        'select  tip_documento, num_documento,cod_sucursal,tip_aportante,' +
        'nom_empresa from DBO.empresas')
    Left = 28
    Top = 124
    object qrylistaempresasTIP_DOCUMENTO: TStringField
      FieldName = 'TIP_DOCUMENTO'
      FixedChar = True
      Size = 3
    end
    object qrylistaempresasNUM_DOCUMENTO: TStringField
      FieldName = 'NUM_DOCUMENTO'
      Size = 18
    end
    object qrylistaempresasCOD_SUCURSAL: TStringField
      FieldName = 'COD_SUCURSAL'
      Size = 2
    end
    object qrylistaempresasTIP_APORTANTE: TStringField
      FieldName = 'TIP_APORTANTE'
      FixedChar = True
      Size = 1
    end
    object qrylistaempresasNOM_EMPRESA: TStringField
      FieldName = 'NOM_EMPRESA'
      Size = 100
    end
  end
  object qrytipos: TQuery
    DatabaseName = 'SOFTEPS'
    SQL.Strings = (
      
        'select * from DBO.rango_pago where tip_aportante =:ptipo and dig' +
        '_final = :pnumero')
    Left = 26
    Top = 72
    ParamData = <
      item
        DataType = ftString
        Name = 'ptipo'
        ParamType = ptUnknown
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'pnumero'
        ParamType = ptUnknown
        Value = '0'
      end>
    object qrytiposTIP_APORTANTE: TStringField
      FieldName = 'TIP_APORTANTE'
      Origin = 'DATOSMEC.RANGO_PAGO.TIP_APORTANTE'
      FixedChar = True
      Size = 1
    end
    object qrytiposDIG_FINAL: TStringField
      FieldName = 'DIG_FINAL'
      Origin = 'DATOSMEC.RANGO_PAGO.DIG_FINAL'
      FixedChar = True
      Size = 1
    end
    object qrytiposDIA_HABIL: TStringField
      FieldName = 'DIA_HABIL'
      Origin = 'DATOSMEC.RANGO_PAGO.DIA_HABIL'
      FixedChar = True
      Size = 2
    end
  end
  object qryincapacidades: TQuery
    DatabaseName = 'SOFTEPS'
    SQL.Strings = (
      'SELECT *  FROM DBO.INCAPACIDADES')
    Left = 100
    Top = 71
    object qryincapacidadesNUM_INCAPACIDAD: TStringField
      FieldName = 'NUM_INCAPACIDAD'
      Origin = 'SOFTEPS.INCAPACIDADES.NUM_INCAPACIDAD'
      Size = 15
    end
    object qryincapacidadesTIP_INCAPACIDAD: TStringField
      FieldName = 'TIP_INCAPACIDAD'
      Origin = 'SOFTEPS.INCAPACIDADES.TIP_INCAPACIDAD'
      Size = 3
    end
    object qryincapacidadesFEC_EXPEDICION: TDateTimeField
      FieldName = 'FEC_EXPEDICION'
      Origin = 'SOFTEPS.INCAPACIDADES.FEC_EXPEDICION'
    end
    object qryincapacidadesTIP_DOCEMPRESA: TStringField
      FieldName = 'TIP_DOCEMPRESA'
      Origin = 'SOFTEPS.INCAPACIDADES.TIP_DOCEMPRESA'
      Size = 3
    end
    object qryincapacidadesNUM_DOCEMPRESA: TStringField
      FieldName = 'NUM_DOCEMPRESA'
      Origin = 'SOFTEPS.INCAPACIDADES.NUM_DOCEMPRESA'
      Size = 18
    end
    object qryincapacidadesCOD_DIAGNOSTICO: TStringField
      FieldName = 'COD_DIAGNOSTICO'
      Origin = 'SOFTEPS.INCAPACIDADES.COD_DIAGNOSTICO'
      Size = 5
    end
    object qryincapacidadesAFI_TIPO_DOC: TStringField
      FieldName = 'AFI_TIPO_DOC'
      Origin = 'SOFTEPS.INCAPACIDADES.AFI_TIPO_DOC'
      Size = 3
    end
    object qryincapacidadesAFI_NUMERO_DOC: TStringField
      FieldName = 'AFI_NUMERO_DOC'
      Origin = 'SOFTEPS.INCAPACIDADES.AFI_NUMERO_DOC'
      Size = 18
    end
    object qryincapacidadesCOD_PRESTADOR: TStringField
      FieldName = 'COD_PRESTADOR'
      Origin = 'SOFTEPS.INCAPACIDADES.COD_PRESTADOR'
      Size = 18
    end
    object qryincapacidadesNOM_PRESTADOR: TStringField
      FieldName = 'NOM_PRESTADOR'
      Origin = 'SOFTEPS.INCAPACIDADES.NOM_PRESTADOR'
      Size = 255
    end
    object qryincapacidadesDIA_INCAPACIDAD: TStringField
      FieldName = 'DIA_INCAPACIDAD'
      Origin = 'SOFTEPS.INCAPACIDADES.DIA_INCAPACIDAD'
      Size = 2
    end
    object qryincapacidadesDIA_LIQUIDADOS: TStringField
      FieldName = 'DIA_LIQUIDADOS'
      Origin = 'SOFTEPS.INCAPACIDADES.DIA_LIQUIDADOS'
      Size = 2
    end
    object qryincapacidadesFEC_INICIO: TDateTimeField
      FieldName = 'FEC_INICIO'
      Origin = 'SOFTEPS.INCAPACIDADES.FEC_INICIO'
    end
    object qryincapacidadesPRO_INCAPACIDAD: TStringField
      FieldName = 'PRO_INCAPACIDAD'
      Origin = 'SOFTEPS.INCAPACIDADES.PRO_INCAPACIDAD'
      Size = 1
    end
    object qryincapacidadesSAL_BASE: TFloatField
      FieldName = 'SAL_BASE'
      Origin = 'SOFTEPS.INCAPACIDADES.SAL_BASE'
    end
    object qryincapacidadesPRO_SALARIO_LIQUI: TFloatField
      FieldName = 'PRO_SALARIO_LIQUI'
      Origin = 'SOFTEPS.INCAPACIDADES.PRO_SALARIO_LIQUI'
    end
    object qryincapacidadesVAL_INCAPACIDAD: TFloatField
      FieldName = 'VAL_INCAPACIDAD'
      Origin = 'SOFTEPS.INCAPACIDADES.VAL_INCAPACIDAD'
    end
    object qryincapacidadesEST_INCAPACIDAD: TStringField
      FieldName = 'EST_INCAPACIDAD'
      Origin = 'SOFTEPS.INCAPACIDADES.EST_INCAPACIDAD'
      Size = 3
    end
    object qryincapacidadesCOD_REGIONAL: TStringField
      FieldName = 'COD_REGIONAL'
      Origin = 'SOFTEPS.INCAPACIDADES.COD_REGIONAL'
      Size = 3
    end
    object qryincapacidadesCOD_OFICINA: TStringField
      FieldName = 'COD_OFICINA'
      Origin = 'SOFTEPS.INCAPACIDADES.COD_OFICINA'
    end
    object qryincapacidadesFEC_DIGITACION: TDateTimeField
      FieldName = 'FEC_DIGITACION'
      Origin = 'SOFTEPS.INCAPACIDADES.FEC_DIGITACION'
    end
    object qryincapacidadesTIP_DOC_USUARIO: TStringField
      FieldName = 'TIP_DOC_USUARIO'
      Origin = 'SOFTEPS.INCAPACIDADES.TIP_DOC_USUARIO'
      Size = 3
    end
    object qryincapacidadesTIP_NUM_USUARIO: TStringField
      FieldName = 'TIP_NUM_USUARIO'
      Origin = 'SOFTEPS.INCAPACIDADES.TIP_NUM_USUARIO'
      Size = 15
    end
    object qryincapacidadesFEC_TERMINACION: TDateTimeField
      FieldName = 'FEC_TERMINACION'
      Origin = 'SOFTEPS.INCAPACIDADES.FEC_TERMINACION'
    end
    object qryincapacidadesFEC_MODIFICACION: TDateTimeField
      FieldName = 'FEC_MODIFICACION'
      Origin = 'SOFTEPS.INCAPACIDADES.FEC_MODIFICACION'
    end
    object qryincapacidadesNO_PRORROGA: TStringField
      FieldName = 'NO_PRORROGA'
      Origin = 'SOFTEPS.INCAPACIDADES.NO_PRORROGA'
      Size = 15
    end
    object qryincapacidadesTOT_DIAS_PRORROGA: TStringField
      FieldName = 'TOT_DIAS_PRORROGA'
      Origin = 'SOFTEPS.INCAPACIDADES.TOT_DIAS_PRORROGA'
      Size = 3
    end
  end
  object qrydetincapacidad: TQuery
    DatabaseName = 'SOFTEPS'
    RequestLive = True
    SQL.Strings = (
      'SELECT * FROM DBO.DET_INCAPACIDAD')
    Left = 406
    Top = 72
    object qrydetincapacidadNUM_INCAPACIDAD: TStringField
      FieldName = 'NUM_INCAPACIDAD'
      Origin = 'SOFTEPS.DET_INCAPACIDAD.NUM_INCAPACIDAD'
      Size = 15
    end
    object qrydetincapacidadPER_PAGO_INCAP: TDateTimeField
      FieldName = 'PER_PAGO_INCAP'
      Origin = 'SOFTEPS.DET_INCAPACIDAD.PER_PAGO_INCAP'
    end
    object qrydetincapacidadDIA_PAGAR_INCAP: TFloatField
      FieldName = 'DIA_PAGAR_INCAP'
      Origin = 'SOFTEPS.DET_INCAPACIDAD.DIA_PAGAR_INCAP'
    end
    object qrydetincapacidadVAL_PAGAR_INCAP: TFloatField
      FieldName = 'VAL_PAGAR_INCAP'
      Origin = 'SOFTEPS.DET_INCAPACIDAD.VAL_PAGAR_INCAP'
    end
    object qrydetincapacidadTIP_PAGO_INCAP: TStringField
      FieldName = 'TIP_PAGO_INCAP'
      Origin = 'SOFTEPS.DET_INCAPACIDAD.TIP_PAGO_INCAP'
      Size = 1
    end
    object qrydetincapacidadFEC_PAGO_INCAP: TDateTimeField
      FieldName = 'FEC_PAGO_INCAP'
      Origin = 'SOFTEPS.DET_INCAPACIDAD.FEC_PAGO_INCAP'
    end
    object qrydetincapacidadNUM_COMPROBANTE: TStringField
      FieldName = 'NUM_COMPROBANTE'
      Origin = 'SOFTEPS.DET_INCAPACIDAD.NUM_COMPROBANTE'
      Size = 15
    end
    object qrydetincapacidadPER_PRESENTADO: TStringField
      FieldName = 'PER_PRESENTADO'
      Origin = 'SOFTEPS.DET_INCAPACIDAD.PER_PRESENTADO'
      Size = 7
    end
    object qrydetincapacidadEST_DET_PLANILLA: TStringField
      FieldName = 'EST_DET_PLANILLA'
      Origin = 'SOFTEPS.DET_INCAPACIDAD.EST_DET_PLANILLA'
      Size = 3
    end
    object qrydetincapacidadVAL_DESCONTADO: TFloatField
      FieldName = 'VAL_DESCONTADO'
      Origin = 'SOFTEPS.DET_INCAPACIDAD.VAL_DESCONTADO'
    end
  end
  object qryvalorescompensacion: TQuery
    DatabaseName = 'SOFTEPS'
    SQL.Strings = (
      'select * from DBO.valoresanulescomp  WHERE ANO = :PANO')
    Left = 572
    Top = 68
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'PANO'
        ParamType = ptUnknown
        Value = 0d
      end>
    object qryvalorescompensacionANO: TDateTimeField
      FieldName = 'ANO'
      Origin = 'DATOSMEC.VALORESANULESCOMP.ANO'
    end
    object qryvalorescompensacionSAL_MINIMO: TFloatField
      FieldName = 'SAL_MINIMO'
      Origin = 'DATOSMEC.VALORESANULESCOMP.SAL_MINIMO'
    end
    object qryvalorescompensacionUPC: TFloatField
      FieldName = 'UPC'
      Origin = 'DATOSMEC.VALORESANULESCOMP.UPC'
    end
    object qryvalorescompensacionPYP: TFloatField
      FieldName = 'PYP'
      Origin = 'DATOSMEC.VALORESANULESCOMP.PYP'
    end
    object qryvalorescompensacionSOL: TFloatField
      FieldName = 'SOL'
      Origin = 'DATOSMEC.VALORESANULESCOMP.SOL'
    end
    object qryvalorescompensacionRIESGO: TFloatField
      FieldName = 'RIESGO'
      Origin = 'DATOSMEC.VALORESANULESCOMP.RIESGO'
    end
    object qryvalorescompensacionVAL_UPC_DIA_NORMAL: TFloatField
      FieldName = 'VAL_UPC_DIA_NORMAL'
      Origin = 'DATOSMEC.VALORESANULESCOMP.VAL_UPC_DIA_NORMAL'
    end
    object qryvalorescompensacionVAL_UPC_DIA_ESPECIAL: TFloatField
      FieldName = 'VAL_UPC_DIA_ESPECIAL'
      Origin = 'DATOSMEC.VALORESANULESCOMP.VAL_UPC_DIA_ESPECIAL'
    end
    object qryvalorescompensacionPOR_COTIZACION: TFloatField
      FieldName = 'POR_COTIZACION'
      Origin = 'DATOSMEC.VALORESANULESCOMP.POR_COTIZACION'
    end
    object qryvalorescompensacionPOR_ENFERMEDAD_GENERAL: TFloatField
      FieldName = 'POR_ENFERMEDAD_GENERAL'
      Origin = 'DATOSMEC.VALORESANULESCOMP.POR_ENFERMEDAD_GENERAL'
    end
    object qryvalorescompensacionPOR_PROVISION_INC: TFloatField
      FieldName = 'POR_PROVISION_INC'
      Origin = 'DATOSMEC.VALORESANULESCOMP.POR_PROVISION_INC'
    end
    object qryvalorescompensacionPOR_PYP_LIQUIDACION: TFloatField
      FieldName = 'POR_PYP_LIQUIDACION'
      Origin = 'DATOSMEC.VALORESANULESCOMP.POR_PYP_LIQUIDACION'
    end
    object qryvalorescompensacionPOR_SOLIDARIDAD_LIQUIDACION: TFloatField
      FieldName = 'POR_SOLIDARIDAD_LIQUIDACION'
      Origin = 'DATOSMEC.VALORESANULESCOMP.POR_SOLIDARIDAD_LIQUIDACION'
    end
  end
  object qrybancos: TQuery
    DatabaseName = 'SOFTEPS'
    RequestLive = True
    SQL.Strings = (
      
        'SELECT * FROM DBO.BANCOS WHERE (EST_BANCO = :'#39'ESTADO'#39' OR EST_BAN' +
        'CO IS NULL) ')
    Left = 320
    Top = 72
    ParamData = <
      item
        DataType = ftString
        Name = 'ESTADO'
        ParamType = ptUnknown
        Value = 'A'
      end>
    object qrybancosCOD_BANCO: TStringField
      FieldName = 'COD_BANCO'
      Origin = 'DATOSMEC.BANCOS.COD_BANCO'
      FixedChar = True
      Size = 3
    end
    object qrybancosNOM_BANCO: TStringField
      FieldName = 'NOM_BANCO'
      Origin = 'DATOSMEC.BANCOS.NOM_BANCO'
      Size = 50
    end
    object qrybancosCTA_BANCO: TStringField
      FieldName = 'CTA_BANCO'
      Origin = 'DATOSMEC.BANCOS.CTA_BANCO'
      Size = 15
    end
    object qrybancosDIR_BANCO: TStringField
      FieldName = 'DIR_BANCO'
      Origin = 'DATOSMEC.BANCOS.DIR_BANCO'
      Size = 70
    end
    object qrybancosEST_BANCO: TStringField
      FieldName = 'EST_BANCO'
      Origin = 'DATOSMEC.BANCOS.EST_BANCO'
      FixedChar = True
      Size = 3
    end
    object qrybancosTIPO_RECAUDO: TStringField
      FieldName = 'TIPO_RECAUDO'
      Origin = 'DATOSMEC.BANCOS.TIPO_RECAUDO'
      FixedChar = True
      Size = 3
    end
    object qrybancosTIP_DOCUMENTO: TStringField
      FieldName = 'TIP_DOCUMENTO'
      Origin = 'SOFTEPS.BANCOS.TIP_DOCUMENTO'
      Size = 3
    end
    object qrybancosNUM_DOCUMENTO: TStringField
      FieldName = 'NUM_DOCUMENTO'
      Origin = 'SOFTEPS.BANCOS.NUM_DOCUMENTO'
      Size = 18
    end
    object qrybancosCOD_DEPARTAMENTO: TStringField
      FieldName = 'COD_DEPARTAMENTO'
      Origin = 'SOFTEPS.BANCOS.COD_DEPARTAMENTO'
      Size = 2
    end
    object qrybancosCOD_CIUDAD: TStringField
      FieldName = 'COD_CIUDAD'
      Origin = 'SOFTEPS.BANCOS.COD_CIUDAD'
      Size = 3
    end
  end
  object dtsbancos: TDataSource
    DataSet = qrybancos
    Left = 379
    Top = 205
  end
  object qrybancoesp: TQuery
    DatabaseName = 'SOFTEPS'
    SQL.Strings = (
      'select * from DBO.bancos where  cod_banco = :pbanco')
    Left = 643
    Top = 88
    ParamData = <
      item
        DataType = ftString
        Name = 'pbanco'
        ParamType = ptUnknown
        Value = '0'
      end>
    object qrybancoespCOD_BANCO: TStringField
      FieldName = 'COD_BANCO'
      Origin = 'DATOSMEC.BANCOS.COD_BANCO'
      FixedChar = True
      Size = 3
    end
    object qrybancoespNOM_BANCO: TStringField
      FieldName = 'NOM_BANCO'
      Origin = 'DATOSMEC.BANCOS.NOM_BANCO'
      Size = 50
    end
    object qrybancoespCTA_BANCO: TStringField
      FieldName = 'CTA_BANCO'
      Origin = 'DATOSMEC.BANCOS.CTA_BANCO'
      Size = 15
    end
    object qrybancoespDIR_BANCO: TStringField
      FieldName = 'DIR_BANCO'
      Origin = 'DATOSMEC.BANCOS.DIR_BANCO'
      Size = 70
    end
    object qrybancoespEST_BANCO: TStringField
      FieldName = 'EST_BANCO'
      Origin = 'DATOSMEC.BANCOS.EST_BANCO'
      FixedChar = True
      Size = 3
    end
    object qrybancoespTIPO_RECAUDO: TStringField
      FieldName = 'TIPO_RECAUDO'
      Origin = 'DATOSMEC.BANCOS.TIPO_RECAUDO'
      FixedChar = True
      Size = 3
    end
  end
  object qrypagosafiliados: TQuery
    DatabaseName = 'SOFTEPS'
    SQL.Strings = (
      
        'select fec_pago,det_planilla_autoliquidacion.per_cotizacion,cot_' +
        'obligatoria,dia_cotizados from DBO.det_planilla_autoliquidacion,' +
        'DBO.autoliquidacion '
      
        'where det_planilla_autoliquidacion.num_planilla = autoliquidacio' +
        'n.num_planilla '
      'and afi_tipo_doc = :ptipo '
      'and afi_Numero_doc = :pnumero'
      'order by fec_pago,det_planilla_autoliquidacion.per_cotizacion')
    Left = 572
    Top = 10
    ParamData = <
      item
        DataType = ftString
        Name = 'ptipo'
        ParamType = ptUnknown
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'pnumero'
        ParamType = ptUnknown
        Value = '0'
      end>
    object qrypagosafiliadosFEC_PAGO: TDateTimeField
      FieldName = 'FEC_PAGO'
    end
    object qrypagosafiliadosPER_COTIZACION: TStringField
      FieldName = 'PER_COTIZACION'
      Size = 7
    end
    object qrypagosafiliadosCOT_OBLIGATORIA: TFloatField
      FieldName = 'COT_OBLIGATORIA'
    end
    object qrypagosafiliadosDIA_COTIZADOS: TStringField
      FieldName = 'DIA_COTIZADOS'
      Size = 2
    end
  end
  object qryestrato: TQuery
    DatabaseName = 'SOFTEPS'
    SQL.Strings = (
      'SELECT * FROM DBO.EST_BANCARIO_AUTO')
    Left = 512
    Top = 134
    object qryestratoCOD_BANCO: TStringField
      FieldName = 'COD_BANCO'
      Origin = 'SOFTEPS.EST_BANCARIO_AUTO.COD_BANCO'
      Size = 3
    end
    object qryestratoCOD_SUCURSAL: TStringField
      FieldName = 'COD_SUCURSAL'
      Origin = 'SOFTEPS.EST_BANCARIO_AUTO.COD_SUCURSAL'
      Size = 8
    end
    object qryestratoNUM_DOCUMENTO: TStringField
      FieldName = 'NUM_DOCUMENTO'
      Origin = 'SOFTEPS.EST_BANCARIO_AUTO.NUM_DOCUMENTO'
      Size = 18
    end
    object qryestratoNUM_PLANILLA: TStringField
      FieldName = 'NUM_PLANILLA'
      Origin = 'SOFTEPS.EST_BANCARIO_AUTO.NUM_PLANILLA'
      Size = 15
    end
    object qryestratoFEC_RECAUDO: TDateTimeField
      FieldName = 'FEC_RECAUDO'
      Origin = 'SOFTEPS.EST_BANCARIO_AUTO.FEC_RECAUDO'
    end
    object qryestratoVAL_CONSIGNACION: TFloatField
      FieldName = 'VAL_CONSIGNACION'
      Origin = 'SOFTEPS.EST_BANCARIO_AUTO.VAL_CONSIGNACION'
    end
    object qryestratoTIP_MOVIMIENTO: TStringField
      FieldName = 'TIP_MOVIMIENTO'
      Origin = 'SOFTEPS.EST_BANCARIO_AUTO.TIP_MOVIMIENTO'
      Size = 5
    end
    object qryestratoEST_CONCILIACION: TStringField
      FieldName = 'EST_CONCILIACION'
      Origin = 'SOFTEPS.EST_BANCARIO_AUTO.EST_CONCILIACION'
      Size = 1
    end
    object qryestratoFEC_PLANILLA_CON: TDateTimeField
      FieldName = 'FEC_PLANILLA_CON'
      Origin = 'SOFTEPS.EST_BANCARIO_AUTO.FEC_PLANILLA_CON'
    end
  end
  object qrycartera: TQuery
    DatabaseName = 'SOFTEPS'
    RequestLive = True
    SQL.Strings = (
      'SELECT * FROM DBO.CARTERA')
    Left = 179
    Top = 74
    object qrycarteraTIP_DOCUMENTO: TStringField
      FieldName = 'TIP_DOCUMENTO'
      Origin = 'SOFTEPS.CARTERA.TIP_DOCUMENTO'
      Size = 3
    end
    object qrycarteraNUM_DOCUMENTO: TStringField
      FieldName = 'NUM_DOCUMENTO'
      Origin = 'SOFTEPS.CARTERA.NUM_DOCUMENTO'
      Size = 18
    end
    object qrycarteraTIP_DOCUMENTO_EMP: TStringField
      FieldName = 'TIP_DOCUMENTO_EMP'
      Origin = 'SOFTEPS.CARTERA.TIP_DOCUMENTO_EMP'
      Size = 3
    end
    object qrycarteraNUM_DOCUMENTO_EMP: TStringField
      FieldName = 'NUM_DOCUMENTO_EMP'
      Origin = 'SOFTEPS.CARTERA.NUM_DOCUMENTO_EMP'
      Size = 18
    end
    object qrycarteraCOD_SUCURSAL_EMP: TStringField
      FieldName = 'COD_SUCURSAL_EMP'
      Origin = 'SOFTEPS.CARTERA.COD_SUCURSAL_EMP'
      Size = 2
    end
    object qrycarteraPER_COMPENSACION: TStringField
      FieldName = 'PER_COMPENSACION'
      Origin = 'SOFTEPS.CARTERA.PER_COMPENSACION'
      Size = 7
    end
    object qrycarteraTIPO_MORA: TStringField
      FieldName = 'TIPO_MORA'
      Origin = 'SOFTEPS.CARTERA.TIPO_MORA'
      Size = 1
    end
    object qrycarteraVALOR_MORA: TFloatField
      FieldName = 'VALOR_MORA'
      Origin = 'SOFTEPS.CARTERA.VALOR_MORA'
    end
    object qrycarteraVALOR_UPC: TFloatField
      FieldName = 'VALOR_UPC'
      Origin = 'SOFTEPS.CARTERA.VALOR_UPC'
    end
    object qrycarteraCOD_TIPO_AFIL: TStringField
      FieldName = 'COD_TIPO_AFIL'
      Origin = 'SOFTEPS.CARTERA.COD_TIPO_AFIL'
      Size = 1
    end
    object qrycarteraTIP_DOCUMENTO_COT: TStringField
      FieldName = 'TIP_DOCUMENTO_COT'
      Origin = 'SOFTEPS.CARTERA.TIP_DOCUMENTO_COT'
      Size = 3
    end
    object qrycarteraNUM_DOCUMENTO_COT: TStringField
      FieldName = 'NUM_DOCUMENTO_COT'
      Origin = 'SOFTEPS.CARTERA.NUM_DOCUMENTO_COT'
      Size = 18
    end
    object qrycarteraINTERES: TFloatField
      FieldName = 'INTERES'
      Origin = 'SOFTEPS.CARTERA.INTERES'
    end
  end
  object qryupc: TQuery
    DatabaseName = 'SOFTEPS'
    SQL.Strings = (
      'select tip_documento_ben, '
      #9'num_documento_ben,'
      '                pri_apellido,'
      #9'seg_apellido,'
      '                pri_nombre,seg_nombre,'
      #9'cod_sexo,'
      '    '#9'tip_documento_cot,'
      #9'num_documento_cot,'
      #9'fec_nacimiento'
      'FRom DBO.afiliados,DBO.relacion_afiliados '
      #9'where cod_tipo_afil='#39'A'#39' and'
      #9'tip_documento_ben =  tip_documento and'
      #9'num_documento_ben = num_documento')
    Left = 480
    Top = 76
    object qryupcTIP_DOCUMENTO_BEN: TStringField
      FieldName = 'TIP_DOCUMENTO_BEN'
      FixedChar = True
      Size = 3
    end
    object qryupcNUM_DOCUMENTO_BEN: TStringField
      FieldName = 'NUM_DOCUMENTO_BEN'
      Size = 18
    end
    object qryupcPRI_APELLIDO: TStringField
      FieldName = 'PRI_APELLIDO'
      Size = 25
    end
    object qryupcSEG_APELLIDO: TStringField
      FieldName = 'SEG_APELLIDO'
      Size = 25
    end
    object qryupcPRI_NOMBRE: TStringField
      FieldName = 'PRI_NOMBRE'
      Size = 25
    end
    object qryupcSEG_NOMBRE: TStringField
      FieldName = 'SEG_NOMBRE'
      Size = 25
    end
    object qryupcCOD_SEXO: TStringField
      FieldName = 'COD_SEXO'
      FixedChar = True
      Size = 1
    end
    object qryupcTIP_DOCUMENTO_COT: TStringField
      FieldName = 'TIP_DOCUMENTO_COT'
      FixedChar = True
      Size = 3
    end
    object qryupcNUM_DOCUMENTO_COT: TStringField
      FieldName = 'NUM_DOCUMENTO_COT'
      Size = 18
    end
    object qryupcFEC_NACIMIENTO: TDateTimeField
      FieldName = 'FEC_NACIMIENTO'
    end
  end
  object qryvaloresupc: TQuery
    DatabaseName = 'SOFTEPS'
    SQL.Strings = (
      
        'select val_estructura_cost, ini_grupo_eta, fin_grupo_eta, sexo_g' +
        'rupo_eta,'
      
        '       ((val_estructura_cost * val_upc_dia_normal)*30) as Valor_' +
        'normal,'
      '       (((pyp/12))) as Promocion,sol'
      
        ' from DBO.grupos_etareos,DBO.estructura_costos,DBO.valoresanules' +
        'comp'
      
        ' where grupos_etareos.cod_grupo_eta = estructura_costos.cod_grup' +
        'o_eta and'
      '       ano_val_estructura_cost = ano  and '
      '      ano_val_estructura_cost = :fecha and '
      #9#9' (ini_grupo_eta <= :edad and fin_grupo_eta >= :edad)'
      ' ')
    Left = 102
    Top = 124
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'fecha'
        ParamType = ptUnknown
        Value = 0d
      end
      item
        DataType = ftInteger
        Name = 'edad'
        ParamType = ptUnknown
        Value = 0
      end
      item
        DataType = ftInteger
        Name = 'edad'
        ParamType = ptUnknown
      end>
    object qryvaloresupcVAL_ESTRUCTURA_COST: TFloatField
      FieldName = 'VAL_ESTRUCTURA_COST'
    end
    object qryvaloresupcINI_GRUPO_ETA: TFloatField
      FieldName = 'INI_GRUPO_ETA'
    end
    object qryvaloresupcFIN_GRUPO_ETA: TFloatField
      FieldName = 'FIN_GRUPO_ETA'
    end
    object qryvaloresupcSEXO_GRUPO_ETA: TStringField
      FieldName = 'SEXO_GRUPO_ETA'
      FixedChar = True
      Size = 1
    end
    object qryvaloresupcVALOR_NORMAL: TFloatField
      FieldName = 'VALOR_NORMAL'
    end
    object qryvaloresupcPROMOCION: TFloatField
      FieldName = 'PROMOCION'
    end
    object qryvaloresupcSOL: TFloatField
      FieldName = 'SOL'
    end
  end
  object qrypagoupc: TQuery
    DatabaseName = 'SOFTEPS'
    SQL.Strings = (
      'SELECT * FROM DBO.DET_PAGO_UPC_ADICIONAL')
    Left = 256
    Top = 71
    object qrypagoupcNUM_PLANILLA: TStringField
      FieldName = 'NUM_PLANILLA'
      Origin = 'DATOSMEC.DET_PAGO_UPC_ADICIONAL.NUM_PLANILLA'
      Size = 10
    end
    object qrypagoupcPER_COTIZACION: TStringField
      FieldName = 'PER_COTIZACION'
      Origin = 'DATOSMEC.DET_PAGO_UPC_ADICIONAL.PER_COTIZACION'
      FixedChar = True
      Size = 7
    end
    object qrypagoupcPER_PRESENTACION: TStringField
      FieldName = 'PER_PRESENTACION'
      Origin = 'DATOSMEC.DET_PAGO_UPC_ADICIONAL.PER_PRESENTACION'
      FixedChar = True
      Size = 1
    end
    object qrypagoupcAFI_TIP_DOCUMENTO: TStringField
      FieldName = 'AFI_TIP_DOCUMENTO'
      Origin = 'DATOSMEC.DET_PAGO_UPC_ADICIONAL.AFI_TIP_DOCUMENTO'
      FixedChar = True
      Size = 3
    end
    object qrypagoupcAFI_NUM_DOCUMENTO: TStringField
      FieldName = 'AFI_NUM_DOCUMENTO'
      Origin = 'DATOSMEC.DET_PAGO_UPC_ADICIONAL.AFI_NUM_DOCUMENTO'
      Size = 18
    end
    object qrypagoupcAFI_TIP_DOC_ADICIONAL: TStringField
      FieldName = 'AFI_TIP_DOC_ADICIONAL'
      Origin = 'DATOSMEC.DET_PAGO_UPC_ADICIONAL.AFI_TIP_DOC_ADICIONAL'
      FixedChar = True
      Size = 3
    end
    object qrypagoupcAFI_NUM_DOC_ADICIONAL: TStringField
      FieldName = 'AFI_NUM_DOC_ADICIONAL'
      Origin = 'DATOSMEC.DET_PAGO_UPC_ADICIONAL.AFI_NUM_DOC_ADICIONAL'
      Size = 18
    end
    object qrypagoupcVAL_PAGADO: TFloatField
      FieldName = 'VAL_PAGADO'
      Origin = 'DATOSMEC.DET_PAGO_UPC_ADICIONAL.VAL_PAGADO'
    end
    object qrypagoupcCOD_ESTADO: TStringField
      FieldName = 'COD_ESTADO'
      Origin = 'DATOSMEC.DET_PAGO_UPC_ADICIONAL.COD_ESTADO'
      Size = 3
    end
  end
  object qryempresaupc: TQuery
    DatabaseName = 'SOFTEPS'
    SQL.Strings = (
      
        'SELECT RELACION_AFILIADOS.* FROM  DBO.RELACION_DBO.AFILIADOS,AFI' +
        'LIADOS WHERE TIP_DOCUMENTO_COT = '#39'CC'#39' AND  NUM_DOCUMENTO_COT = '#39 +
        '791073754'#39' '
      
        '  AND TIP_DOCUMENTO_BEN = TIP_DOCUMENTO AND  NUM_DOCUMENTO_BEN =' +
        ' NUM_DOCUMENTO AND COD_TIPO_AFIL = '#39'A'#39)
    Left = 188
    Top = 122
    object qryempresaupcTIP_DOCUMENTO_COT: TStringField
      FieldName = 'TIP_DOCUMENTO_COT'
      Origin = 'SOFTEPS.RELACION_AFILIADOS.TIP_DOCUMENTO_COT'
      Size = 3
    end
    object qryempresaupcNUM_DOCUMENTO_COT: TStringField
      FieldName = 'NUM_DOCUMENTO_COT'
      Origin = 'SOFTEPS.RELACION_AFILIADOS.NUM_DOCUMENTO_COT'
      Size = 18
    end
    object qryempresaupcTIP_DOCUMENTO_BEN: TStringField
      FieldName = 'TIP_DOCUMENTO_BEN'
      Origin = 'SOFTEPS.RELACION_AFILIADOS.TIP_DOCUMENTO_BEN'
      Size = 3
    end
    object qryempresaupcNUM_DOCUMENTO_BEN: TStringField
      FieldName = 'NUM_DOCUMENTO_BEN'
      Origin = 'SOFTEPS.RELACION_AFILIADOS.NUM_DOCUMENTO_BEN'
      Size = 18
    end
    object qryempresaupcFEC_INCLUSION_NOV: TDateTimeField
      FieldName = 'FEC_INCLUSION_NOV'
      Origin = 'SOFTEPS.RELACION_AFILIADOS.FEC_INCLUSION_NOV'
    end
    object qryempresaupcCOD_PARENTESCO: TStringField
      FieldName = 'COD_PARENTESCO'
      Origin = 'SOFTEPS.RELACION_AFILIADOS.COD_PARENTESCO'
      Size = 3
    end
    object qryempresaupcFEC_EXCLUSION_NOV: TDateTimeField
      FieldName = 'FEC_EXCLUSION_NOV'
      Origin = 'SOFTEPS.RELACION_AFILIADOS.FEC_EXCLUSION_NOV'
    end
    object qryempresaupcCOD_ESTADO: TStringField
      FieldName = 'COD_ESTADO'
      Origin = 'SOFTEPS.RELACION_AFILIADOS.COD_ESTADO'
      Size = 2
    end
    object qryempresaupcCOD_RELACION_ADI: TStringField
      FieldName = 'COD_RELACION_ADI'
      Origin = 'SOFTEPS.RELACION_AFILIADOS.COD_RELACION_ADI'
      Size = 2
    end
  end
  object qrydetalleupc: TQuery
    DatabaseName = 'SOFTEPS'
    RequestLive = True
    SQL.Strings = (
      'SELECT * FROM DBO.DET_PAGO_UPC_ADICIONAL')
    Left = 268
    Top = 120
    object qrydetalleupcNUM_PLANILLA: TStringField
      FieldName = 'NUM_PLANILLA'
      Origin = 'DATOSMEC.DET_PAGO_UPC_ADICIONAL.NUM_PLANILLA'
      Size = 10
    end
    object qrydetalleupcPER_COTIZACION: TStringField
      FieldName = 'PER_COTIZACION'
      Origin = 'DATOSMEC.DET_PAGO_UPC_ADICIONAL.PER_COTIZACION'
      FixedChar = True
      Size = 7
    end
    object qrydetalleupcPER_PRESENTACION: TStringField
      FieldName = 'PER_PRESENTACION'
      Origin = 'DATOSMEC.DET_PAGO_UPC_ADICIONAL.PER_PRESENTACION'
      FixedChar = True
      Size = 1
    end
    object qrydetalleupcAFI_TIP_DOCUMENTO: TStringField
      FieldName = 'AFI_TIP_DOCUMENTO'
      Origin = 'DATOSMEC.DET_PAGO_UPC_ADICIONAL.AFI_TIP_DOCUMENTO'
      FixedChar = True
      Size = 3
    end
    object qrydetalleupcAFI_NUM_DOCUMENTO: TStringField
      FieldName = 'AFI_NUM_DOCUMENTO'
      Origin = 'DATOSMEC.DET_PAGO_UPC_ADICIONAL.AFI_NUM_DOCUMENTO'
      Size = 18
    end
    object qrydetalleupcAFI_TIP_DOC_ADICIONAL: TStringField
      FieldName = 'AFI_TIP_DOC_ADICIONAL'
      Origin = 'DATOSMEC.DET_PAGO_UPC_ADICIONAL.AFI_TIP_DOC_ADICIONAL'
      FixedChar = True
      Size = 3
    end
    object qrydetalleupcAFI_NUM_DOC_ADICIONAL: TStringField
      FieldName = 'AFI_NUM_DOC_ADICIONAL'
      Origin = 'DATOSMEC.DET_PAGO_UPC_ADICIONAL.AFI_NUM_DOC_ADICIONAL'
      Size = 18
    end
    object qrydetalleupcVAL_PAGADO: TFloatField
      FieldName = 'VAL_PAGADO'
      Origin = 'DATOSMEC.DET_PAGO_UPC_ADICIONAL.VAL_PAGADO'
    end
  end
  object qrydiagnosticos: TQuery
    DatabaseName = 'SOFTEPS'
    SQL.Strings = (
      'SELECT * FROM DBO.DIGNOSTICOS')
    Left = 352
    Top = 118
    object qrydiagnosticosCOD_DIAGNOSTICO: TStringField
      FieldName = 'COD_DIAGNOSTICO'
      Origin = 'SOFTEPS.DIGNOSTICOS.COD_DIAGNOSTICO'
      Size = 4
    end
    object qrydiagnosticosNOM_DIAGNSOTICO: TStringField
      FieldName = 'NOM_DIAGNSOTICO'
      Origin = 'SOFTEPS.DIGNOSTICOS.NOM_DIAGNSOTICO'
      Size = 255
    end
    object qrydiagnosticosRANGO_SEXO: TStringField
      FieldName = 'RANGO_SEXO'
      Origin = 'SOFTEPS.DIGNOSTICOS.RANGO_SEXO'
      Size = 1
    end
    object qrydiagnosticosEDA_MININA: TFloatField
      FieldName = 'EDA_MININA'
      Origin = 'SOFTEPS.DIGNOSTICOS.EDA_MININA'
    end
    object qrydiagnosticosEDA_MAXIMA: TFloatField
      FieldName = 'EDA_MAXIMA'
      Origin = 'SOFTEPS.DIGNOSTICOS.EDA_MAXIMA'
    end
  end
  object qryprestadores: TQuery
    DatabaseName = 'SOFTEPS'
    SQL.Strings = (
      'SELECT * FROM DBO.PRESTADORES')
    Left = 426
    Top = 122
    object qryprestadoresCOD_PRESTADOR: TStringField
      FieldName = 'COD_PRESTADOR'
      Origin = 'SOFTEPS.PRESTADORES.COD_PRESTADOR'
      Size = 18
    end
    object qryprestadoresMON_PRESTADOR: TStringField
      FieldName = 'MON_PRESTADOR'
      Origin = 'SOFTEPS.PRESTADORES.MON_PRESTADOR'
      Size = 100
    end
    object qryprestadoresNUM_ACREDITACION: TStringField
      FieldName = 'NUM_ACREDITACION'
      Origin = 'SOFTEPS.PRESTADORES.NUM_ACREDITACION'
      Size = 18
    end
    object qryprestadoresCOD_DEPARTAMENTO: TStringField
      FieldName = 'COD_DEPARTAMENTO'
      Origin = 'SOFTEPS.PRESTADORES.COD_DEPARTAMENTO'
      Size = 2
    end
    object qryprestadoresCOD_CIUDAD: TStringField
      FieldName = 'COD_CIUDAD'
      Origin = 'SOFTEPS.PRESTADORES.COD_CIUDAD'
      Size = 3
    end
    object qryprestadoresDIR_PRESTADOR: TStringField
      FieldName = 'DIR_PRESTADOR'
      Origin = 'SOFTEPS.PRESTADORES.DIR_PRESTADOR'
      Size = 100
    end
    object qryprestadoresTEL_PRESTADOR: TStringField
      FieldName = 'TEL_PRESTADOR'
      Origin = 'SOFTEPS.PRESTADORES.TEL_PRESTADOR'
    end
    object qryprestadoresREP_LEGAL: TStringField
      FieldName = 'REP_LEGAL'
      Origin = 'SOFTEPS.PRESTADORES.REP_LEGAL'
      Size = 100
    end
    object qryprestadoresNIV_ATEN_PRESTADOR: TStringField
      FieldName = 'NIV_ATEN_PRESTADOR'
      Origin = 'SOFTEPS.PRESTADORES.NIV_ATEN_PRESTADOR'
      Size = 50
    end
    object qryprestadoresTIP_PRESTADOR: TStringField
      FieldName = 'TIP_PRESTADOR'
      Origin = 'SOFTEPS.PRESTADORES.TIP_PRESTADOR'
      Size = 1
    end
    object qryprestadoresTIP_IDENTIFICACION: TStringField
      FieldName = 'TIP_IDENTIFICACION'
      Origin = 'SOFTEPS.PRESTADORES.TIP_IDENTIFICACION'
      Size = 3
    end
    object qryprestadoresNUM_IDENTIFICACION: TStringField
      FieldName = 'NUM_IDENTIFICACION'
      Origin = 'SOFTEPS.PRESTADORES.NUM_IDENTIFICACION'
      Size = 18
    end
    object qryprestadoresCLA_PRESTADOR: TStringField
      FieldName = 'CLA_PRESTADOR'
      Origin = 'SOFTEPS.PRESTADORES.CLA_PRESTADOR'
      Size = 2
    end
    object qryprestadoresREC_COPAGO: TStringField
      FieldName = 'REC_COPAGO'
      Origin = 'SOFTEPS.PRESTADORES.REC_COPAGO'
      Size = 1
    end
    object qryprestadoresREC_CUOTA: TStringField
      FieldName = 'REC_CUOTA'
      Origin = 'SOFTEPS.PRESTADORES.REC_CUOTA'
      Size = 1
    end
    object qryprestadoresEST_PRESTADOR: TStringField
      FieldName = 'EST_PRESTADOR'
      Origin = 'SOFTEPS.PRESTADORES.EST_PRESTADOR'
      Size = 1
    end
    object qryprestadoresFEC_ULTIMA_AUTO: TDateTimeField
      FieldName = 'FEC_ULTIMA_AUTO'
      Origin = 'SOFTEPS.PRESTADORES.FEC_ULTIMA_AUTO'
    end
    object qryprestadoresEST_CONTRATO: TStringField
      FieldName = 'EST_CONTRATO'
      Origin = 'SOFTEPS.PRESTADORES.EST_CONTRATO'
      Size = 1
    end
    object qryprestadoresCOD_REGINAL: TStringField
      FieldName = 'COD_REGINAL'
      Origin = 'SOFTEPS.PRESTADORES.COD_REGINAL'
      Size = 3
    end
    object qryprestadoresCOD_OFICINA: TStringField
      FieldName = 'COD_OFICINA'
      Origin = 'SOFTEPS.PRESTADORES.COD_OFICINA'
      Size = 3
    end
    object qryprestadoresFEC_INGRESO: TDateTimeField
      FieldName = 'FEC_INGRESO'
      Origin = 'SOFTEPS.PRESTADORES.FEC_INGRESO'
    end
    object qryprestadoresDIR_ELECTRONICA: TStringField
      FieldName = 'DIR_ELECTRONICA'
      Origin = 'SOFTEPS.PRESTADORES.DIR_ELECTRONICA'
    end
  end
  object qryafiliadosempresa: TQuery
    DatabaseName = 'SOFTEPS'
    SQL.Strings = (
      'SELECT * FROM  DBO.AFILIADOS_EMPRESAS')
    Left = 46
    Top = 268
    object qryafiliadosempresaCOD_OCUPACION: TStringField
      FieldName = 'COD_OCUPACION'
      Origin = 'SOFTEPS.AFILIADOS_EMPRESAS.COD_OCUPACION'
      Size = 3
    end
    object qryafiliadosempresaTIP_DOCUMENTO_AFI: TStringField
      FieldName = 'TIP_DOCUMENTO_AFI'
      Origin = 'SOFTEPS.AFILIADOS_EMPRESAS.TIP_DOCUMENTO_AFI'
      Size = 3
    end
    object qryafiliadosempresaNUM_DOCUMENTO_AFI: TStringField
      FieldName = 'NUM_DOCUMENTO_AFI'
      Origin = 'SOFTEPS.AFILIADOS_EMPRESAS.NUM_DOCUMENTO_AFI'
      Size = 18
    end
    object qryafiliadosempresaTIP_DOCUMENTO_EMP: TStringField
      FieldName = 'TIP_DOCUMENTO_EMP'
      Origin = 'SOFTEPS.AFILIADOS_EMPRESAS.TIP_DOCUMENTO_EMP'
      Size = 3
    end
    object qryafiliadosempresaNUM_DOCUMENTO_EMP: TStringField
      FieldName = 'NUM_DOCUMENTO_EMP'
      Origin = 'SOFTEPS.AFILIADOS_EMPRESAS.NUM_DOCUMENTO_EMP'
      Size = 18
    end
    object qryafiliadosempresaCOD_SUCURSAL: TStringField
      FieldName = 'COD_SUCURSAL'
      Origin = 'SOFTEPS.AFILIADOS_EMPRESAS.COD_SUCURSAL'
      Size = 2
    end
    object qryafiliadosempresaCOD_ESTADO: TStringField
      FieldName = 'COD_ESTADO'
      Origin = 'SOFTEPS.AFILIADOS_EMPRESAS.COD_ESTADO'
      Size = 2
    end
    object qryafiliadosempresaVAL_SUELDO_AFIL: TFloatField
      FieldName = 'VAL_SUELDO_AFIL'
      Origin = 'SOFTEPS.AFILIADOS_EMPRESAS.VAL_SUELDO_AFIL'
    end
    object qryafiliadosempresaFEC_INGRESO_UNI: TDateTimeField
      FieldName = 'FEC_INGRESO_UNI'
      Origin = 'SOFTEPS.AFILIADOS_EMPRESAS.FEC_INGRESO_UNI'
    end
    object qryafiliadosempresaFEC_EGRESO_UNI: TDateTimeField
      FieldName = 'FEC_EGRESO_UNI'
      Origin = 'SOFTEPS.AFILIADOS_EMPRESAS.FEC_EGRESO_UNI'
    end
    object qryafiliadosempresaCOD_DEPARTAMENTO_LAB: TStringField
      FieldName = 'COD_DEPARTAMENTO_LAB'
      Origin = 'SOFTEPS.AFILIADOS_EMPRESAS.COD_DEPARTAMENTO_LAB'
      Size = 2
    end
    object qryafiliadosempresaCOD_CIUDAD_LAB: TStringField
      FieldName = 'COD_CIUDAD_LAB'
      Origin = 'SOFTEPS.AFILIADOS_EMPRESAS.COD_CIUDAD_LAB'
      Size = 3
    end
    object qryafiliadosempresaDIR_AFILIADO_LAB: TStringField
      FieldName = 'DIR_AFILIADO_LAB'
      Origin = 'SOFTEPS.AFILIADOS_EMPRESAS.DIR_AFILIADO_LAB'
      Size = 50
    end
    object qryafiliadosempresaTEL_AFILIADO_LAB: TStringField
      FieldName = 'TEL_AFILIADO_LAB'
      Origin = 'SOFTEPS.AFILIADOS_EMPRESAS.TEL_AFILIADO_LAB'
    end
    object qryafiliadosempresaTEL_AFILIADO_LAB2: TStringField
      FieldName = 'TEL_AFILIADO_LAB2'
      Origin = 'SOFTEPS.AFILIADOS_EMPRESAS.TEL_AFILIADO_LAB2'
    end
    object qryafiliadosempresaCOD_TIPO_SAL: TStringField
      FieldName = 'COD_TIPO_SAL'
      Origin = 'SOFTEPS.AFILIADOS_EMPRESAS.COD_TIPO_SAL'
      Size = 1
    end
    object qryafiliadosempresaCOD_ZONA: TStringField
      FieldName = 'COD_ZONA'
      Origin = 'SOFTEPS.AFILIADOS_EMPRESAS.COD_ZONA'
      Size = 3
    end
  end
  object qryplanillas: TQuery
    DatabaseName = 'SOFTEPS'
    SQL.Strings = (
      'SELECT * FROM DBO.AUTOLIQUIDACION')
    Left = 130
    Top = 262
    object qryplanillasNUM_PLANILLA: TStringField
      FieldName = 'NUM_PLANILLA'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.NUM_PLANILLA'
      Size = 15
    end
    object qryplanillasEMP_TIPO_DOC: TStringField
      FieldName = 'EMP_TIPO_DOC'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.EMP_TIPO_DOC'
      Size = 3
    end
    object qryplanillasEMP_NUMERO_DOC: TStringField
      FieldName = 'EMP_NUMERO_DOC'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.EMP_NUMERO_DOC'
      Size = 18
    end
    object qryplanillasCOD_SUCURSAL: TStringField
      FieldName = 'COD_SUCURSAL'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.COD_SUCURSAL'
      Size = 2
    end
    object qryplanillasTIP_DECLARACION: TStringField
      FieldName = 'TIP_DECLARACION'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.TIP_DECLARACION'
      Size = 1
    end
    object qryplanillasFEC_PAGO: TDateTimeField
      FieldName = 'FEC_PAGO'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.FEC_PAGO'
    end
    object qryplanillasNUM_PLANILLA_CORR: TStringField
      FieldName = 'NUM_PLANILLA_CORR'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.NUM_PLANILLA_CORR'
      Size = 15
    end
    object qryplanillasPER_COTIZACION: TStringField
      FieldName = 'PER_COTIZACION'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.PER_COTIZACION'
      Size = 7
    end
    object qryplanillasPER_PRESENTACION: TStringField
      FieldName = 'PER_PRESENTACION'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.PER_PRESENTACION'
      Size = 7
    end
    object qryplanillasTOT_PLANILLA: TFloatField
      FieldName = 'TOT_PLANILLA'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.TOT_PLANILLA'
    end
    object qryplanillasTOT_APORTE_PER: TFloatField
      FieldName = 'TOT_APORTE_PER'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.TOT_APORTE_PER'
    end
    object qryplanillasTOT_INCAPACIDAD: TFloatField
      FieldName = 'TOT_INCAPACIDAD'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.TOT_INCAPACIDAD'
    end
    object qryplanillasTOT_LICENCIAS: TFloatField
      FieldName = 'TOT_LICENCIAS'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.TOT_LICENCIAS'
    end
    object qryplanillasTOT_APORTE: TFloatField
      FieldName = 'TOT_APORTE'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.TOT_APORTE'
    end
    object qryplanillasINT_MORA: TFloatField
      FieldName = 'INT_MORA'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.INT_MORA'
    end
    object qryplanillasTOT_APORTE_MMORA: TFloatField
      FieldName = 'TOT_APORTE_MMORA'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.TOT_APORTE_MMORA'
    end
    object qryplanillasTOT_SALDO_FAV: TFloatField
      FieldName = 'TOT_SALDO_FAV'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.TOT_SALDO_FAV'
    end
    object qryplanillasTOT_UPC: TFloatField
      FieldName = 'TOT_UPC'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.TOT_UPC'
    end
    object qryplanillasTOT_PAGADO: TFloatField
      FieldName = 'TOT_PAGADO'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.TOT_PAGADO'
    end
    object qryplanillasCOD_BANCO: TStringField
      FieldName = 'COD_BANCO'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.COD_BANCO'
      Size = 3
    end
    object qryplanillasNUM_CUENTA: TStringField
      FieldName = 'NUM_CUENTA'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.NUM_CUENTA'
    end
    object qryplanillasVAL_EFECTIVO: TFloatField
      FieldName = 'VAL_EFECTIVO'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.VAL_EFECTIVO'
    end
    object qryplanillasVAL_CHEQUE: TFloatField
      FieldName = 'VAL_CHEQUE'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.VAL_CHEQUE'
    end
    object qryplanillasEST_PLANILLA: TStringField
      FieldName = 'EST_PLANILLA'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.EST_PLANILLA'
      Size = 3
    end
    object qryplanillasCOD_REGIONAL: TStringField
      FieldName = 'COD_REGIONAL'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.COD_REGIONAL'
      Size = 3
    end
    object qryplanillasCOD_OFICINA: TStringField
      FieldName = 'COD_OFICINA'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.COD_OFICINA'
      Size = 3
    end
    object qryplanillasNUM_DECLARACION: TFloatField
      FieldName = 'NUM_DECLARACION'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.NUM_DECLARACION'
    end
    object qryplanillasCRU_CONCILIACION: TStringField
      FieldName = 'CRU_CONCILIACION'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.CRU_CONCILIACION'
      Size = 1
    end
    object qryplanillasFEC_DIGITACION: TDateTimeField
      FieldName = 'FEC_DIGITACION'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.FEC_DIGITACION'
    end
    object qryplanillasTIP_DOC_USUARIO: TStringField
      FieldName = 'TIP_DOC_USUARIO'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.TIP_DOC_USUARIO'
      Size = 3
    end
    object qryplanillasNUM_DOC_USUARIO: TStringField
      FieldName = 'NUM_DOC_USUARIO'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.NUM_DOC_USUARIO'
      Size = 18
    end
    object qryplanillasFEC_MODIFICACION: TDateTimeField
      FieldName = 'FEC_MODIFICACION'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.FEC_MODIFICACION'
    end
    object qryplanillasNO_INCAP_PAG: TStringField
      FieldName = 'NO_INCAP_PAG'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.NO_INCAP_PAG'
      Size = 30
    end
    object qryplanillasVAL_INCAP_PAG: TFloatField
      FieldName = 'VAL_INCAP_PAG'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.VAL_INCAP_PAG'
    end
    object qryplanillasNO_LICEN_PAG: TStringField
      FieldName = 'NO_LICEN_PAG'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.NO_LICEN_PAG'
      Size = 30
    end
    object qryplanillasVAL_LICEN_PAG: TFloatField
      FieldName = 'VAL_LICEN_PAG'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.VAL_LICEN_PAG'
    end
    object qryplanillasNO_MESES_MORA: TFloatField
      FieldName = 'NO_MESES_MORA'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.NO_MESES_MORA'
    end
    object qryplanillasNO_PLANINILLA_ANT: TStringField
      FieldName = 'NO_PLANINILLA_ANT'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.NO_PLANINILLA_ANT'
      Size = 15
    end
    object qryplanillasVAL_NETO_UPC: TFloatField
      FieldName = 'VAL_NETO_UPC'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.VAL_NETO_UPC'
    end
    object qryplanillasVAL_INTERES_UPC: TFloatField
      FieldName = 'VAL_INTERES_UPC'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.VAL_INTERES_UPC'
    end
    object qryplanillasVAL_APORMASINT_UPC: TFloatField
      FieldName = 'VAL_APORMASINT_UPC'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.VAL_APORMASINT_UPC'
    end
    object qryplanillasVAL_SALFAVOR_UPC: TFloatField
      FieldName = 'VAL_SALFAVOR_UPC'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.VAL_SALFAVOR_UPC'
    end
    object qryplanillasVAL_PAGO_UPC: TFloatField
      FieldName = 'VAL_PAGO_UPC'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.VAL_PAGO_UPC'
    end
  end
  object qrydetplanillas: TQuery
    DatabaseName = 'SOFTEPS'
    SQL.Strings = (
      'SELECT *  FROM DBO.DET_PLANILLA_AUTOLIQUIDACION')
    Left = 208
    Top = 266
    object qrydetplanillasNUM_PLANILLA: TStringField
      FieldName = 'NUM_PLANILLA'
      Origin = 'SOFTEPS.DET_PLANILLA_AUTOLIQUIDACION.NUM_PLANILLA'
      Size = 15
    end
    object qrydetplanillasAFI_TIPO_DOC: TStringField
      FieldName = 'AFI_TIPO_DOC'
      Origin = 'SOFTEPS.DET_PLANILLA_AUTOLIQUIDACION.AFI_TIPO_DOC'
      Size = 3
    end
    object qrydetplanillasAFI_NUMERO_DOC: TStringField
      FieldName = 'AFI_NUMERO_DOC'
      Origin = 'SOFTEPS.DET_PLANILLA_AUTOLIQUIDACION.AFI_NUMERO_DOC'
      Size = 18
    end
    object qrydetplanillasNOV_ING: TStringField
      FieldName = 'NOV_ING'
      Origin = 'SOFTEPS.DET_PLANILLA_AUTOLIQUIDACION.NOV_ING'
      Size = 1
    end
    object qrydetplanillasNOV_RET: TStringField
      FieldName = 'NOV_RET'
      Origin = 'SOFTEPS.DET_PLANILLA_AUTOLIQUIDACION.NOV_RET'
      Size = 1
    end
    object qrydetplanillasNOV_TDA: TStringField
      FieldName = 'NOV_TDA'
      Origin = 'SOFTEPS.DET_PLANILLA_AUTOLIQUIDACION.NOV_TDA'
      Size = 1
    end
    object qrydetplanillasNOV_TAA: TStringField
      FieldName = 'NOV_TAA'
      Origin = 'SOFTEPS.DET_PLANILLA_AUTOLIQUIDACION.NOV_TAA'
      Size = 1
    end
    object qrydetplanillasNOV_VSP: TStringField
      FieldName = 'NOV_VSP'
      Origin = 'SOFTEPS.DET_PLANILLA_AUTOLIQUIDACION.NOV_VSP'
      Size = 1
    end
    object qrydetplanillasNOV_VST: TStringField
      FieldName = 'NOV_VST'
      Origin = 'SOFTEPS.DET_PLANILLA_AUTOLIQUIDACION.NOV_VST'
      Size = 1
    end
    object qrydetplanillasNOV_SLN: TStringField
      FieldName = 'NOV_SLN'
      Origin = 'SOFTEPS.DET_PLANILLA_AUTOLIQUIDACION.NOV_SLN'
      Size = 1
    end
    object qrydetplanillasNOV_IGE: TStringField
      FieldName = 'NOV_IGE'
      Origin = 'SOFTEPS.DET_PLANILLA_AUTOLIQUIDACION.NOV_IGE'
      Size = 1
    end
    object qrydetplanillasNOV_LMA: TStringField
      FieldName = 'NOV_LMA'
      Origin = 'SOFTEPS.DET_PLANILLA_AUTOLIQUIDACION.NOV_LMA'
      Size = 1
    end
    object qrydetplanillasNOV_VAC: TStringField
      FieldName = 'NOV_VAC'
      Origin = 'SOFTEPS.DET_PLANILLA_AUTOLIQUIDACION.NOV_VAC'
      Size = 1
    end
    object qrydetplanillasDIA_COTIZADOS: TStringField
      FieldName = 'DIA_COTIZADOS'
      Origin = 'SOFTEPS.DET_PLANILLA_AUTOLIQUIDACION.DIA_COTIZADOS'
      Size = 2
    end
    object qrydetplanillasSAL_BASE: TFloatField
      FieldName = 'SAL_BASE'
      Origin = 'SOFTEPS.DET_PLANILLA_AUTOLIQUIDACION.SAL_BASE'
    end
    object qrydetplanillasVAL_NETO_NOV: TFloatField
      FieldName = 'VAL_NETO_NOV'
      Origin = 'SOFTEPS.DET_PLANILLA_AUTOLIQUIDACION.VAL_NETO_NOV'
    end
    object qrydetplanillasING_BASE_COT: TFloatField
      FieldName = 'ING_BASE_COT'
      Origin = 'SOFTEPS.DET_PLANILLA_AUTOLIQUIDACION.ING_BASE_COT'
    end
    object qrydetplanillasCOT_OBLIGATORIA: TFloatField
      FieldName = 'COT_OBLIGATORIA'
      Origin = 'SOFTEPS.DET_PLANILLA_AUTOLIQUIDACION.COT_OBLIGATORIA'
    end
    object qrydetplanillasNUM_INCAPACIDAD_EGR: TStringField
      FieldName = 'NUM_INCAPACIDAD_EGR'
      Origin = 'SOFTEPS.DET_PLANILLA_AUTOLIQUIDACION.NUM_INCAPACIDAD_EGR'
      Size = 10
    end
    object qrydetplanillasVAL_INCAPACIDAD_EGR: TFloatField
      FieldName = 'VAL_INCAPACIDAD_EGR'
      Origin = 'SOFTEPS.DET_PLANILLA_AUTOLIQUIDACION.VAL_INCAPACIDAD_EGR'
    end
    object qrydetplanillasNUM_LICENCIA_MAT: TStringField
      FieldName = 'NUM_LICENCIA_MAT'
      Origin = 'SOFTEPS.DET_PLANILLA_AUTOLIQUIDACION.NUM_LICENCIA_MAT'
      Size = 10
    end
    object qrydetplanillasVAL_LICENCIA_MAT: TFloatField
      FieldName = 'VAL_LICENCIA_MAT'
      Origin = 'SOFTEPS.DET_PLANILLA_AUTOLIQUIDACION.VAL_LICENCIA_MAT'
    end
    object qrydetplanillasVAL_UPC_ADI: TFloatField
      FieldName = 'VAL_UPC_ADI'
      Origin = 'SOFTEPS.DET_PLANILLA_AUTOLIQUIDACION.VAL_UPC_ADI'
    end
    object qrydetplanillasVAL_TOTAL_COT: TFloatField
      FieldName = 'VAL_TOTAL_COT'
      Origin = 'SOFTEPS.DET_PLANILLA_AUTOLIQUIDACION.VAL_TOTAL_COT'
    end
    object qrydetplanillasDET_ESTADO: TStringField
      FieldName = 'DET_ESTADO'
      Origin = 'SOFTEPS.DET_PLANILLA_AUTOLIQUIDACION.DET_ESTADO'
      Size = 2
    end
    object qrydetplanillasPER_COTIZACION: TStringField
      FieldName = 'PER_COTIZACION'
      Origin = 'SOFTEPS.DET_PLANILLA_AUTOLIQUIDACION.PER_COTIZACION'
      Size = 7
    end
    object qrydetplanillasPER_PRESENTACION: TStringField
      FieldName = 'PER_PRESENTACION'
      Origin = 'SOFTEPS.DET_PLANILLA_AUTOLIQUIDACION.PER_PRESENTACION'
      Size = 7
    end
    object qrydetplanillasCOD_OFICINA: TStringField
      FieldName = 'COD_OFICINA'
      Origin = 'SOFTEPS.DET_PLANILLA_AUTOLIQUIDACION.COD_OFICINA'
      Size = 3
    end
    object qrydetplanillasNUM_DECLARACION: TIntegerField
      FieldName = 'NUM_DECLARACION'
      Origin = 'SOFTEPS.DET_PLANILLA_AUTOLIQUIDACION.NUM_DECLARACION'
    end
  end
  object qrymaxpago: TQuery
    DatabaseName = 'SOFTEPS'
    SQL.Strings = (
      'select  MAX(PER_COTIZACION) from DBO.autoliquidacion '
      ' where emp_tipo_doc = :'#39'NIT'#39' and'
      '   emp_numero_doc = :'#39'NUMERO'#39)
    Left = 276
    Top = 270
    ParamData = <
      item
        DataType = ftString
        Name = 'NIT'
        ParamType = ptUnknown
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'NUMERO'
        ParamType = ptUnknown
        Value = '0'
      end>
    object qrymaxpagoMAXPER_COTIZACION: TStringField
      FieldName = 'MAX(PER_COTIZACION)'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.PER_COTIZACION'
      Size = 7
    end
  end
  object dtsafiliaempresa: TDataSource
    DataSet = qryafiliadosempresa
    Left = 354
    Top = 266
  end
  object qryrelacion_afiliados: TQuery
    DatabaseName = 'SOFTEPS'
    SQL.Strings = (
      'SELECT * FROM DBO.RELACION_AFILIADOS')
    Left = 442
    Top = 268
    object qryrelacion_afiliadosTIP_DOCUMENTO_COT: TStringField
      FieldName = 'TIP_DOCUMENTO_COT'
      Origin = 'SOFTEPS.RELACION_AFILIADOS.TIP_DOCUMENTO_COT'
      Size = 3
    end
    object qryrelacion_afiliadosNUM_DOCUMENTO_COT: TStringField
      FieldName = 'NUM_DOCUMENTO_COT'
      Origin = 'SOFTEPS.RELACION_AFILIADOS.NUM_DOCUMENTO_COT'
      Size = 18
    end
    object qryrelacion_afiliadosTIP_DOCUMENTO_BEN: TStringField
      FieldName = 'TIP_DOCUMENTO_BEN'
      Origin = 'SOFTEPS.RELACION_AFILIADOS.TIP_DOCUMENTO_BEN'
      Size = 3
    end
    object qryrelacion_afiliadosNUM_DOCUMENTO_BEN: TStringField
      FieldName = 'NUM_DOCUMENTO_BEN'
      Origin = 'SOFTEPS.RELACION_AFILIADOS.NUM_DOCUMENTO_BEN'
      Size = 18
    end
    object qryrelacion_afiliadosFEC_INCLUSION_NOV: TDateTimeField
      FieldName = 'FEC_INCLUSION_NOV'
      Origin = 'SOFTEPS.RELACION_AFILIADOS.FEC_INCLUSION_NOV'
    end
    object qryrelacion_afiliadosCOD_PARENTESCO: TStringField
      FieldName = 'COD_PARENTESCO'
      Origin = 'SOFTEPS.RELACION_AFILIADOS.COD_PARENTESCO'
      Size = 3
    end
    object qryrelacion_afiliadosFEC_EXCLUSION_NOV: TDateTimeField
      FieldName = 'FEC_EXCLUSION_NOV'
      Origin = 'SOFTEPS.RELACION_AFILIADOS.FEC_EXCLUSION_NOV'
    end
    object qryrelacion_afiliadosCOD_ESTADO: TStringField
      FieldName = 'COD_ESTADO'
      Origin = 'SOFTEPS.RELACION_AFILIADOS.COD_ESTADO'
      Size = 2
    end
    object qryrelacion_afiliadosCOD_RELACION_ADI: TStringField
      FieldName = 'COD_RELACION_ADI'
      Origin = 'SOFTEPS.RELACION_AFILIADOS.COD_RELACION_ADI'
      Size = 2
    end
  end
  object qrynovafiliados: TQuery
    DatabaseName = 'SOFTEPS'
    SQL.Strings = (
      'SELECT * FROM DBO.NOVEDADES_AFILIADOS')
    Left = 524
    Top = 264
    object qrynovafiliadosCOD_NOVEDAD_AFIL: TFloatField
      FieldName = 'COD_NOVEDAD_AFIL'
      Origin = 'SOFTEPS.NOVEDADES_AFILIADOS.COD_NOVEDAD_AFIL'
    end
    object qrynovafiliadosNOV_CODIGO: TStringField
      FieldName = 'NOV_CODIGO'
      Origin = 'SOFTEPS.NOVEDADES_AFILIADOS.NOV_CODIGO'
      Size = 3
    end
    object qrynovafiliadosTIP_DOCUMENTO: TStringField
      FieldName = 'TIP_DOCUMENTO'
      Origin = 'SOFTEPS.NOVEDADES_AFILIADOS.TIP_DOCUMENTO'
      Size = 3
    end
    object qrynovafiliadosNUM_DOCUMENTO: TStringField
      FieldName = 'NUM_DOCUMENTO'
      Origin = 'SOFTEPS.NOVEDADES_AFILIADOS.NUM_DOCUMENTO'
      Size = 18
    end
    object qrynovafiliadosCOD_OFICINA: TStringField
      FieldName = 'COD_OFICINA'
      Origin = 'SOFTEPS.NOVEDADES_AFILIADOS.COD_OFICINA'
      Size = 3
    end
    object qrynovafiliadosCOD_REGIONAL: TStringField
      FieldName = 'COD_REGIONAL'
      Origin = 'SOFTEPS.NOVEDADES_AFILIADOS.COD_REGIONAL'
      Size = 3
    end
    object qrynovafiliadosUSU_TIPO_DOC: TStringField
      FieldName = 'USU_TIPO_DOC'
      Origin = 'SOFTEPS.NOVEDADES_AFILIADOS.USU_TIPO_DOC'
      Size = 3
    end
    object qrynovafiliadosUSU_NUMERO_DOC: TStringField
      FieldName = 'USU_NUMERO_DOC'
      Origin = 'SOFTEPS.NOVEDADES_AFILIADOS.USU_NUMERO_DOC'
      Size = 18
    end
    object qrynovafiliadosFEC_NOVEDAD_AFIL: TDateTimeField
      FieldName = 'FEC_NOVEDAD_AFIL'
      Origin = 'SOFTEPS.NOVEDADES_AFILIADOS.FEC_NOVEDAD_AFIL'
    end
    object qrynovafiliadosNOM_CAMPO: TStringField
      FieldName = 'NOM_CAMPO'
      Origin = 'SOFTEPS.NOVEDADES_AFILIADOS.NOM_CAMPO'
      Size = 30
    end
    object qrynovafiliadosDAT_CAMPO_ANT: TStringField
      FieldName = 'DAT_CAMPO_ANT'
      Origin = 'SOFTEPS.NOVEDADES_AFILIADOS.DAT_CAMPO_ANT'
      Size = 50
    end
    object qrynovafiliadosNOM_TABLA: TStringField
      FieldName = 'NOM_TABLA'
      Origin = 'SOFTEPS.NOVEDADES_AFILIADOS.NOM_TABLA'
      Size = 30
    end
    object qrynovafiliadosDAT_CAMPO_DES: TStringField
      FieldName = 'DAT_CAMPO_DES'
      Origin = 'SOFTEPS.NOVEDADES_AFILIADOS.DAT_CAMPO_DES'
      Size = 50
    end
    object qrynovafiliadosFEC_EVENTO: TDateTimeField
      FieldName = 'FEC_EVENTO'
      Origin = 'SOFTEPS.NOVEDADES_AFILIADOS.FEC_EVENTO'
    end
    object qrynovafiliadosFEC_APLICATIVO: TDateTimeField
      FieldName = 'FEC_APLICATIVO'
      Origin = 'SOFTEPS.NOVEDADES_AFILIADOS.FEC_APLICATIVO'
    end
    object qrynovafiliadosTIP_DOCUMENTO_EMP: TStringField
      FieldName = 'TIP_DOCUMENTO_EMP'
      Origin = 'SOFTEPS.NOVEDADES_AFILIADOS.TIP_DOCUMENTO_EMP'
      Size = 3
    end
    object qrynovafiliadosNUM_DOCUMENTO_EMP: TStringField
      FieldName = 'NUM_DOCUMENTO_EMP'
      Origin = 'SOFTEPS.NOVEDADES_AFILIADOS.NUM_DOCUMENTO_EMP'
      Size = 18
    end
    object qrynovafiliadosCOD_SUCURSAL: TStringField
      FieldName = 'COD_SUCURSAL'
      Origin = 'SOFTEPS.NOVEDADES_AFILIADOS.COD_SUCURSAL'
      Size = 2
    end
    object qrynovafiliadosNUM_PLANILLA: TStringField
      FieldName = 'NUM_PLANILLA'
      Origin = 'SOFTEPS.NOVEDADES_AFILIADOS.NUM_PLANILLA'
      Size = 15
    end
  end
  object qryafiliadoss: TQuery
    DatabaseName = 'SOFTEPS'
    SQL.Strings = (
      'SELECT * FROM DBO.AFILIADOS')
    Left = 588
    Top = 272
    object qryafiliadossTIP_DOCUMENTO: TStringField
      FieldName = 'TIP_DOCUMENTO'
      Origin = 'SOFTEPS.AFILIADOS.TIP_DOCUMENTO'
      Size = 3
    end
    object qryafiliadossNUM_DOCUMENTO: TStringField
      FieldName = 'NUM_DOCUMENTO'
      Origin = 'SOFTEPS.AFILIADOS.NUM_DOCUMENTO'
      Size = 18
    end
    object qryafiliadossCOD_SEXO: TStringField
      FieldName = 'COD_SEXO'
      Origin = 'SOFTEPS.AFILIADOS.COD_SEXO'
      Size = 1
    end
    object qryafiliadossCOD_TIPO_AFIL: TStringField
      FieldName = 'COD_TIPO_AFIL'
      Origin = 'SOFTEPS.AFILIADOS.COD_TIPO_AFIL'
      Size = 1
    end
    object qryafiliadossCOD_MODALIDAD_TRA: TStringField
      FieldName = 'COD_MODALIDAD_TRA'
      Origin = 'SOFTEPS.AFILIADOS.COD_MODALIDAD_TRA'
      Size = 1
    end
    object qryafiliadossCOD_ESTADO_CIV: TStringField
      FieldName = 'COD_ESTADO_CIV'
      Origin = 'SOFTEPS.AFILIADOS.COD_ESTADO_CIV'
      Size = 1
    end
    object qryafiliadossCOD_ESTRATO: TStringField
      FieldName = 'COD_ESTRATO'
      Origin = 'SOFTEPS.AFILIADOS.COD_ESTRATO'
      Size = 3
    end
    object qryafiliadossCOD_ESCOLARIDAD: TStringField
      FieldName = 'COD_ESCOLARIDAD'
      Origin = 'SOFTEPS.AFILIADOS.COD_ESCOLARIDAD'
      Size = 3
    end
    object qryafiliadossCOD_PROFESION: TStringField
      FieldName = 'COD_PROFESION'
      Origin = 'SOFTEPS.AFILIADOS.COD_PROFESION'
      Size = 3
    end
    object qryafiliadossCOD_ESTADO: TStringField
      FieldName = 'COD_ESTADO'
      Origin = 'SOFTEPS.AFILIADOS.COD_ESTADO'
      Size = 2
    end
    object qryafiliadossCOD_OFICINA: TStringField
      FieldName = 'COD_OFICINA'
      Origin = 'SOFTEPS.AFILIADOS.COD_OFICINA'
      Size = 3
    end
    object qryafiliadossCOD_REGIONAL: TStringField
      FieldName = 'COD_REGIONAL'
      Origin = 'SOFTEPS.AFILIADOS.COD_REGIONAL'
      Size = 3
    end
    object qryafiliadossPRI_NOMBRE: TStringField
      FieldName = 'PRI_NOMBRE'
      Origin = 'SOFTEPS.AFILIADOS.PRI_NOMBRE'
      Size = 25
    end
    object qryafiliadossSEG_NOMBRE: TStringField
      FieldName = 'SEG_NOMBRE'
      Origin = 'SOFTEPS.AFILIADOS.SEG_NOMBRE'
      Size = 25
    end
    object qryafiliadossPRI_APELLIDO: TStringField
      FieldName = 'PRI_APELLIDO'
      Origin = 'SOFTEPS.AFILIADOS.PRI_APELLIDO'
      Size = 25
    end
    object qryafiliadossSEG_APELLIDO: TStringField
      FieldName = 'SEG_APELLIDO'
      Origin = 'SOFTEPS.AFILIADOS.SEG_APELLIDO'
      Size = 25
    end
    object qryafiliadossFEC_NACIMIENTO: TDateTimeField
      FieldName = 'FEC_NACIMIENTO'
      Origin = 'SOFTEPS.AFILIADOS.FEC_NACIMIENTO'
    end
    object qryafiliadossFEC_AFILIACION_SIS: TDateTimeField
      FieldName = 'FEC_AFILIACION_SIS'
      Origin = 'SOFTEPS.AFILIADOS.FEC_AFILIACION_SIS'
    end
    object qryafiliadossFEC_AFILIACION_UNI: TDateTimeField
      FieldName = 'FEC_AFILIACION_UNI'
      Origin = 'SOFTEPS.AFILIADOS.FEC_AFILIACION_UNI'
    end
    object qryafiliadossEPS_TIP_DOC: TStringField
      FieldName = 'EPS_TIP_DOC'
      Origin = 'SOFTEPS.AFILIADOS.EPS_TIP_DOC'
      Size = 3
    end
    object qryafiliadossEPS_NUM_DOC: TStringField
      FieldName = 'EPS_NUM_DOC'
      Origin = 'SOFTEPS.AFILIADOS.EPS_NUM_DOC'
      Size = 18
    end
    object qryafiliadossCOD_DEPARTAMENTO_RES: TStringField
      FieldName = 'COD_DEPARTAMENTO_RES'
      Origin = 'SOFTEPS.AFILIADOS.COD_DEPARTAMENTO_RES'
      Size = 2
    end
    object qryafiliadossCOD_CIUDAD_RES: TStringField
      FieldName = 'COD_CIUDAD_RES'
      Origin = 'SOFTEPS.AFILIADOS.COD_CIUDAD_RES'
      Size = 3
    end
    object qryafiliadossCOD_BARRIO_RES: TStringField
      FieldName = 'COD_BARRIO_RES'
      Origin = 'SOFTEPS.AFILIADOS.COD_BARRIO_RES'
      Size = 3
    end
    object qryafiliadossCOD_ZONA: TStringField
      FieldName = 'COD_ZONA'
      Origin = 'SOFTEPS.AFILIADOS.COD_ZONA'
      Size = 3
    end
    object qryafiliadossACE_TIP_DOC: TStringField
      FieldName = 'ACE_TIP_DOC'
      Origin = 'SOFTEPS.AFILIADOS.ACE_TIP_DOC'
      Size = 3
    end
    object qryafiliadossACE_NUMERO_DOC: TStringField
      FieldName = 'ACE_NUMERO_DOC'
      Origin = 'SOFTEPS.AFILIADOS.ACE_NUMERO_DOC'
      Size = 18
    end
    object qryafiliadossCOD_DISCAPACIDAD: TStringField
      FieldName = 'COD_DISCAPACIDAD'
      Origin = 'SOFTEPS.AFILIADOS.COD_DISCAPACIDAD'
      Size = 1
    end
    object qryafiliadossNUM_SEMANA_COTIZA: TFloatField
      FieldName = 'NUM_SEMANA_COTIZA'
      Origin = 'SOFTEPS.AFILIADOS.NUM_SEMANA_COTIZA'
    end
    object qryafiliadossFEC_RADICACION: TDateTimeField
      FieldName = 'FEC_RADICACION'
      Origin = 'SOFTEPS.AFILIADOS.FEC_RADICACION'
    end
    object qryafiliadossNUM_FORMATO_AFIL: TStringField
      FieldName = 'NUM_FORMATO_AFIL'
      Origin = 'SOFTEPS.AFILIADOS.NUM_FORMATO_AFIL'
      Size = 10
    end
    object qryafiliadossDIR_AFILIADO_RES: TStringField
      FieldName = 'DIR_AFILIADO_RES'
      Origin = 'SOFTEPS.AFILIADOS.DIR_AFILIADO_RES'
      Size = 50
    end
    object qryafiliadossTEL_AFILIADO_RES: TStringField
      FieldName = 'TEL_AFILIADO_RES'
      Origin = 'SOFTEPS.AFILIADOS.TEL_AFILIADO_RES'
    end
    object qryafiliadossTEL_AFILIADO_RES2: TStringField
      FieldName = 'TEL_AFILIADO_RES2'
      Origin = 'SOFTEPS.AFILIADOS.TEL_AFILIADO_RES2'
    end
    object qryafiliadossCEL_AFILIADO: TStringField
      FieldName = 'CEL_AFILIADO'
      Origin = 'SOFTEPS.AFILIADOS.CEL_AFILIADO'
    end
    object qryafiliadossEML_AFILIADO: TStringField
      FieldName = 'EML_AFILIADO'
      Origin = 'SOFTEPS.AFILIADOS.EML_AFILIADO'
      Size = 50
    end
    object qryafiliadossFEC_ULTIMA_NOV: TDateTimeField
      FieldName = 'FEC_ULTIMA_NOV'
      Origin = 'SOFTEPS.AFILIADOS.FEC_ULTIMA_NOV'
    end
    object qryafiliadossTIP_DOCUMENTO_IPS: TStringField
      FieldName = 'TIP_DOCUMENTO_IPS'
      Origin = 'SOFTEPS.AFILIADOS.TIP_DOCUMENTO_IPS'
      Size = 3
    end
    object qryafiliadossNUM_DOCUMENTO_IPS: TStringField
      FieldName = 'NUM_DOCUMENTO_IPS'
      Origin = 'SOFTEPS.AFILIADOS.NUM_DOCUMENTO_IPS'
      Size = 18
    end
    object qryafiliadossTIP_DOCUMENTO_MED: TStringField
      FieldName = 'TIP_DOCUMENTO_MED'
      Origin = 'SOFTEPS.AFILIADOS.TIP_DOCUMENTO_MED'
      Size = 3
    end
    object qryafiliadossNUM_DOCUMENTO_MED: TStringField
      FieldName = 'NUM_DOCUMENTO_MED'
      Origin = 'SOFTEPS.AFILIADOS.NUM_DOCUMENTO_MED'
      Size = 18
    end
    object qryafiliadossTIP_DOCUMENTO_ODO: TStringField
      FieldName = 'TIP_DOCUMENTO_ODO'
      Origin = 'SOFTEPS.AFILIADOS.TIP_DOCUMENTO_ODO'
      Size = 3
    end
    object qryafiliadossNUM_DOCUMENTO_ODO: TStringField
      FieldName = 'NUM_DOCUMENTO_ODO'
      Origin = 'SOFTEPS.AFILIADOS.NUM_DOCUMENTO_ODO'
      Size = 18
    end
    object qryafiliadossSEM_COTIZACION: TFloatField
      FieldName = 'SEM_COTIZACION'
      Origin = 'SOFTEPS.AFILIADOS.SEM_COTIZACION'
    end
  end
  object qrydepartamentos: TQuery
    DatabaseName = 'SOFTEPS'
    SQL.Strings = (
      'SELECT * FROM DBO.DEPARTAMENTOS')
    Left = 38
    Top = 320
    object qrydepartamentosCOD_DEPARTAMENTO: TStringField
      FieldName = 'COD_DEPARTAMENTO'
      Origin = 'SOFTEPS.DEPARTAMENTOS.COD_DEPARTAMENTO'
      Size = 2
    end
    object qrydepartamentosNOM_DEPARTAMENTO: TStringField
      FieldName = 'NOM_DEPARTAMENTO'
      Origin = 'SOFTEPS.DEPARTAMENTOS.NOM_DEPARTAMENTO'
      Size = 35
    end
  end
  object qryciudades: TQuery
    DatabaseName = 'SOFTEPS'
    SQL.Strings = (
      'SELECT * FROM DBO.CIUDADES')
    Left = 140
    Top = 326
    object qryciudadesCOD_DEPARTAMENTO: TStringField
      FieldName = 'COD_DEPARTAMENTO'
      Origin = 'SOFTEPS.CIUDADES.COD_DEPARTAMENTO'
      Size = 2
    end
    object qryciudadesCOD_CIUDAD: TStringField
      FieldName = 'COD_CIUDAD'
      Origin = 'SOFTEPS.CIUDADES.COD_CIUDAD'
      Size = 3
    end
    object qryciudadesNOM_CIUDAD: TStringField
      FieldName = 'NOM_CIUDAD'
      Origin = 'SOFTEPS.CIUDADES.NOM_CIUDAD'
      Size = 35
    end
    object qryciudadesPOR_ALTO_RIE: TStringField
      FieldName = 'POR_ALTO_RIE'
      Origin = 'SOFTEPS.CIUDADES.POR_ALTO_RIE'
      Size = 3
    end
    object qryciudadesCOD_REGIONAL: TStringField
      FieldName = 'COD_REGIONAL'
      Origin = 'SOFTEPS.CIUDADES.COD_REGIONAL'
      Size = 3
    end
    object qryciudadesVALOR_UPC: TFloatField
      FieldName = 'VALOR_UPC'
      Origin = 'SOFTEPS.CIUDADES.VALOR_UPC'
    end
    object qryciudadesCEN_COSTO: TStringField
      FieldName = 'CEN_COSTO'
      Origin = 'SOFTEPS.CIUDADES.CEN_COSTO'
      Size = 6
    end
  end
  object dtsdepartamentos: TDataSource
    DataSet = qrydepartamentos
    Left = 222
    Top = 330
  end
  object dtsciudades: TDataSource
    DataSet = qryciudades
    Left = 280
    Top = 322
  end
  object qrydocumentos: TQuery
    DatabaseName = 'SOFTEPS'
    SQL.Strings = (
      'SELECT * FROM DBO.TIPOS_DOCUMENTOS ORDER BY  TIP_DOCUMENTO')
    Left = 324
    Top = 14
    object qrydocumentosTIP_DOCUMENTO: TStringField
      FieldName = 'TIP_DOCUMENTO'
      Origin = 'SOFTEPS.TIPOS_DOCUMENTOS.TIP_DOCUMENTO'
      Size = 3
    end
    object qrydocumentosNOM_DOCUMENTO: TStringField
      FieldName = 'NOM_DOCUMENTO'
      Origin = 'SOFTEPS.TIPOS_DOCUMENTOS.NOM_DOCUMENTO'
      Size = 35
    end
  end
  object qrydetallepago: TQuery
    DatabaseName = 'SOFTEPS'
    SQL.Strings = (
      'SELECT * FROM DBO.DET_PAGO_AUTOLIQUIDACIONES')
    Left = 364
    Top = 336
    object qrydetallepagoNUM_PLANILLA: TStringField
      FieldName = 'NUM_PLANILLA'
      Origin = 'SOFTEPS.DET_PAGO_AUTOLIQUIDACIONES.NUM_PLANILLA'
      Size = 15
    end
    object qrydetallepagoCOD_BANCO: TStringField
      FieldName = 'COD_BANCO'
      Origin = 'SOFTEPS.DET_PAGO_AUTOLIQUIDACIONES.COD_BANCO'
      Size = 10
    end
    object qrydetallepagoNUM_CUENTA: TStringField
      FieldName = 'NUM_CUENTA'
      Origin = 'SOFTEPS.DET_PAGO_AUTOLIQUIDACIONES.NUM_CUENTA'
      Size = 10
    end
    object qrydetallepagoVAL_CHEQUE: TFloatField
      FieldName = 'VAL_CHEQUE'
      Origin = 'SOFTEPS.DET_PAGO_AUTOLIQUIDACIONES.VAL_CHEQUE'
    end
  end
  object qrynotasautoliquidacion: TQuery
    DatabaseName = 'SOFTEPS'
    SQL.Strings = (
      'SELECT * FROM DBO.NOTAS_AUTOLIQUIDACION')
    Left = 482
    Top = 336
    object qrynotasautoliquidacionNUM_PLANILLA: TStringField
      FieldName = 'NUM_PLANILLA'
      Origin = 'SOFTEPS.NOTAS_AUTOLIQUIDACION.NUM_PLANILLA'
      Size = 15
    end
    object qrynotasautoliquidacionTIP_DOC_EMPRESA: TStringField
      FieldName = 'TIP_DOC_EMPRESA'
      Origin = 'SOFTEPS.NOTAS_AUTOLIQUIDACION.TIP_DOC_EMPRESA'
      Size = 3
    end
    object qrynotasautoliquidacionNUM_DOC_EMPRESA: TStringField
      FieldName = 'NUM_DOC_EMPRESA'
      Origin = 'SOFTEPS.NOTAS_AUTOLIQUIDACION.NUM_DOC_EMPRESA'
      Size = 18
    end
    object qrynotasautoliquidacionTIP_NOTA: TStringField
      FieldName = 'TIP_NOTA'
      Origin = 'SOFTEPS.NOTAS_AUTOLIQUIDACION.TIP_NOTA'
      FixedChar = True
      Size = 1
    end
    object qrynotasautoliquidacionVAL_NOTA: TFloatField
      FieldName = 'VAL_NOTA'
      Origin = 'SOFTEPS.NOTAS_AUTOLIQUIDACION.VAL_NOTA'
    end
    object qrynotasautoliquidacionNUM_COMP_DES: TStringField
      FieldName = 'NUM_COMP_DES'
      Origin = 'SOFTEPS.NOTAS_AUTOLIQUIDACION.VAL_NOTA'
      Size = 15
    end
    object qrynotasautoliquidacionFEC_DESCUENTO: TDateTimeField
      FieldName = 'FEC_DESCUENTO'
      Origin = 'SOFTEPS.NOTAS_AUTOLIQUIDACION.VAL_NOTA'
    end
    object qrynotasautoliquidacionTIP_DESCUENTO: TStringField
      FieldName = 'TIP_DESCUENTO'
      Origin = 'SOFTEPS.NOTAS_AUTOLIQUIDACION.TIP_DESCUENTO'
      Size = 1
    end
  end
  object qrycompania: TQuery
    DatabaseName = 'SOFTEPS'
    SQL.Strings = (
      'SELECT *  FROM DBO.COMPANIA')
    Left = 522
    Top = 219
    object qrycompaniaTIP_DOCUMENTO: TStringField
      FieldName = 'TIP_DOCUMENTO'
      Origin = 'SOFTEPS.COMPANIA.TIP_DOCUMENTO'
      Size = 3
    end
    object qrycompaniaNUM_DOCUMENTO: TStringField
      FieldName = 'NUM_DOCUMENTO'
      Origin = 'SOFTEPS.COMPANIA.NUM_DOCUMENTO'
      Size = 18
    end
    object qrycompaniaNOM_EPS: TStringField
      FieldName = 'NOM_EPS'
      Origin = 'SOFTEPS.COMPANIA.NOM_EPS'
      Size = 100
    end
    object qrycompaniaFEC_INCLUSION: TDateTimeField
      FieldName = 'FEC_INCLUSION'
      Origin = 'SOFTEPS.COMPANIA.FEC_INCLUSION'
    end
    object qrycompaniaCOD_EPS: TStringField
      FieldName = 'COD_EPS'
      Origin = 'SOFTEPS.COMPANIA.COD_EPS'
      Size = 6
    end
    object qrycompaniaDIR_EPS: TStringField
      FieldName = 'DIR_EPS'
      Origin = 'SOFTEPS.COMPANIA.DIR_EPS'
      Size = 50
    end
    object qrycompaniaTEL_EPS: TStringField
      FieldName = 'TEL_EPS'
      Origin = 'SOFTEPS.COMPANIA.TEL_EPS'
    end
    object qrycompaniaFAX_EPS: TStringField
      FieldName = 'FAX_EPS'
      Origin = 'SOFTEPS.COMPANIA.FAX_EPS'
    end
    object qrycompaniaREP_LEGAL: TStringField
      FieldName = 'REP_LEGAL'
      Origin = 'SOFTEPS.COMPANIA.REP_LEGAL'
      Size = 100
    end
    object qrycompaniaEML_EPS: TStringField
      FieldName = 'EML_EPS'
      Origin = 'SOFTEPS.COMPANIA.EML_EPS'
      Size = 50
    end
  end
  object DTBDATAMEC: TDatabase
    AliasName = 'softeps'
    DatabaseName = 'SOFTEPS'
    LoginPrompt = False
    Params.Strings = (
      'SERVER NAME=DBO'
      'USER NAME=DBO'
      'NET PROTOCOL=TCP/IP'
      'OPEN MODE=READ/WRITE'
      'SCHEMA CACHE SIZE=8'
      'LANGDRIVER='
      'SQLQRYMODE='
      'SQLPASSTHRU MODE=SHARED AUTOCOMMIT'
      'SCHEMA CACHE TIME=-1'
      'MAX ROWS=-1'
      'BATCH COUNT=200'
      'ENABLE SCHEMA CACHE=FALSE'
      'SCHEMA CACHE DIR='
      'ENABLE BCD=FALSE'
      'ENABLE INTEGERS=FALSE'
      'LIST SYNONYMS=ALL'
      'ROWSET SIZE=20'
      'BLOBS TO CACHE=64'
      'BLOB SIZE=32'
      'OBJECT MODE=TRUE'
      'PASSWORD=PIPO')
    SessionName = 'Default'
    Left = 610
    Top = 172
  end
end
