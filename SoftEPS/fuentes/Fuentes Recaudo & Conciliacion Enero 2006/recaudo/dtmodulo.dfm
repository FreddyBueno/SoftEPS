object DataModule1: TDataModule1
  OldCreateOrder = True
  Left = 268
  Top = 140
  Height = 574
  Width = 719
  object dtsautoliquidacion: TDataSource
    DataSet = qryautoliquidacion
    Left = 228
    Top = 306
  end
  object dtsdetalleauto: TDataSource
    DataSet = qrydetalle
    Left = 350
    Top = 306
  end
  object dtsempresas: TDataSource
    DataSet = qryempresas
    Left = 552
    Top = 358
  end
  object dtsafilados: TDataSource
    DataSet = qryafiliados
    Left = 348
    Top = 196
  end
  object dtsdocumento: TDataSource
    DataSet = qrydocumentos
    Left = 105
    Top = 120
  end
  object dtsafiliadoauto: TDataSource
    DataSet = qryafiliadoauto
    Left = 189
    Top = 190
  end
  object dtsbancos: TDataSource
    DataSet = qrybancos
    Left = 427
    Top = 189
  end
  object dtsafiliaempresa: TDataSource
    DataSet = qryafiliadosempresa
    Left = 546
    Top = 250
  end
  object dtsdepartamentos: TDataSource
    DataSet = qrydepartamentos
    Left = 22
    Top = 270
  end
  object dtsciudades: TDataSource
    DataSet = qryciudades
    Left = 120
    Top = 410
  end
  object DTBDATAMEC: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=1234;Persist Security Info=True;Use' +
      'r ID=consulta;Initial Catalog=SOFTARS;Data Source=SALUDVIDA1;Use' +
      ' Procedure for Prepare=1;Auto Translate=True;Packet Size=4096;Wo' +
      'rkstation ID=BTA_SISTEMAS2;Use Encryption for Data=False;Tag wit' +
      'h column collation when possible=False'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 22
    Top = 172
  end
  object qryautoliquidacion: TADOQuery
    Connection = DTBDATAMEC
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM  AUTOLIQUIDACION')
    Left = 144
    Top = 304
    object qryautoliquidacionNUM_PLANILLA: TStringField
      FieldName = 'NUM_PLANILLA'
      Size = 15
    end
    object qryautoliquidacionEMP_TIPO_DOC: TStringField
      FieldName = 'EMP_TIPO_DOC'
      Size = 3
    end
    object qryautoliquidacionEMP_NUMERO_DOC: TStringField
      FieldName = 'EMP_NUMERO_DOC'
      Size = 18
    end
    object qryautoliquidacionCOD_SUCURSAL: TStringField
      FieldName = 'COD_SUCURSAL'
      Size = 2
    end
    object qryautoliquidacionTIP_DECLARACION: TStringField
      FieldName = 'TIP_DECLARACION'
      Size = 1
    end
    object qryautoliquidacionFEC_PAGO: TDateTimeField
      FieldName = 'FEC_PAGO'
    end
    object qryautoliquidacionNUM_PLANILLA_CORR: TStringField
      FieldName = 'NUM_PLANILLA_CORR'
      Size = 15
    end
    object qryautoliquidacionPER_COTIZACION: TStringField
      FieldName = 'PER_COTIZACION'
      Size = 7
    end
    object qryautoliquidacionPER_PRESENTACION: TStringField
      FieldName = 'PER_PRESENTACION'
      Size = 7
    end
    object qryautoliquidacionTOT_PLANILLA: TBCDField
      FieldName = 'TOT_PLANILLA'
      Precision = 18
      Size = 0
    end
    object qryautoliquidacionTOT_APORTE_PER: TBCDField
      FieldName = 'TOT_APORTE_PER'
      Precision = 18
      Size = 0
    end
    object qryautoliquidacionTOT_INCAPACIDAD: TBCDField
      FieldName = 'TOT_INCAPACIDAD'
      Precision = 18
      Size = 0
    end
    object qryautoliquidacionTOT_LICENCIAS: TBCDField
      FieldName = 'TOT_LICENCIAS'
      Precision = 18
      Size = 0
    end
    object qryautoliquidacionTOT_APORTE: TBCDField
      FieldName = 'TOT_APORTE'
      Precision = 18
      Size = 0
    end
    object qryautoliquidacionINT_MORA: TBCDField
      FieldName = 'INT_MORA'
      Precision = 18
      Size = 0
    end
    object qryautoliquidacionTOT_APORTE_MMORA: TBCDField
      FieldName = 'TOT_APORTE_MMORA'
      Precision = 18
      Size = 0
    end
    object qryautoliquidacionTOT_SALDO_FAV: TBCDField
      FieldName = 'TOT_SALDO_FAV'
      Precision = 18
      Size = 0
    end
    object qryautoliquidacionTOT_UPC: TBCDField
      FieldName = 'TOT_UPC'
      Precision = 18
      Size = 0
    end
    object qryautoliquidacionTOT_PAGADO: TBCDField
      FieldName = 'TOT_PAGADO'
      Precision = 18
      Size = 0
    end
    object qryautoliquidacionCOD_BANCO: TStringField
      FieldName = 'COD_BANCO'
      Size = 3
    end
    object qryautoliquidacionNUM_CUENTA: TStringField
      FieldName = 'NUM_CUENTA'
    end
    object qryautoliquidacionVAL_EFECTIVO: TBCDField
      FieldName = 'VAL_EFECTIVO'
      Precision = 18
      Size = 0
    end
    object qryautoliquidacionVAL_CHEQUE: TBCDField
      FieldName = 'VAL_CHEQUE'
      Precision = 18
      Size = 0
    end
    object qryautoliquidacionEST_PLANILLA: TStringField
      FieldName = 'EST_PLANILLA'
      Size = 3
    end
    object qryautoliquidacionCOD_REGIONAL: TStringField
      FieldName = 'COD_REGIONAL'
      Size = 5
    end
    object qryautoliquidacionCOD_OFICINA: TStringField
      FieldName = 'COD_OFICINA'
      Size = 3
    end
    object qryautoliquidacionNUM_DECLARACION: TBCDField
      FieldName = 'NUM_DECLARACION'
      Precision = 10
      Size = 0
    end
    object qryautoliquidacionCRU_CONCILIACION: TStringField
      FieldName = 'CRU_CONCILIACION'
      Size = 1
    end
    object qryautoliquidacionFEC_DIGITACION: TDateTimeField
      FieldName = 'FEC_DIGITACION'
    end
    object qryautoliquidacionTIP_DOC_USUARIO: TStringField
      FieldName = 'TIP_DOC_USUARIO'
      Size = 3
    end
    object qryautoliquidacionNUM_DOC_USUARIO: TStringField
      FieldName = 'NUM_DOC_USUARIO'
      Size = 18
    end
    object qryautoliquidacionFEC_MODIFICACION: TDateTimeField
      FieldName = 'FEC_MODIFICACION'
    end
    object qryautoliquidacionNO_INCAP_PAG: TStringField
      FieldName = 'NO_INCAP_PAG'
      Size = 30
    end
    object qryautoliquidacionVAL_INCAP_PAG: TBCDField
      FieldName = 'VAL_INCAP_PAG'
      Precision = 18
      Size = 0
    end
    object qryautoliquidacionNO_LICEN_PAG: TStringField
      FieldName = 'NO_LICEN_PAG'
      Size = 30
    end
    object qryautoliquidacionVAL_LICEN_PAG: TBCDField
      FieldName = 'VAL_LICEN_PAG'
      Precision = 18
      Size = 0
    end
    object qryautoliquidacionNO_MESES_MORA: TBCDField
      FieldName = 'NO_MESES_MORA'
      Precision = 18
      Size = 0
    end
    object qryautoliquidacionNO_PLANINILLA_ANT: TStringField
      FieldName = 'NO_PLANINILLA_ANT'
      Size = 15
    end
    object qryautoliquidacionVAL_NETO_UPC: TBCDField
      FieldName = 'VAL_NETO_UPC'
      Precision = 18
      Size = 0
    end
    object qryautoliquidacionVAL_INTERES_UPC: TBCDField
      FieldName = 'VAL_INTERES_UPC'
      Precision = 18
      Size = 0
    end
    object qryautoliquidacionVAL_APORMASINT_UPC: TBCDField
      FieldName = 'VAL_APORMASINT_UPC'
      Precision = 18
      Size = 0
    end
    object qryautoliquidacionVAL_SALFAVOR_UPC: TBCDField
      FieldName = 'VAL_SALFAVOR_UPC'
      Precision = 18
      Size = 0
    end
    object qryautoliquidacionVAL_PAGO_UPC: TBCDField
      FieldName = 'VAL_PAGO_UPC'
      Precision = 18
      Size = 0
    end
    object qryautoliquidacionNUM_LOTE: TStringField
      FieldName = 'NUM_LOTE'
      Size = 10
    end
    object qryautoliquidacionNOM_EMPRESA: TStringField
      FieldName = 'NOM_EMPRESA'
      Size = 50
    end
  end
  object qrydetalle: TADOQuery
    Connection = DTBDATAMEC
    Parameters = <>
    SQL.Strings = (
      'SELECT *  FROM  DET_PLANILLA_AUTOLIQUIDACION')
    Left = 296
    Top = 304
    object qrydetalleNUM_PLANILLA: TStringField
      FieldName = 'NUM_PLANILLA'
      Size = 15
    end
    object qrydetalleAFI_TIPO_DOC: TStringField
      FieldName = 'AFI_TIPO_DOC'
      Size = 3
    end
    object qrydetalleAFI_NUMERO_DOC: TStringField
      FieldName = 'AFI_NUMERO_DOC'
      Size = 18
    end
    object qrydetalleNOV_ING: TStringField
      FieldName = 'NOV_ING'
      Size = 1
    end
    object qrydetalleNOV_RET: TStringField
      FieldName = 'NOV_RET'
      Size = 1
    end
    object qrydetalleNOV_TDA: TStringField
      FieldName = 'NOV_TDA'
      Size = 1
    end
    object qrydetalleNOV_TAA: TStringField
      FieldName = 'NOV_TAA'
      Size = 1
    end
    object qrydetalleNOV_VSP: TStringField
      FieldName = 'NOV_VSP'
      Size = 1
    end
    object qrydetalleNOV_VST: TStringField
      FieldName = 'NOV_VST'
      Size = 1
    end
    object qrydetalleNOV_SLN: TStringField
      FieldName = 'NOV_SLN'
      Size = 1
    end
    object qrydetalleNOV_IGE: TStringField
      FieldName = 'NOV_IGE'
      Size = 1
    end
    object qrydetalleNOV_LMA: TStringField
      FieldName = 'NOV_LMA'
      Size = 1
    end
    object qrydetalleNOV_VAC: TStringField
      FieldName = 'NOV_VAC'
      Size = 1
    end
    object qrydetalleDIA_COTIZADOS: TStringField
      FieldName = 'DIA_COTIZADOS'
      Size = 2
    end
    object qrydetalleSAL_BASE: TBCDField
      FieldName = 'SAL_BASE'
      Precision = 18
      Size = 0
    end
    object qrydetalleVAL_NETO_NOV: TBCDField
      FieldName = 'VAL_NETO_NOV'
      Precision = 18
      Size = 0
    end
    object qrydetalleING_BASE_COT: TBCDField
      FieldName = 'ING_BASE_COT'
      Precision = 18
      Size = 0
    end
    object qrydetalleCOT_OBLIGATORIA: TBCDField
      FieldName = 'COT_OBLIGATORIA'
      Precision = 18
      Size = 0
    end
    object qrydetalleNUM_INCAPACIDAD_EGR: TStringField
      FieldName = 'NUM_INCAPACIDAD_EGR'
      Size = 10
    end
    object qrydetalleVAL_INCAPACIDAD_EGR: TBCDField
      FieldName = 'VAL_INCAPACIDAD_EGR'
      Precision = 18
      Size = 0
    end
    object qrydetalleNUM_LICENCIA_MAT: TStringField
      FieldName = 'NUM_LICENCIA_MAT'
      Size = 10
    end
    object qrydetalleVAL_LICENCIA_MAT: TBCDField
      FieldName = 'VAL_LICENCIA_MAT'
      Precision = 18
      Size = 0
    end
    object qrydetalleVAL_UPC_ADI: TBCDField
      FieldName = 'VAL_UPC_ADI'
      Precision = 18
      Size = 0
    end
    object qrydetalleVAL_TOTAL_COT: TBCDField
      FieldName = 'VAL_TOTAL_COT'
      Precision = 18
      Size = 0
    end
    object qrydetalleDET_ESTADO: TStringField
      FieldName = 'DET_ESTADO'
      Size = 3
    end
    object qrydetallePER_COTIZACION: TStringField
      FieldName = 'PER_COTIZACION'
      Size = 7
    end
    object qrydetallePER_PRESENTACION: TStringField
      FieldName = 'PER_PRESENTACION'
      Size = 7
    end
    object qrydetalleCOD_OFICINA: TStringField
      FieldName = 'COD_OFICINA'
      Size = 3
    end
    object qrydetalleNUM_DECLARACION: TBCDField
      FieldName = 'NUM_DECLARACION'
      Precision = 10
      Size = 0
    end
    object qrydetalleNOM_AFILIADO: TStringField
      FieldName = 'NOM_AFILIADO'
      Size = 50
    end
  end
  object qryempresas: TADOQuery
    Connection = DTBDATAMEC
    Parameters = <
      item
        Name = 'ptipo'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 3
        Value = '0'
      end
      item
        Name = 'pnumero'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 18
        Value = '0'
      end>
    SQL.Strings = (
      'select  * from empresas'
      'where tip_documento = :ptipo and num_documento = :pnumero')
    Left = 440
    Top = 304
    object qryempresasTIP_DOCUMENTO: TStringField
      FieldName = 'TIP_DOCUMENTO'
      Size = 3
    end
    object qryempresasNUM_DOCUMENTO: TStringField
      FieldName = 'NUM_DOCUMENTO'
      Size = 18
    end
    object qryempresasCOD_SUCURSAL: TStringField
      FieldName = 'COD_SUCURSAL'
      Size = 2
    end
    object qryempresasCOD_ACTIVIDAD_ECO: TStringField
      FieldName = 'COD_ACTIVIDAD_ECO'
      Size = 4
    end
    object qryempresasCOD_ESTADO: TStringField
      FieldName = 'COD_ESTADO'
      Size = 2
    end
    object qryempresasCOD_OFICINA: TStringField
      FieldName = 'COD_OFICINA'
      Size = 3
    end
    object qryempresasCOD_REGIONAL: TStringField
      FieldName = 'COD_REGIONAL'
      Size = 3
    end
    object qryempresasTIP_DOCUMENTO_ARP: TStringField
      FieldName = 'TIP_DOCUMENTO_ARP'
      Size = 3
    end
    object qryempresasNUM_DOCUMENTO_ARP: TStringField
      FieldName = 'NUM_DOCUMENTO_ARP'
      Size = 18
    end
    object qryempresasCOD_DEPARTAMENTO: TStringField
      FieldName = 'COD_DEPARTAMENTO'
      Size = 2
    end
    object qryempresasCOD_CIUDAD: TStringField
      FieldName = 'COD_CIUDAD'
      Size = 3
    end
    object qryempresasTIP_APORTANTE: TStringField
      FieldName = 'TIP_APORTANTE'
      Size = 1
    end
    object qryempresasNOM_EMPRESA: TStringField
      FieldName = 'NOM_EMPRESA'
      Size = 100
    end
    object qryempresasFEC_AFILIACION: TDateTimeField
      FieldName = 'FEC_AFILIACION'
    end
    object qryempresasDIR_EMPRESA: TStringField
      FieldName = 'DIR_EMPRESA'
      Size = 50
    end
    object qryempresasTEL_EMPRESA: TStringField
      FieldName = 'TEL_EMPRESA'
    end
    object qryempresasTEL_EMPRESA2: TStringField
      FieldName = 'TEL_EMPRESA2'
    end
    object qryempresasURL_EMPRESA: TStringField
      FieldName = 'URL_EMPRESA'
    end
    object qryempresasEML_EMPRESA: TStringField
      FieldName = 'EML_EMPRESA'
      Size = 50
    end
    object qryempresasTOT_EMPLEADOS: TStringField
      FieldName = 'TOT_EMPLEADOS'
      Size = 10
    end
    object qryempresasCOD_TIPO_PER: TStringField
      FieldName = 'COD_TIPO_PER'
      Size = 1
    end
    object qryempresasCOD_ZONA: TStringField
      FieldName = 'COD_ZONA'
      Size = 3
    end
    object qryempresasCOD_DEPARTAMENTO_PAG: TStringField
      FieldName = 'COD_DEPARTAMENTO_PAG'
      Size = 2
    end
    object qryempresasCOD_CIUDAD_PAG: TStringField
      FieldName = 'COD_CIUDAD_PAG'
      Size = 3
    end
    object qryempresasCOD_PRESENTACION_COM: TStringField
      FieldName = 'COD_PRESENTACION_COM'
      Size = 1
    end
    object qryempresasCOD_TIP_EMPRESA: TStringField
      FieldName = 'COD_TIP_EMPRESA'
      Size = 1
    end
    object qryempresasTIP_DOCUMENTO_PEN: TStringField
      FieldName = 'TIP_DOCUMENTO_PEN'
      Size = 3
    end
    object qryempresasNUM_DOCUMENTO_PEN: TStringField
      FieldName = 'NUM_DOCUMENTO_PEN'
      Size = 18
    end
  end
  object qryplanillas: TADOQuery
    Connection = DTBDATAMEC
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM AUTOLIQUIDACION')
    Left = 384
    Top = 248
    object qryplanillasNUM_PLANILLA: TStringField
      FieldName = 'NUM_PLANILLA'
      Size = 15
    end
    object qryplanillasEMP_TIPO_DOC: TStringField
      FieldName = 'EMP_TIPO_DOC'
      Size = 3
    end
    object qryplanillasEMP_NUMERO_DOC: TStringField
      FieldName = 'EMP_NUMERO_DOC'
      Size = 18
    end
    object qryplanillasCOD_SUCURSAL: TStringField
      FieldName = 'COD_SUCURSAL'
      Size = 2
    end
    object qryplanillasTIP_DECLARACION: TStringField
      FieldName = 'TIP_DECLARACION'
      Size = 1
    end
    object qryplanillasFEC_PAGO: TDateTimeField
      FieldName = 'FEC_PAGO'
    end
    object qryplanillasNUM_PLANILLA_CORR: TStringField
      FieldName = 'NUM_PLANILLA_CORR'
      Size = 15
    end
    object qryplanillasPER_COTIZACION: TStringField
      FieldName = 'PER_COTIZACION'
      Size = 7
    end
    object qryplanillasPER_PRESENTACION: TStringField
      FieldName = 'PER_PRESENTACION'
      Size = 7
    end
    object qryplanillasTOT_PLANILLA: TBCDField
      FieldName = 'TOT_PLANILLA'
      Precision = 18
      Size = 0
    end
    object qryplanillasTOT_APORTE_PER: TBCDField
      FieldName = 'TOT_APORTE_PER'
      Precision = 18
      Size = 0
    end
    object qryplanillasTOT_INCAPACIDAD: TBCDField
      FieldName = 'TOT_INCAPACIDAD'
      Precision = 18
      Size = 0
    end
    object qryplanillasTOT_LICENCIAS: TBCDField
      FieldName = 'TOT_LICENCIAS'
      Precision = 18
      Size = 0
    end
    object qryplanillasTOT_APORTE: TBCDField
      FieldName = 'TOT_APORTE'
      Precision = 18
      Size = 0
    end
    object qryplanillasINT_MORA: TBCDField
      FieldName = 'INT_MORA'
      Precision = 18
      Size = 0
    end
    object qryplanillasTOT_APORTE_MMORA: TBCDField
      FieldName = 'TOT_APORTE_MMORA'
      Precision = 18
      Size = 0
    end
    object qryplanillasTOT_SALDO_FAV: TBCDField
      FieldName = 'TOT_SALDO_FAV'
      Precision = 18
      Size = 0
    end
    object qryplanillasTOT_UPC: TBCDField
      FieldName = 'TOT_UPC'
      Precision = 18
      Size = 0
    end
    object qryplanillasTOT_PAGADO: TBCDField
      FieldName = 'TOT_PAGADO'
      Precision = 18
      Size = 0
    end
    object qryplanillasCOD_BANCO: TStringField
      FieldName = 'COD_BANCO'
      Size = 3
    end
    object qryplanillasNUM_CUENTA: TStringField
      FieldName = 'NUM_CUENTA'
    end
    object qryplanillasVAL_EFECTIVO: TBCDField
      FieldName = 'VAL_EFECTIVO'
      Precision = 18
      Size = 0
    end
    object qryplanillasVAL_CHEQUE: TBCDField
      FieldName = 'VAL_CHEQUE'
      Precision = 18
      Size = 0
    end
    object qryplanillasEST_PLANILLA: TStringField
      FieldName = 'EST_PLANILLA'
      Size = 3
    end
    object qryplanillasCOD_REGIONAL: TStringField
      FieldName = 'COD_REGIONAL'
      Size = 3
    end
    object qryplanillasCOD_OFICINA: TStringField
      FieldName = 'COD_OFICINA'
      Size = 3
    end
    object qryplanillasNUM_DECLARACION: TBCDField
      FieldName = 'NUM_DECLARACION'
      Precision = 10
      Size = 0
    end
    object qryplanillasCRU_CONCILIACION: TStringField
      FieldName = 'CRU_CONCILIACION'
      Size = 1
    end
    object qryplanillasFEC_DIGITACION: TDateTimeField
      FieldName = 'FEC_DIGITACION'
    end
    object qryplanillasTIP_DOC_USUARIO: TStringField
      FieldName = 'TIP_DOC_USUARIO'
      Size = 3
    end
    object qryplanillasNUM_DOC_USUARIO: TStringField
      FieldName = 'NUM_DOC_USUARIO'
      Size = 18
    end
    object qryplanillasFEC_MODIFICACION: TDateTimeField
      FieldName = 'FEC_MODIFICACION'
    end
    object qryplanillasNO_INCAP_PAG: TStringField
      FieldName = 'NO_INCAP_PAG'
      Size = 30
    end
    object qryplanillasVAL_INCAP_PAG: TBCDField
      FieldName = 'VAL_INCAP_PAG'
      Precision = 18
      Size = 0
    end
    object qryplanillasNO_LICEN_PAG: TStringField
      FieldName = 'NO_LICEN_PAG'
      Size = 30
    end
    object qryplanillasVAL_LICEN_PAG: TBCDField
      FieldName = 'VAL_LICEN_PAG'
      Precision = 18
      Size = 0
    end
    object qryplanillasNO_MESES_MORA: TBCDField
      FieldName = 'NO_MESES_MORA'
      Precision = 18
      Size = 0
    end
    object qryplanillasNO_PLANINILLA_ANT: TStringField
      FieldName = 'NO_PLANINILLA_ANT'
      Size = 15
    end
    object qryplanillasVAL_NETO_UPC: TBCDField
      FieldName = 'VAL_NETO_UPC'
      Precision = 18
      Size = 0
    end
    object qryplanillasVAL_INTERES_UPC: TBCDField
      FieldName = 'VAL_INTERES_UPC'
      Precision = 18
      Size = 0
    end
    object qryplanillasVAL_APORMASINT_UPC: TBCDField
      FieldName = 'VAL_APORMASINT_UPC'
      Precision = 18
      Size = 0
    end
    object qryplanillasVAL_SALFAVOR_UPC: TBCDField
      FieldName = 'VAL_SALFAVOR_UPC'
      Precision = 18
      Size = 0
    end
    object qryplanillasVAL_PAGO_UPC: TBCDField
      FieldName = 'VAL_PAGO_UPC'
      Precision = 18
      Size = 0
    end
    object qryplanillasNUM_LOTE: TStringField
      FieldName = 'NUM_LOTE'
      Size = 15
    end
    object qryplanillasNOM_EMPRESA: TStringField
      FieldName = 'NOM_EMPRESA'
      Size = 80
    end
  end
  object qryafiliadosempresa: TADOQuery
    Connection = DTBDATAMEC
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM  AFILIADOS_EMPRESAS')
    Left = 288
    Top = 248
    object qryafiliadosempresaCOD_OCUPACION: TStringField
      FieldName = 'COD_OCUPACION'
      Size = 4
    end
    object qryafiliadosempresaTIP_DOCUMENTO_AFI: TStringField
      FieldName = 'TIP_DOCUMENTO_AFI'
      Size = 3
    end
    object qryafiliadosempresaNUM_DOCUMENTO_AFI: TStringField
      FieldName = 'NUM_DOCUMENTO_AFI'
      Size = 18
    end
    object qryafiliadosempresaTIP_DOCUMENTO_EMP: TStringField
      FieldName = 'TIP_DOCUMENTO_EMP'
      Size = 3
    end
    object qryafiliadosempresaNUM_DOCUMENTO_EMP: TStringField
      FieldName = 'NUM_DOCUMENTO_EMP'
      Size = 18
    end
    object qryafiliadosempresaCOD_SUCURSAL: TStringField
      FieldName = 'COD_SUCURSAL'
      Size = 2
    end
    object qryafiliadosempresaCOD_ESTADO: TStringField
      FieldName = 'COD_ESTADO'
      Size = 2
    end
    object qryafiliadosempresaVAL_SUELDO_AFIL: TBCDField
      FieldName = 'VAL_SUELDO_AFIL'
      Precision = 18
      Size = 0
    end
    object qryafiliadosempresaFEC_INGRESO_UNI: TDateTimeField
      FieldName = 'FEC_INGRESO_UNI'
    end
    object qryafiliadosempresaFEC_EGRESO_UNI: TDateTimeField
      FieldName = 'FEC_EGRESO_UNI'
    end
    object qryafiliadosempresaCOD_DEPARTAMENTO_LAB: TStringField
      FieldName = 'COD_DEPARTAMENTO_LAB'
      Size = 2
    end
    object qryafiliadosempresaCOD_CIUDAD_LAB: TStringField
      FieldName = 'COD_CIUDAD_LAB'
      Size = 3
    end
    object qryafiliadosempresaDIR_AFILIADO_LAB: TStringField
      FieldName = 'DIR_AFILIADO_LAB'
      Size = 50
    end
    object qryafiliadosempresaTEL_AFILIADO_LAB: TStringField
      FieldName = 'TEL_AFILIADO_LAB'
    end
    object qryafiliadosempresaTEL_AFILIADO_LAB2: TStringField
      FieldName = 'TEL_AFILIADO_LAB2'
    end
    object qryafiliadosempresaCOD_TIPO_SAL: TStringField
      FieldName = 'COD_TIPO_SAL'
      Size = 1
    end
    object qryafiliadosempresaCOD_ZONA: TStringField
      FieldName = 'COD_ZONA'
      Size = 3
    end
    object qryafiliadosempresaFEC_ING_EMPRESA: TDateTimeField
      FieldName = 'FEC_ING_EMPRESA'
    end
    object qryafiliadosempresaCOD_MODALIDAD_TRA: TStringField
      FieldName = 'COD_MODALIDAD_TRA'
      Size = 1
    end
    object qryafiliadosempresaFEC_ULTIMA_NOV: TDateTimeField
      FieldName = 'FEC_ULTIMA_NOV'
    end
  end
  object qrylistaempresas: TADOQuery
    Connection = DTBDATAMEC
    Parameters = <>
    SQL.Strings = (
      
        'select  tip_documento, num_documento,cod_sucursal,tip_aportante,' +
        'nom_empresa'
      ' from empresas'
      '')
    Left = 192
    Top = 248
    object qrylistaempresasTIP_DOCUMENTO: TStringField
      FieldName = 'TIP_DOCUMENTO'
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
      Size = 1
    end
    object qrylistaempresasNOM_EMPRESA: TStringField
      FieldName = 'NOM_EMPRESA'
      Size = 100
    end
  end
  object qrymaxpago: TADOQuery
    Active = True
    Connection = DTBDATAMEC
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'TIP'
        DataType = ftVariant
        Size = -1
        Value = Null
      end
      item
        Name = 'NUMERO'
        DataType = ftVariant
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        '--SELECT  MAX(PER_COTIZACION) per_cotizacion FROM AUTOLIQUIDACIO' +
        'N'
      'SELECT TOP 1 PER_COTIZACION FROM  AUTOLIQUIDACION'
      'WHERE'
      'EMP_TIPO_DOC= :'#39'TIP'#39' AND EMP_NUMERO_DOC= :'#39'NUMERO'#39
      
        'ORDER BY SUBSTRING(PER_COTIZACION,4,4) DESC,SUBSTRING(PER_COTIZA' +
        'CION,1,2) DESC'
      '')
    Left = 112
    Top = 250
    object qrymaxpagoPER_COTIZACION: TStringField
      FieldName = 'PER_COTIZACION'
      Size = 7
    end
  end
  object qryrelacion_afiliados: TADOQuery
    Connection = DTBDATAMEC
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM RELACION_AFILIADOS')
    Left = 22
    Top = 128
    object qryrelacion_afiliadosTIP_DOCUMENTO_COT: TStringField
      FieldName = 'TIP_DOCUMENTO_COT'
      Size = 3
    end
    object qryrelacion_afiliadosNUM_DOCUMENTO_COT: TStringField
      FieldName = 'NUM_DOCUMENTO_COT'
      Size = 18
    end
    object qryrelacion_afiliadosTIP_DOCUMENTO_BEN: TStringField
      FieldName = 'TIP_DOCUMENTO_BEN'
      Size = 3
    end
    object qryrelacion_afiliadosNUM_DOCUMENTO_BEN: TStringField
      FieldName = 'NUM_DOCUMENTO_BEN'
      Size = 18
    end
    object qryrelacion_afiliadosFEC_INCLUSION_NOV: TDateTimeField
      FieldName = 'FEC_INCLUSION_NOV'
    end
    object qryrelacion_afiliadosCOD_PARENTESCO: TStringField
      FieldName = 'COD_PARENTESCO'
      Size = 3
    end
    object qryrelacion_afiliadosFEC_EXCLUSION_NOV: TDateTimeField
      FieldName = 'FEC_EXCLUSION_NOV'
    end
    object qryrelacion_afiliadosCOD_ESTADO: TStringField
      FieldName = 'COD_ESTADO'
      Size = 2
    end
    object qryrelacion_afiliadosCOD_RELACION_ADI: TStringField
      FieldName = 'COD_RELACION_ADI'
      Size = 2
    end
  end
  object qrynovafiliados: TADOQuery
    Connection = DTBDATAMEC
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM NOVEDADES_AFILIADOS')
    Left = 520
    Top = 400
    object qrynovafiliadosCOD_NOVEDAD_AFIL: TBCDField
      FieldName = 'COD_NOVEDAD_AFIL'
      Precision = 18
      Size = 0
    end
    object qrynovafiliadosNOV_CODIGO: TStringField
      FieldName = 'NOV_CODIGO'
      Size = 3
    end
    object qrynovafiliadosTIP_DOCUMENTO: TStringField
      FieldName = 'TIP_DOCUMENTO'
      Size = 3
    end
    object qrynovafiliadosNUM_DOCUMENTO: TStringField
      FieldName = 'NUM_DOCUMENTO'
      Size = 18
    end
    object qrynovafiliadosCOD_OFICINA: TStringField
      FieldName = 'COD_OFICINA'
      Size = 3
    end
    object qrynovafiliadosCOD_REGIONAL: TStringField
      FieldName = 'COD_REGIONAL'
      Size = 3
    end
    object qrynovafiliadosUSU_TIPO_DOC: TStringField
      FieldName = 'USU_TIPO_DOC'
      Size = 3
    end
    object qrynovafiliadosUSU_NUMERO_DOC: TStringField
      FieldName = 'USU_NUMERO_DOC'
      Size = 18
    end
    object qrynovafiliadosFEC_NOVEDAD_AFIL: TDateTimeField
      FieldName = 'FEC_NOVEDAD_AFIL'
    end
    object qrynovafiliadosNOM_CAMPO: TStringField
      FieldName = 'NOM_CAMPO'
      Size = 30
    end
    object qrynovafiliadosDAT_CAMPO_ANT: TStringField
      FieldName = 'DAT_CAMPO_ANT'
      Size = 50
    end
    object qrynovafiliadosNOM_TABLA: TStringField
      FieldName = 'NOM_TABLA'
      Size = 30
    end
    object qrynovafiliadosDAT_CAMPO_DES: TStringField
      FieldName = 'DAT_CAMPO_DES'
      Size = 50
    end
    object qrynovafiliadosFEC_EVENTO: TDateTimeField
      FieldName = 'FEC_EVENTO'
    end
    object qrynovafiliadosFEC_APLICATIVO: TDateTimeField
      FieldName = 'FEC_APLICATIVO'
    end
    object qrynovafiliadosTIP_DOCUMENTO_EMP: TStringField
      FieldName = 'TIP_DOCUMENTO_EMP'
      Size = 3
    end
    object qrynovafiliadosNUM_DOCUMENTO_EMP: TStringField
      FieldName = 'NUM_DOCUMENTO_EMP'
      Size = 18
    end
    object qrynovafiliadosCOD_SUCURSAL: TStringField
      FieldName = 'COD_SUCURSAL'
      Size = 2
    end
    object qrynovafiliadosNUM_PLANILLA: TStringField
      FieldName = 'NUM_PLANILLA'
      Size = 15
    end
    object qrynovafiliadosNOV890: TStringField
      FieldName = 'NOV890'
      Size = 2
    end
  end
  object qryafiliadoss: TADOQuery
    Connection = DTBDATAMEC
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM AFILIADOS')
    Left = 608
    Top = 336
    object qryafiliadossTIP_DOCUMENTO: TStringField
      FieldName = 'TIP_DOCUMENTO'
      Size = 3
    end
    object qryafiliadossNUM_DOCUMENTO: TStringField
      FieldName = 'NUM_DOCUMENTO'
      Size = 18
    end
    object qryafiliadossCOD_SEXO: TStringField
      FieldName = 'COD_SEXO'
      Size = 1
    end
    object qryafiliadossCOD_TIPO_AFIL: TStringField
      FieldName = 'COD_TIPO_AFIL'
      Size = 1
    end
    object qryafiliadossCOD_MODALIDAD_TRA: TStringField
      FieldName = 'COD_MODALIDAD_TRA'
      Size = 1
    end
    object qryafiliadossCOD_ESTADO_CIV: TStringField
      FieldName = 'COD_ESTADO_CIV'
      Size = 1
    end
    object qryafiliadossCOD_ESTRATO: TStringField
      FieldName = 'COD_ESTRATO'
      Size = 3
    end
    object qryafiliadossCOD_ESCOLARIDAD: TStringField
      FieldName = 'COD_ESCOLARIDAD'
      Size = 3
    end
    object qryafiliadossCOD_PROFESION: TStringField
      FieldName = 'COD_PROFESION'
      Size = 3
    end
    object qryafiliadossCOD_ESTADO: TStringField
      FieldName = 'COD_ESTADO'
      Size = 2
    end
    object qryafiliadossCOD_OFICINA: TStringField
      FieldName = 'COD_OFICINA'
      Size = 3
    end
    object qryafiliadossCOD_REGIONAL: TStringField
      FieldName = 'COD_REGIONAL'
      Size = 3
    end
    object qryafiliadossPRI_NOMBRE: TStringField
      FieldName = 'PRI_NOMBRE'
      Size = 25
    end
    object qryafiliadossSEG_NOMBRE: TStringField
      FieldName = 'SEG_NOMBRE'
      Size = 25
    end
    object qryafiliadossPRI_APELLIDO: TStringField
      FieldName = 'PRI_APELLIDO'
      Size = 25
    end
    object qryafiliadossSEG_APELLIDO: TStringField
      FieldName = 'SEG_APELLIDO'
      Size = 25
    end
    object qryafiliadossFEC_NACIMIENTO: TDateTimeField
      FieldName = 'FEC_NACIMIENTO'
    end
    object qryafiliadossFEC_AFILIACION_SIS: TDateTimeField
      FieldName = 'FEC_AFILIACION_SIS'
    end
    object qryafiliadossFEC_AFILIACION_UNI: TDateTimeField
      FieldName = 'FEC_AFILIACION_UNI'
    end
    object qryafiliadossEPS_TIP_DOC: TStringField
      FieldName = 'EPS_TIP_DOC'
      Size = 3
    end
    object qryafiliadossEPS_NUM_DOC: TStringField
      FieldName = 'EPS_NUM_DOC'
      Size = 18
    end
    object qryafiliadossCOD_DEPARTAMENTO_RES: TStringField
      FieldName = 'COD_DEPARTAMENTO_RES'
      Size = 2
    end
    object qryafiliadossCOD_CIUDAD_RES: TStringField
      FieldName = 'COD_CIUDAD_RES'
      Size = 3
    end
    object qryafiliadossCOD_BARRIO_RES: TStringField
      FieldName = 'COD_BARRIO_RES'
      Size = 3
    end
    object qryafiliadossCOD_ZONA: TStringField
      FieldName = 'COD_ZONA'
      Size = 3
    end
    object qryafiliadossACE_TIP_DOC: TStringField
      FieldName = 'ACE_TIP_DOC'
      Size = 3
    end
    object qryafiliadossACE_NUMERO_DOC: TStringField
      FieldName = 'ACE_NUMERO_DOC'
      Size = 18
    end
    object qryafiliadossCOD_DISCAPACIDAD: TStringField
      FieldName = 'COD_DISCAPACIDAD'
      Size = 1
    end
    object qryafiliadossNUM_SEMANA_COTIZA: TBCDField
      FieldName = 'NUM_SEMANA_COTIZA'
      Precision = 32
      Size = 0
    end
    object qryafiliadossFEC_RADICACION: TDateTimeField
      FieldName = 'FEC_RADICACION'
    end
    object qryafiliadossNUM_FORMATO_AFIL: TStringField
      FieldName = 'NUM_FORMATO_AFIL'
      Size = 10
    end
    object qryafiliadossDIR_AFILIADO_RES: TStringField
      FieldName = 'DIR_AFILIADO_RES'
      Size = 50
    end
    object qryafiliadossTEL_AFILIADO_RES: TStringField
      FieldName = 'TEL_AFILIADO_RES'
    end
    object qryafiliadossTEL_AFILIADO_RES2: TStringField
      FieldName = 'TEL_AFILIADO_RES2'
    end
    object qryafiliadossCEL_AFILIADO: TStringField
      FieldName = 'CEL_AFILIADO'
    end
    object qryafiliadossEML_AFILIADO: TStringField
      FieldName = 'EML_AFILIADO'
      Size = 50
    end
    object qryafiliadossFEC_ULTIMA_NOV: TDateTimeField
      FieldName = 'FEC_ULTIMA_NOV'
    end
    object qryafiliadossTIP_DOCUMENTO_IPS: TStringField
      FieldName = 'TIP_DOCUMENTO_IPS'
      Size = 3
    end
    object qryafiliadossNUM_DOCUMENTO_IPS: TStringField
      FieldName = 'NUM_DOCUMENTO_IPS'
      Size = 18
    end
    object qryafiliadossTIP_DOCUMENTO_MED: TStringField
      FieldName = 'TIP_DOCUMENTO_MED'
      Size = 3
    end
    object qryafiliadossNUM_DOCUMENTO_MED: TStringField
      FieldName = 'NUM_DOCUMENTO_MED'
      Size = 18
    end
    object qryafiliadossTIP_DOCUMENTO_ODO: TStringField
      FieldName = 'TIP_DOCUMENTO_ODO'
      Size = 3
    end
    object qryafiliadossNUM_DOCUMENTO_ODO: TStringField
      FieldName = 'NUM_DOCUMENTO_ODO'
      Size = 18
    end
    object qryafiliadossSEM_COTIZACION: TBCDField
      FieldName = 'SEM_COTIZACION'
      Precision = 32
      Size = 0
    end
  end
  object QryObtenermodalidad: TADOQuery
    Connection = DTBDATAMEC
    Parameters = <
      item
        Name = 'D'
        DataType = ftString
        Size = 1
        Value = '0'
      end>
    SQL.Strings = (
      
        'SELECT *  FROM MODALIDAD_TRABAJOS WHERE cod_modalidad_tra =  :'#39'D' +
        #39
      '')
    Left = 504
    Top = 344
    object QryObtenermodalidadCOD_MODALIDAD_TRA: TStringField
      FieldName = 'COD_MODALIDAD_TRA'
      Size = 1
    end
    object QryObtenermodalidadNOM_MODALIDAD_TRA: TStringField
      FieldName = 'NOM_MODALIDAD_TRA'
      Size = 50
    end
    object QryObtenermodalidadSALARIOS_MINIMOS: TBCDField
      FieldName = 'SALARIOS_MINIMOS'
      Precision = 5
      Size = 2
    end
    object QryObtenermodalidadPOR_COTIZACION: TFloatField
      FieldName = 'POR_COTIZACION'
    end
  end
  object QryModalidad: TADOQuery
    Connection = DTBDATAMEC
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select *  from MODALIDAD_TRABAJOS')
    Left = 20
    Top = 327
    object QryModalidadCOD_MODALIDAD_TRA: TStringField
      FieldName = 'COD_MODALIDAD_TRA'
      Size = 1
    end
    object QryModalidadNOM_MODALIDAD_TRA: TStringField
      FieldName = 'NOM_MODALIDAD_TRA'
      Size = 50
    end
    object QryModalidadPOR_COTIZACION: TBCDField
      FieldName = 'POR_COTIZACION'
      Precision = 18
      Size = 2
    end
    object QryModalidadSALARIOS_MINIMOS: TBCDField
      FieldName = 'SALARIOS_MINIMOS'
      Precision = 18
      Size = 2
    end
  end
  object qrynotasautoliquidacion: TADOQuery
    Connection = DTBDATAMEC
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM NOTAS_AUTOLIQUIDACION')
    Left = 296
    Top = 360
    object qrynotasautoliquidacionNUM_PLANILLA: TStringField
      FieldName = 'NUM_PLANILLA'
      Size = 15
    end
    object qrynotasautoliquidacionTIP_DOC_EMPRESA: TStringField
      FieldName = 'TIP_DOC_EMPRESA'
      Size = 3
    end
    object qrynotasautoliquidacionNUM_DOC_EMPRESA: TStringField
      FieldName = 'NUM_DOC_EMPRESA'
      Size = 18
    end
    object qrynotasautoliquidacionTIP_NOTA: TStringField
      FieldName = 'TIP_NOTA'
      FixedChar = True
      Size = 1
    end
    object qrynotasautoliquidacionVAL_NOTA: TBCDField
      FieldName = 'VAL_NOTA'
      Precision = 18
      Size = 0
    end
    object qrynotasautoliquidacionNUM_COMP_DES: TStringField
      FieldName = 'NUM_COMP_DES'
      Size = 15
    end
    object qrynotasautoliquidacionFEC_DESCUENTO: TDateTimeField
      FieldName = 'FEC_DESCUENTO'
    end
    object qrynotasautoliquidacionTIP_DESCUENTO: TStringField
      FieldName = 'TIP_DESCUENTO'
      Size = 1
    end
    object qrynotasautoliquidacionTIP_NOTA2: TStringField
      FieldName = 'TIP_NOTA2'
      FixedChar = True
      Size = 1
    end
    object qrynotasautoliquidacionPER_PAGO_NOTA: TDateTimeField
      FieldName = 'PER_PAGO_NOTA'
    end
  end
  object qrydetallepago: TADOQuery
    Connection = DTBDATAMEC
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM DET_PAGO_AUTOLIQUIDACIONES')
    Left = 200
    Top = 352
    object qrydetallepagoNUM_PLANILLA: TStringField
      FieldName = 'NUM_PLANILLA'
      Size = 15
    end
    object qrydetallepagoCOD_BANCO: TStringField
      FieldName = 'COD_BANCO'
      Size = 10
    end
    object qrydetallepagoNUM_CUENTA: TStringField
      FieldName = 'NUM_CUENTA'
      Size = 10
    end
    object qrydetallepagoVAL_CHEQUE: TBCDField
      FieldName = 'VAL_CHEQUE'
      Precision = 18
      Size = 0
    end
  end
  object qryciudades: TADOQuery
    Connection = DTBDATAMEC
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM CIUDADES')
    Left = 82
    Top = 312
  end
  object qrydepartamentos: TADOQuery
    Connection = DTBDATAMEC
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM DEPARTAMENTOS')
    Left = 22
    Top = 222
    object qrydepartamentosCOD_DEPARTAMENTO: TStringField
      FieldName = 'COD_DEPARTAMENTO'
      Size = 2
    end
    object qrydepartamentosNOM_DEPARTAMENTO: TStringField
      FieldName = 'NOM_DEPARTAMENTO'
      Size = 35
    end
  end
  object DTSModalidad: TDataSource
    DataSet = QryModalidad
    Left = 395
    Top = 405
  end
  object qrydetplanillas: TADOQuery
    Connection = DTBDATAMEC
    Parameters = <>
    SQL.Strings = (
      'SELECT *  FROM DET_PLANILLA_AUTOLIQUIDACION')
    Left = 472
    Top = 248
    object qrydetplanillasNUM_PLANILLA: TStringField
      FieldName = 'NUM_PLANILLA'
      Size = 15
    end
    object qrydetplanillasAFI_TIPO_DOC: TStringField
      FieldName = 'AFI_TIPO_DOC'
      Size = 3
    end
    object qrydetplanillasAFI_NUMERO_DOC: TStringField
      FieldName = 'AFI_NUMERO_DOC'
      Size = 18
    end
    object qrydetplanillasNOV_ING: TStringField
      FieldName = 'NOV_ING'
      Size = 1
    end
    object qrydetplanillasNOV_RET: TStringField
      FieldName = 'NOV_RET'
      Size = 1
    end
    object qrydetplanillasNOV_TDA: TStringField
      FieldName = 'NOV_TDA'
      Size = 1
    end
    object qrydetplanillasNOV_TAA: TStringField
      FieldName = 'NOV_TAA'
      Size = 1
    end
    object qrydetplanillasNOV_VSP: TStringField
      FieldName = 'NOV_VSP'
      Size = 1
    end
    object qrydetplanillasNOV_VST: TStringField
      FieldName = 'NOV_VST'
      Size = 1
    end
    object qrydetplanillasNOV_SLN: TStringField
      FieldName = 'NOV_SLN'
      Size = 1
    end
    object qrydetplanillasNOV_IGE: TStringField
      FieldName = 'NOV_IGE'
      Size = 1
    end
    object qrydetplanillasNOV_LMA: TStringField
      FieldName = 'NOV_LMA'
      Size = 1
    end
    object qrydetplanillasNOV_VAC: TStringField
      FieldName = 'NOV_VAC'
      Size = 1
    end
    object qrydetplanillasDIA_COTIZADOS: TStringField
      FieldName = 'DIA_COTIZADOS'
      Size = 2
    end
    object qrydetplanillasSAL_BASE: TBCDField
      FieldName = 'SAL_BASE'
      Precision = 18
      Size = 0
    end
    object qrydetplanillasVAL_NETO_NOV: TBCDField
      FieldName = 'VAL_NETO_NOV'
      Precision = 18
      Size = 0
    end
    object qrydetplanillasING_BASE_COT: TBCDField
      FieldName = 'ING_BASE_COT'
      Precision = 18
      Size = 0
    end
    object qrydetplanillasCOT_OBLIGATORIA: TBCDField
      FieldName = 'COT_OBLIGATORIA'
      Precision = 18
      Size = 0
    end
    object qrydetplanillasNUM_INCAPACIDAD_EGR: TStringField
      FieldName = 'NUM_INCAPACIDAD_EGR'
      Size = 10
    end
    object qrydetplanillasVAL_INCAPACIDAD_EGR: TBCDField
      FieldName = 'VAL_INCAPACIDAD_EGR'
      Precision = 18
      Size = 0
    end
    object qrydetplanillasNUM_LICENCIA_MAT: TStringField
      FieldName = 'NUM_LICENCIA_MAT'
      Size = 10
    end
    object qrydetplanillasVAL_LICENCIA_MAT: TBCDField
      FieldName = 'VAL_LICENCIA_MAT'
      Precision = 18
      Size = 0
    end
    object qrydetplanillasVAL_UPC_ADI: TBCDField
      FieldName = 'VAL_UPC_ADI'
      Precision = 18
      Size = 0
    end
    object qrydetplanillasVAL_TOTAL_COT: TBCDField
      FieldName = 'VAL_TOTAL_COT'
      Precision = 18
      Size = 0
    end
    object qrydetplanillasDET_ESTADO: TStringField
      FieldName = 'DET_ESTADO'
      Size = 3
    end
    object qrydetplanillasPER_COTIZACION: TStringField
      FieldName = 'PER_COTIZACION'
      Size = 7
    end
    object qrydetplanillasPER_PRESENTACION: TStringField
      FieldName = 'PER_PRESENTACION'
      Size = 7
    end
    object qrydetplanillasCOD_OFICINA: TStringField
      FieldName = 'COD_OFICINA'
      Size = 3
    end
    object qrydetplanillasNUM_DECLARACION: TBCDField
      FieldName = 'NUM_DECLARACION'
      Precision = 10
      Size = 0
    end
    object qrydetplanillasNOM_AFILIADO: TStringField
      FieldName = 'NOM_AFILIADO'
      Size = 80
    end
  end
  object qrypagosafiliados: TADOQuery
    Connection = DTBDATAMEC
    Parameters = <
      item
        Name = 'ptipo'
        DataType = ftString
        Size = 1
        Value = '0'
      end
      item
        Name = 'pnumero'
        DataType = ftString
        Size = 1
        Value = '0'
      end>
    SQL.Strings = (
      
        'select fec_pago,det_planilla_autoliquidacion.per_cotizacion,cot_' +
        'obligatoria,dia_cotizados from DBO.det_planilla_autoliquidacion,' +
        'DBO.autoliquidacion '
      
        'where det_planilla_autoliquidacion.num_planilla = autoliquidacio' +
        'n.num_planilla '
      'and afi_tipo_doc = :ptipo '
      'and afi_Numero_doc = :pnumero'
      'order by fec_pago,det_planilla_autoliquidacion.per_cotizacion')
    Left = 272
    Top = 120
    object qrypagosafiliadosFEC_PAGO: TDateTimeField
      FieldName = 'FEC_PAGO'
    end
    object qrypagosafiliadosPER_COTIZACION: TStringField
      FieldName = 'PER_COTIZACION'
      Size = 7
    end
    object qrypagosafiliadosCOT_OBLIGATORIA: TBCDField
      FieldName = 'COT_OBLIGATORIA'
      Precision = 18
      Size = 0
    end
    object qrypagosafiliadosDIA_COTIZADOS: TStringField
      FieldName = 'DIA_COTIZADOS'
      Size = 2
    end
  end
  object qrygetdate: TADOQuery
    Connection = DTBDATAMEC
    Parameters = <>
    SQL.Strings = (
      'SELECT  getdate()  AS FECHA ')
    Left = 192
    Top = 120
    object qrygetdateFECHA: TDateTimeField
      FieldName = 'FECHA'
    end
  end
  object qrydocumentos: TADOQuery
    Connection = DTBDATAMEC
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM TIPOS_DOCUMENTOS ORDER BY  TIP_DOCUMENTO'
      ''
      '')
    Left = 20
    Top = 36
    object qrydocumentosTIP_DOCUMENTO: TStringField
      FieldName = 'TIP_DOCUMENTO'
      Size = 3
    end
    object qrydocumentosNOM_DOCUMENTO: TStringField
      FieldName = 'NOM_DOCUMENTO'
      Size = 35
    end
  end
  object qryafiliados: TADOQuery
    Connection = DTBDATAMEC
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'ptipo'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 3
        Value = '0'
      end
      item
        Name = 'pnumero'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 18
        Value = '0'
      end>
    SQL.Strings = (
      
        'SELECT  tip_documento_emp, num_documento_emp,tip_documento_afi, ' +
        'num_documento_afi,pri_apellido,seg_apellido,pri_nombre,seg_nombr' +
        'e,val_sueldo_afil,fec_ingreso_uni,fec_egreso_uni,AFILIADOS_EMPRE' +
        'SAS.cod_estado,fec_nacimiento,cod_sexo,T1.cod_modalidad_tra'
      'FROM  afiliados_empresas,afiliados T1'
      'WHERE tip_documento_afi = tip_documento AND'
      'num_documento_afi = num_documento AND'
      'tip_documento_afi = :ptipo AND'
      'num_documento_afi = :pnumero')
    Left = 272
    Top = 192
    object qryafiliadostip_documento_emp: TStringField
      FieldName = 'tip_documento_emp'
      Size = 3
    end
    object qryafiliadosnum_documento_emp: TStringField
      FieldName = 'num_documento_emp'
      Size = 18
    end
    object qryafiliadostip_documento_afi: TStringField
      FieldName = 'tip_documento_afi'
      Size = 3
    end
    object qryafiliadosnum_documento_afi: TStringField
      FieldName = 'num_documento_afi'
      Size = 18
    end
    object qryafiliadospri_apellido: TStringField
      FieldName = 'pri_apellido'
      Size = 25
    end
    object qryafiliadosseg_apellido: TStringField
      FieldName = 'seg_apellido'
      Size = 25
    end
    object qryafiliadospri_nombre: TStringField
      FieldName = 'pri_nombre'
      Size = 25
    end
    object qryafiliadosseg_nombre: TStringField
      FieldName = 'seg_nombre'
      Size = 25
    end
    object qryafiliadosval_sueldo_afil: TBCDField
      FieldName = 'val_sueldo_afil'
      Precision = 18
      Size = 0
    end
    object qryafiliadosfec_ingreso_uni: TDateTimeField
      FieldName = 'fec_ingreso_uni'
    end
    object qryafiliadosfec_egreso_uni: TDateTimeField
      FieldName = 'fec_egreso_uni'
    end
    object qryafiliadoscod_estado: TStringField
      FieldName = 'cod_estado'
      Size = 2
    end
    object qryafiliadosfec_nacimiento: TDateTimeField
      FieldName = 'fec_nacimiento'
    end
    object qryafiliadoscod_sexo: TStringField
      FieldName = 'cod_sexo'
      Size = 1
    end
    object qryafiliadoscod_modalidad_tra: TStringField
      FieldName = 'cod_modalidad_tra'
      Size = 1
    end
  end
  object qryafiliadoauto: TADOQuery
    Connection = DTBDATAMEC
    Parameters = <
      item
        Name = 'ptipo'
        DataType = ftString
        Size = 1
        Value = '0'
      end
      item
        Name = 'pnumero'
        DataType = ftString
        Size = 1
        Value = '0'
      end
      item
        Name = 'pperiodo'
        DataType = ftString
        Size = 1
        Value = '0'
      end>
    SQL.Strings = (
      
        'select autoliquidacion.Num_Planilla,autoliquidacion.fec_pago fro' +
        'm DBO.det_planilla_autoliquidacion, DBO.autoliquidacion '
      'where det_planilla_autoliquidacion.afi_tipo_doc = :ptipo AND'
      '      det_planilla_autoliquidacion.afi_Numero_doc = :pnumero and'
      
        '      det_planilla_autoliquidacion.num_planilla =  autoliquidaci' +
        'on.num_planilla and'
      '       autoliquidacion.per_cotizacion =  :pperiodo'
      '')
    Left = 112
    Top = 192
    object qryafiliadoautoNUM_PLANILLA: TStringField
      FieldName = 'NUM_PLANILLA'
      Size = 15
    end
    object qryafiliadoautoFEC_PAGO: TDateTimeField
      FieldName = 'FEC_PAGO'
    end
  end
  object qrybancos: TADOQuery
    AutoCalcFields = False
    Connection = DTBDATAMEC
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      
        'SELECT * FROM BANCOS_CONTRV  WHERE (EST_BANCO = '#39'A'#39' OR EST_BANCO' +
        ' IS NULL) ')
    Left = 472
    Top = 184
    object qrybancosCOD_BANCO: TStringField
      FieldName = 'COD_BANCO'
      Size = 3
    end
    object qrybancosNOM_BANCO: TStringField
      FieldName = 'NOM_BANCO'
      Size = 50
    end
    object qrybancosCTA_BANCO: TStringField
      FieldName = 'CTA_BANCO'
      Size = 15
    end
    object qrybancosDIR_BANCO: TStringField
      FieldName = 'DIR_BANCO'
      Size = 70
    end
    object qrybancosTIP_DOCUMENTO: TStringField
      FieldName = 'TIP_DOCUMENTO'
      Size = 3
    end
    object qrybancosNUM_DOCUMENTO: TStringField
      FieldName = 'NUM_DOCUMENTO'
      Size = 18
    end
    object qrybancosCOD_DEPARTAMENTO: TStringField
      FieldName = 'COD_DEPARTAMENTO'
      Size = 2
    end
    object qrybancosCOD_CIUDAD: TStringField
      FieldName = 'COD_CIUDAD'
      Size = 3
    end
    object qrybancosTIPO_RECAUDO: TStringField
      FieldName = 'TIPO_RECAUDO'
      Size = 1
    end
    object qrybancosEST_BANCO: TStringField
      FieldName = 'EST_BANCO'
      Size = 1
    end
    object qrybancosCOD_CUENTA: TStringField
      FieldName = 'COD_CUENTA'
      Size = 4
    end
    object qrybancosTELEFONO: TStringField
      FieldName = 'TELEFONO'
      Size = 50
    end
    object qrybancosCONTACTO: TStringField
      FieldName = 'CONTACTO'
      Size = 100
    end
  end
  object qrycompania: TADOQuery
    Connection = DTBDATAMEC
    Parameters = <>
    SQL.Strings = (
      'SELECT *  FROM COMPANIA')
    Left = 560
    Top = 176
    object qrycompaniaTIP_DOCUMENTO: TStringField
      FieldName = 'TIP_DOCUMENTO'
      Size = 3
    end
    object qrycompaniaNUM_DOCUMENTO: TStringField
      FieldName = 'NUM_DOCUMENTO'
      Size = 18
    end
    object qrycompaniaNOM_EPS: TStringField
      FieldName = 'NOM_EPS'
      Size = 100
    end
    object qrycompaniaFEC_INCLUSION: TDateTimeField
      FieldName = 'FEC_INCLUSION'
    end
    object qrycompaniaCOD_EPS: TStringField
      FieldName = 'COD_EPS'
      Size = 6
    end
    object qrycompaniaDIR_EPS: TStringField
      FieldName = 'DIR_EPS'
      Size = 50
    end
    object qrycompaniaTEL_EPS: TStringField
      FieldName = 'TEL_EPS'
    end
    object qrycompaniaFAX_EPS: TStringField
      FieldName = 'FAX_EPS'
    end
    object qrycompaniaREP_LEGAL: TStringField
      FieldName = 'REP_LEGAL'
      Size = 100
    end
    object qrycompaniaEML_EPS: TStringField
      FieldName = 'EML_EPS'
      Size = 50
    end
    object qrycompaniaMAX_SALMIN: TBCDField
      FieldName = 'MAX_SALMIN'
      Precision = 32
      Size = 0
    end
  end
  object qryvaloresupc: TADOQuery
    Connection = DTBDATAMEC
    Parameters = <
      item
        Name = 'fecha'
        DataType = ftDateTime
        Size = -1
        Value = 0d
      end
      item
        Name = 'edad'
        DataType = ftLargeint
        Size = -1
        Value = '0'
      end
      item
        Name = 'edad'
        DataType = ftLargeint
        Size = -1
        Value = '0'
      end>
    SQL.Strings = (
      
        'select val_estructura_cost, ini_grupo_eta, fin_grupo_eta, sexo_g' +
        'rupo_eta,'
      
        '       ((val_estructura_cost * val_upc_dia_normal)*30) as Valor_' +
        'normal,'
      '       (((pyp/12))) as Promocion,sol'
      ' from grupos_etareos,estructura_costos,valoresanulescomp'
      
        ' where grupos_etareos.cod_grupo_eta = estructura_costos.cod_grup' +
        'o_eta and'
      '       ano_val_estructura_cost = ano  and '
      '      ano_val_estructura_cost = :fecha and '
      #9#9' (ini_grupo_eta <= :edad and fin_grupo_eta >= :edad)'
      ' '
      '')
    Left = 152
    Top = 64
    object qryvaloresupcVAL_ESTRUCTURA_COST: TBCDField
      FieldName = 'VAL_ESTRUCTURA_COST'
      Precision = 10
      Size = 2
    end
    object qryvaloresupcINI_GRUPO_ETA: TBCDField
      FieldName = 'INI_GRUPO_ETA'
      Precision = 18
      Size = 0
    end
    object qryvaloresupcFIN_GRUPO_ETA: TBCDField
      FieldName = 'FIN_GRUPO_ETA'
      Precision = 18
      Size = 0
    end
    object qryvaloresupcSEXO_GRUPO_ETA: TStringField
      FieldName = 'SEXO_GRUPO_ETA'
      Size = 1
    end
    object qryvaloresupcVALOR_NORMAL: TBCDField
      FieldName = 'VALOR_NORMAL'
      ReadOnly = True
      Precision = 32
      Size = 0
    end
    object qryvaloresupcPROMOCION: TBCDField
      FieldName = 'PROMOCION'
      ReadOnly = True
      Precision = 32
      Size = 0
    end
    object qryvaloresupcSOL: TBCDField
      FieldName = 'SOL'
      Precision = 10
      Size = 2
    end
  end
  object qryempresaupc: TADOQuery
    Connection = DTBDATAMEC
    Parameters = <>
    SQL.Strings = (
      
        'SELECT RELACION_AFILIADOS.* FROM  RELACION_AFILIADOS,AFILIADOS W' +
        'HERE TIP_DOCUMENTO_COT = '#39'CC'#39' AND  NUM_DOCUMENTO_COT = '#39'79107375' +
        '4'#39' '
      
        '  AND TIP_DOCUMENTO_BEN = TIP_DOCUMENTO AND  NUM_DOCUMENTO_BEN =' +
        ' NUM_DOCUMENTO AND COD_TIPO_AFIL = '#39'A'#39)
    Left = 248
    Top = 72
    object qryempresaupcTIP_DOCUMENTO_COT: TStringField
      FieldName = 'TIP_DOCUMENTO_COT'
      Size = 3
    end
    object qryempresaupcNUM_DOCUMENTO_COT: TStringField
      FieldName = 'NUM_DOCUMENTO_COT'
      Size = 18
    end
    object qryempresaupcTIP_DOCUMENTO_BEN: TStringField
      FieldName = 'TIP_DOCUMENTO_BEN'
      Size = 3
    end
    object qryempresaupcNUM_DOCUMENTO_BEN: TStringField
      FieldName = 'NUM_DOCUMENTO_BEN'
      Size = 18
    end
    object qryempresaupcFEC_INCLUSION_NOV: TDateTimeField
      FieldName = 'FEC_INCLUSION_NOV'
    end
    object qryempresaupcCOD_PARENTESCO: TStringField
      FieldName = 'COD_PARENTESCO'
      Size = 3
    end
    object qryempresaupcFEC_EXCLUSION_NOV: TDateTimeField
      FieldName = 'FEC_EXCLUSION_NOV'
    end
    object qryempresaupcCOD_ESTADO: TStringField
      FieldName = 'COD_ESTADO'
      Size = 2
    end
    object qryempresaupcCOD_RELACION_ADI: TStringField
      FieldName = 'COD_RELACION_ADI'
      Size = 2
    end
  end
  object qrydetalleupc: TADOQuery
    Connection = DTBDATAMEC
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM DET_PAGO_UPC_ADICIONAL')
    Left = 342
    Top = 127
    object qrydetalleupcNUM_PLANILLA: TStringField
      FieldName = 'NUM_PLANILLA'
      Size = 15
    end
    object qrydetalleupcAFI_TIP_DOCUMENTO: TStringField
      FieldName = 'AFI_TIP_DOCUMENTO'
      Size = 3
    end
    object qrydetalleupcAFI_NUM_DOCUMENTO: TStringField
      FieldName = 'AFI_NUM_DOCUMENTO'
      Size = 18
    end
    object qrydetalleupcAFI_TIP_DOC_ADICIONAL: TStringField
      FieldName = 'AFI_TIP_DOC_ADICIONAL'
      Size = 3
    end
    object qrydetalleupcAFI_NUM_DOC_ADICIONAL: TStringField
      FieldName = 'AFI_NUM_DOC_ADICIONAL'
      Size = 18
    end
    object qrydetalleupcPER_COTIZACION: TStringField
      FieldName = 'PER_COTIZACION'
      Size = 7
    end
    object qrydetalleupcPER_PRESENTACION: TStringField
      FieldName = 'PER_PRESENTACION'
      Size = 7
    end
    object qrydetalleupcVAL_PAGADO: TBCDField
      FieldName = 'VAL_PAGADO'
      Precision = 18
      Size = 0
    end
    object qrydetalleupcCOD_ESTADO: TStringField
      FieldName = 'COD_ESTADO'
      Size = 3
    end
  end
  object qrydiagnosticos: TADOQuery
    Connection = DTBDATAMEC
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM DIAGNOSTICOS')
    Left = 424
    Top = 64
    object qrydiagnosticosCOD_DIAGNOSTICO: TStringField
      FieldName = 'COD_DIAGNOSTICO'
      Size = 4
    end
    object qrydiagnosticosNOM_DIAGNSOTICO: TStringField
      FieldName = 'NOM_DIAGNSOTICO'
      Size = 255
    end
    object qrydiagnosticosRANGO_SEXO: TStringField
      FieldName = 'RANGO_SEXO'
      Size = 1
    end
    object qrydiagnosticosEDA_MININA: TBCDField
      FieldName = 'EDA_MININA'
      Precision = 18
      Size = 0
    end
    object qrydiagnosticosEDA_MAXIMA: TBCDField
      FieldName = 'EDA_MAXIMA'
      Precision = 18
      Size = 0
    end
    object qrydiagnosticosNOTOFICA: TStringField
      FieldName = 'NOTOFICA'
      FixedChar = True
      Size = 1
    end
    object qrydiagnosticosCODGRUPO: TStringField
      FieldName = 'CODGRUPO'
      Size = 5
    end
  end
  object qryprestadores: TADOQuery
    Connection = DTBDATAMEC
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM PRESTADORES')
    Left = 528
    Top = 56
    object qryprestadoresNIT_PRESTADOR: TStringField
      FieldName = 'NIT_PRESTADOR'
      Size = 15
    end
    object qryprestadoresNOM_PRESTADOR: TStringField
      FieldName = 'NOM_PRESTADOR'
      Size = 255
    end
    object qryprestadoresTIP_IDENTIFICACION: TStringField
      FieldName = 'TIP_IDENTIFICACION'
      Size = 3
    end
    object qryprestadoresCOD_PRESTADOR: TStringField
      FieldName = 'COD_PRESTADOR'
      Size = 15
    end
    object qryprestadoresNUM_DEPARTAMENTO: TStringField
      FieldName = 'NUM_DEPARTAMENTO'
      Size = 2
    end
    object qryprestadoresNUM_CIUDAD: TStringField
      FieldName = 'NUM_CIUDAD'
      Size = 3
    end
    object qryprestadoresDIR_PRINCIPAL: TStringField
      FieldName = 'DIR_PRINCIPAL'
      Size = 50
    end
    object qryprestadoresNUM_TELEFONO: TStringField
      FieldName = 'NUM_TELEFONO'
      Size = 80
    end
    object qryprestadoresNUM_FAX: TStringField
      FieldName = 'NUM_FAX'
      Size = 30
    end
    object qryprestadoresREP_LEGAL: TStringField
      FieldName = 'REP_LEGAL'
      Size = 100
    end
    object qryprestadoresNIV_ATENCION: TStringField
      FieldName = 'NIV_ATENCION'
      Size = 4
    end
    object qryprestadoresTIP_PRESTADOR: TStringField
      FieldName = 'TIP_PRESTADOR'
      Size = 30
    end
    object qryprestadoresCLA_PRESTADOR: TStringField
      FieldName = 'CLA_PRESTADOR'
      Size = 30
    end
    object qryprestadoresREC_COPAGO: TStringField
      FieldName = 'REC_COPAGO'
      Size = 4
    end
    object qryprestadoresREC_CUOTAMODERADORA: TStringField
      FieldName = 'REC_CUOTAMODERADORA'
      Size = 4
    end
    object qryprestadoresEST_PRESTADOR: TBCDField
      FieldName = 'EST_PRESTADOR'
      Precision = 18
      Size = 0
    end
    object qryprestadoresCOR_ELECTRONICO: TStringField
      FieldName = 'COR_ELECTRONICO'
      Size = 50
    end
    object qryprestadoresTIP_USUARIO: TStringField
      FieldName = 'TIP_USUARIO'
      Size = 15
    end
    object qryprestadoresFEC_DIGITACION: TDateTimeField
      FieldName = 'FEC_DIGITACION'
    end
    object qryprestadoresNUM_CARPETA: TStringField
      FieldName = 'NUM_CARPETA'
      Size = 10
    end
    object qryprestadoresMOD_RECAUDO: TBCDField
      FieldName = 'MOD_RECAUDO'
      Precision = 18
      Size = 0
    end
    object qryprestadoresTIP_NATURALEZA: TBCDField
      FieldName = 'TIP_NATURALEZA'
      Precision = 18
      Size = 0
    end
    object qryprestadoresCOD_ESPECIALIDAD: TBCDField
      FieldName = 'COD_ESPECIALIDAD'
      Precision = 18
      Size = 0
    end
    object qryprestadoresdoc_representante: TStringField
      FieldName = 'doc_representante'
      Size = 50
    end
  end
  object qryestrato: TADOQuery
    Connection = DTBDATAMEC
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM EST_BANCARIO_AUTO')
    Left = 448
    Top = 120
    object qryestratoCOD_BANCO: TStringField
      FieldName = 'COD_BANCO'
      Size = 3
    end
    object qryestratoCOD_SUCURSAL: TStringField
      FieldName = 'COD_SUCURSAL'
      Size = 8
    end
    object qryestratoNUM_DOCUMENTO: TStringField
      FieldName = 'NUM_DOCUMENTO'
      Size = 18
    end
    object qryestratoNUM_PLANILLA: TStringField
      FieldName = 'NUM_PLANILLA'
      Size = 15
    end
    object qryestratoFEC_RECAUDO: TDateTimeField
      FieldName = 'FEC_RECAUDO'
    end
    object qryestratoVAL_CONSIGNACION: TBCDField
      FieldName = 'VAL_CONSIGNACION'
      Precision = 18
      Size = 0
    end
    object qryestratoTIP_MOVIMIENTO: TStringField
      FieldName = 'TIP_MOVIMIENTO'
      Size = 5
    end
    object qryestratoEST_CONCILIACION: TStringField
      DisplayWidth = 10
      FieldName = 'EST_CONCILIACION'
      Size = 10
    end
    object qryestratoFEC_PLANILLA_CON: TDateTimeField
      FieldName = 'FEC_PLANILLA_CON'
    end
  end
  object qryvalorescompensacion: TADOQuery
    Connection = DTBDATAMEC
    Parameters = <
      item
        Name = 'PANO'
        DataType = ftString
        Size = 16
        Value = '31/12/1899'
      end>
    SQL.Strings = (
      'select * from valoresanulescomp  WHERE ANO = :PANO')
    Left = 576
    Top = 120
    object qryvalorescompensacionANO: TDateTimeField
      FieldName = 'ANO'
    end
    object qryvalorescompensacionSAL_MINIMO: TBCDField
      FieldName = 'SAL_MINIMO'
      Precision = 10
      Size = 2
    end
    object qryvalorescompensacionUPC: TBCDField
      FieldName = 'UPC'
      Precision = 10
      Size = 2
    end
    object qryvalorescompensacionPYP: TBCDField
      FieldName = 'PYP'
      Precision = 10
      Size = 2
    end
    object qryvalorescompensacionSOL: TBCDField
      FieldName = 'SOL'
      Precision = 10
      Size = 2
    end
    object qryvalorescompensacionRIESGO: TBCDField
      FieldName = 'RIESGO'
      Precision = 10
      Size = 2
    end
    object qryvalorescompensacionVAL_UPC_DIA_NORMAL: TBCDField
      FieldName = 'VAL_UPC_DIA_NORMAL'
      Precision = 10
      Size = 2
    end
    object qryvalorescompensacionVAL_UPC_DIA_ESPECIAL: TBCDField
      FieldName = 'VAL_UPC_DIA_ESPECIAL'
      Precision = 10
      Size = 2
    end
    object qryvalorescompensacionPOR_COTIZACION: TBCDField
      FieldName = 'POR_COTIZACION'
      Precision = 10
      Size = 2
    end
    object qryvalorescompensacionPOR_ENFERMEDAD_GENERAL: TBCDField
      FieldName = 'POR_ENFERMEDAD_GENERAL'
      Precision = 10
      Size = 2
    end
    object qryvalorescompensacionPOR_PROVISION_INC: TBCDField
      FieldName = 'POR_PROVISION_INC'
      Precision = 10
      Size = 2
    end
    object qryvalorescompensacionPOR_PYP_LIQUIDACION: TBCDField
      FieldName = 'POR_PYP_LIQUIDACION'
      Precision = 10
      Size = 2
    end
    object qryvalorescompensacionPOR_SOLIDARIDAD_LIQUIDACION: TBCDField
      FieldName = 'POR_SOLIDARIDAD_LIQUIDACION'
      Precision = 10
      Size = 2
    end
  end
  object qrycartera: TADOQuery
    Connection = DTBDATAMEC
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM DBO.CARTERA')
    Left = 200
    Top = 86
    object qrycarteraTIP_DOCUMENTO: TStringField
      FieldName = 'TIP_DOCUMENTO'
      Size = 3
    end
    object qrycarteraNUM_DOCUMENTO: TStringField
      FieldName = 'NUM_DOCUMENTO'
      Size = 18
    end
    object qrycarteraTIP_DOCUMENTO_EMP: TStringField
      FieldName = 'TIP_DOCUMENTO_EMP'
      Size = 3
    end
    object qrycarteraNUM_DOCUMENTO_EMP: TStringField
      FieldName = 'NUM_DOCUMENTO_EMP'
      Size = 18
    end
    object qrycarteraCOD_SUCURSAL_EMP: TStringField
      FieldName = 'COD_SUCURSAL_EMP'
      Size = 2
    end
    object qrycarteraPER_COMPENSACION: TStringField
      FieldName = 'PER_COMPENSACION'
      Size = 7
    end
    object qrycarteraTIPO_MORA: TStringField
      FieldName = 'TIPO_MORA'
      Size = 1
    end
    object qrycarteraVALOR_MORA: TBCDField
      FieldName = 'VALOR_MORA'
      Precision = 10
      Size = 2
    end
    object qrycarteraVALOR_UPC: TBCDField
      FieldName = 'VALOR_UPC'
      Precision = 10
      Size = 2
    end
    object qrycarteraCOD_TIPO_AFIL: TStringField
      FieldName = 'COD_TIPO_AFIL'
      Size = 1
    end
    object qrycarteraTIP_DOCUMENTO_COT: TStringField
      FieldName = 'TIP_DOCUMENTO_COT'
      Size = 3
    end
    object qrycarteraNUM_DOCUMENTO_COT: TStringField
      FieldName = 'NUM_DOCUMENTO_COT'
      Size = 18
    end
    object qrycarteraINTERES: TBCDField
      FieldName = 'INTERES'
      Precision = 10
      Size = 2
    end
  end
  object qryincapacidades: TADOQuery
    Connection = DTBDATAMEC
    Parameters = <>
    SQL.Strings = (
      'SELECT *  FROM INCAPACIDADES')
    Left = 114
    Top = 16
    object qryincapacidadesNUM_INCAPACIDAD: TStringField
      FieldName = 'NUM_INCAPACIDAD'
      Size = 15
    end
    object qryincapacidadesTIP_INCAPACIDAD: TStringField
      FieldName = 'TIP_INCAPACIDAD'
      Size = 3
    end
    object qryincapacidadesFEC_EXPEDICION: TDateTimeField
      FieldName = 'FEC_EXPEDICION'
    end
    object qryincapacidadesFEC_FALLO_TUTELA: TDateTimeField
      FieldName = 'FEC_FALLO_TUTELA'
    end
    object qryincapacidadesNUMERO_TUTELA: TStringField
      FieldName = 'NUMERO_TUTELA'
      Size = 50
    end
    object qryincapacidadesTIP_DOCEMPRESA: TStringField
      FieldName = 'TIP_DOCEMPRESA'
      Size = 3
    end
    object qryincapacidadesNUM_DOCEMPRESA: TStringField
      FieldName = 'NUM_DOCEMPRESA'
      Size = 18
    end
    object qryincapacidadesAFI_TIPO_DOC: TStringField
      FieldName = 'AFI_TIPO_DOC'
      Size = 3
    end
    object qryincapacidadesAFI_NUMERO_DOC: TStringField
      FieldName = 'AFI_NUMERO_DOC'
      Size = 18
    end
    object qryincapacidadesCOD_DIAGNOSTICO: TStringField
      FieldName = 'COD_DIAGNOSTICO'
      Size = 4
    end
    object qryincapacidadesCOD_PRESTADOR: TStringField
      FieldName = 'COD_PRESTADOR'
      Size = 15
    end
    object qryincapacidadesNOM_PRESTADOR: TStringField
      FieldName = 'NOM_PRESTADOR'
      Size = 255
    end
    object qryincapacidadesDIA_INCAPACIDAD: TStringField
      FieldName = 'DIA_INCAPACIDAD'
      Size = 2
    end
    object qryincapacidadesDIA_LIQUIDADOS: TStringField
      FieldName = 'DIA_LIQUIDADOS'
      Size = 2
    end
    object qryincapacidadesFEC_INICIO: TDateTimeField
      FieldName = 'FEC_INICIO'
    end
    object qryincapacidadesPRO_INCAPACIDAD: TStringField
      FieldName = 'PRO_INCAPACIDAD'
      Size = 1
    end
    object qryincapacidadesSAL_BASE: TBCDField
      FieldName = 'SAL_BASE'
      Precision = 18
      Size = 0
    end
    object qryincapacidadesPRO_SALARIO_LIQUI: TBCDField
      FieldName = 'PRO_SALARIO_LIQUI'
      Precision = 18
      Size = 0
    end
    object qryincapacidadesVAL_INCAPACIDAD: TBCDField
      FieldName = 'VAL_INCAPACIDAD'
      Precision = 18
      Size = 0
    end
    object qryincapacidadesEST_INCAPACIDAD: TStringField
      FieldName = 'EST_INCAPACIDAD'
      Size = 3
    end
    object qryincapacidadesCOD_REGIONAL: TStringField
      FieldName = 'COD_REGIONAL'
      Size = 5
    end
    object qryincapacidadesCOD_OFICINA: TStringField
      FieldName = 'COD_OFICINA'
      Size = 3
    end
    object qryincapacidadesFEC_DIGITACION: TDateTimeField
      FieldName = 'FEC_DIGITACION'
    end
    object qryincapacidadesTIP_DOC_USUARIO: TStringField
      FieldName = 'TIP_DOC_USUARIO'
      Size = 3
    end
    object qryincapacidadesTIP_NUM_USUARIO: TStringField
      FieldName = 'TIP_NUM_USUARIO'
      Size = 15
    end
    object qryincapacidadesFEC_TERMINACION: TDateTimeField
      FieldName = 'FEC_TERMINACION'
    end
    object qryincapacidadesFEC_MODIFICACION: TDateTimeField
      FieldName = 'FEC_MODIFICACION'
    end
    object qryincapacidadesNO_PRORROGA: TStringField
      FieldName = 'NO_PRORROGA'
      Size = 15
    end
    object qryincapacidadesTOT_DIAS_PRORROGA: TStringField
      FieldName = 'TOT_DIAS_PRORROGA'
      Size = 3
    end
    object qryincapacidadesNUM_RECEPCION: TStringField
      FieldName = 'NUM_RECEPCION'
      Size = 15
    end
    object qryincapacidadesFEC_NOTIFICACION: TDateTimeField
      FieldName = 'FEC_NOTIFICACION'
    end
    object qryincapacidadesMED_NOTIFICACION: TStringField
      FieldName = 'MED_NOTIFICACION'
      Size = 50
    end
    object qryincapacidadesNO_GUIA: TStringField
      FieldName = 'NO_GUIA'
      Size = 50
    end
  end
  object qrytipos: TADOQuery
    Connection = DTBDATAMEC
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'ptipo'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 1
        Value = '0'
      end
      item
        Name = 'pnumero'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 1
        Value = '0'
      end>
    SQL.Strings = (
      
        'select * from rango_pago where tip_aportante =:ptipo and dig_fin' +
        'al = :pnumero'
      ''
      '')
    Left = 64
    Top = 74
    object qrytiposTIP_APORTANTE: TStringField
      FieldName = 'TIP_APORTANTE'
      Size = 1
    end
    object qrytiposDIG_FINAL: TStringField
      FieldName = 'DIG_FINAL'
      Size = 1
    end
    object qrytiposDIA_HABIL: TStringField
      FieldName = 'DIA_HABIL'
      Size = 2
    end
  end
  object qryupc: TADOQuery
    Connection = DTBDATAMEC
    Parameters = <>
    SQL.Strings = (
      'SELECT  tip_documento_ben, '
      #9'num_documento_ben,'
      '                pri_apellido,'
      #9'seg_apellido,'
      '                pri_nombre,seg_nombre,'
      #9'cod_sexo,'
      '    '#9'tip_documento_cot,'
      #9'num_documento_cot,'
      #9'fec_nacimiento'
      'FROM      afiliados afil, relacion_afiliados reafil '
      #9'where afil.cod_tipo_afil= '#39'A'#39' and'
      #9'reafil.tip_documento_ben =  tip_documento and'
      #9'reafil.num_documento_ben = num_documento')
    Left = 448
    Top = 24
    object qryupcTIP_DOCUMENTO_BEN: TStringField
      FieldName = 'TIP_DOCUMENTO_BEN'
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
      Size = 1
    end
    object qryupcTIP_DOCUMENTO_COT: TStringField
      FieldName = 'TIP_DOCUMENTO_COT'
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
  object qrydetincapacidad: TADOQuery
    Connection = DTBDATAMEC
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM  DET_INCAPACIDAD')
    Left = 368
    Top = 16
    object qrydetincapacidadNUM_INCAPACIDAD: TStringField
      FieldName = 'NUM_INCAPACIDAD'
      Size = 15
    end
    object qrydetincapacidadPER_PAGO_INCAP: TDateTimeField
      FieldName = 'PER_PAGO_INCAP'
    end
    object qrydetincapacidadDIA_PAGAR_INCAP: TBCDField
      FieldName = 'DIA_PAGAR_INCAP'
      Precision = 18
      Size = 0
    end
    object qrydetincapacidadVAL_PAGAR_INCAP: TBCDField
      FieldName = 'VAL_PAGAR_INCAP'
      Precision = 18
      Size = 0
    end
    object qrydetincapacidadTIP_PAGO_INCAP: TStringField
      FieldName = 'TIP_PAGO_INCAP'
      Size = 1
    end
    object qrydetincapacidadFEC_PAGO_INCAP: TDateTimeField
      FieldName = 'FEC_PAGO_INCAP'
    end
    object qrydetincapacidadNUM_COMPROBANTE: TStringField
      FieldName = 'NUM_COMPROBANTE'
      Size = 15
    end
    object qrydetincapacidadPER_PRESENTADO: TStringField
      FieldName = 'PER_PRESENTADO'
      Size = 7
    end
    object qrydetincapacidadEST_DET_PLANILLA: TStringField
      FieldName = 'EST_DET_PLANILLA'
      Size = 3
    end
    object qrydetincapacidadVAL_DESCONTADO: TBCDField
      FieldName = 'VAL_DESCONTADO'
      Precision = 18
      Size = 0
    end
  end
  object qrypagoupc: TADOQuery
    Connection = DTBDATAMEC
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM DBO.DET_PAGO_UPC_ADICIONAL')
    Left = 272
    Top = 24
    object qrypagoupcNUM_PLANILLA: TStringField
      FieldName = 'NUM_PLANILLA'
      Size = 15
    end
    object qrypagoupcAFI_TIP_DOCUMENTO: TStringField
      FieldName = 'AFI_TIP_DOCUMENTO'
      Size = 3
    end
    object qrypagoupcAFI_NUM_DOCUMENTO: TStringField
      FieldName = 'AFI_NUM_DOCUMENTO'
      Size = 18
    end
    object qrypagoupcAFI_TIP_DOC_ADICIONAL: TStringField
      FieldName = 'AFI_TIP_DOC_ADICIONAL'
      Size = 3
    end
    object qrypagoupcAFI_NUM_DOC_ADICIONAL: TStringField
      FieldName = 'AFI_NUM_DOC_ADICIONAL'
      Size = 18
    end
    object qrypagoupcPER_COTIZACION: TStringField
      FieldName = 'PER_COTIZACION'
      Size = 7
    end
    object qrypagoupcPER_PRESENTACION: TStringField
      FieldName = 'PER_PRESENTACION'
      Size = 7
    end
    object qrypagoupcVAL_PAGADO: TBCDField
      FieldName = 'VAL_PAGADO'
      Precision = 18
      Size = 0
    end
    object qrypagoupcCOD_ESTADO: TStringField
      FieldName = 'COD_ESTADO'
      Size = 3
    end
  end
  object qryprogramas: TADOQuery
    Connection = DTBDATAMEC
    Parameters = <
      item
        Name = 'COD_APLICACION'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 15
        Value = Null
      end>
    SQL.Strings = (
      
        'Select *  from programas where COD_APLICACION = :"COD_APLICACION' +
        '"')
    Left = 616
    Top = 16
    object qryprogramasCOD_APLICACION: TStringField
      FieldName = 'COD_APLICACION'
      Size = 15
    end
    object qryprogramasNOM_APLICACION: TStringField
      FieldName = 'NOM_APLICACION'
      Size = 100
    end
    object qryprogramasVERSIONES: TStringField
      FieldName = 'VERSIONES'
      Size = 10
    end
    object qryprogramasAPLICACION: TBytesField
      FieldName = 'APLICACION'
      Size = 50
    end
    object qryprogramasORIGEN: TStringField
      FieldName = 'ORIGEN'
      Size = 100
    end
    object qryprogramasDESTINO: TStringField
      FieldName = 'DESTINO'
      Size = 100
    end
    object qryprogramasnom_exe: TStringField
      FieldName = 'nom_exe'
      Size = 50
    end
  end
  object qrysegudidad: TADOQuery
    Connection = DTBDATAMEC
    Parameters = <>
    SQL.Strings = (
      'Select *  from seguridad')
    Left = 616
    Top = 80
    object qrysegudidadCOD_APLICACION: TStringField
      FieldName = 'COD_APLICACION'
      Size = 15
    end
    object qrysegudidadNOM_APLICACION: TStringField
      FieldName = 'NOM_APLICACION'
      Size = 100
    end
    object qrysegudidadCOD_MENU: TStringField
      FieldName = 'COD_MENU'
      Size = 7
    end
    object qrysegudidadCOD_CAMPO: TStringField
      FieldName = 'COD_CAMPO'
      Size = 50
    end
  end
  object qrypermisos: TADOQuery
    Connection = DTBDATAMEC
    Parameters = <>
    SQL.Strings = (
      'Select *  from permisos')
    Left = 624
    Top = 176
    object qrypermisosCOD_USUARIO: TStringField
      FieldName = 'COD_USUARIO'
    end
    object qrypermisosCOD_APLICACION: TStringField
      FieldName = 'COD_APLICACION'
      Size = 15
    end
    object qrypermisosCOD_MENU: TStringField
      FieldName = 'COD_MENU'
      Size = 7
    end
    object qrypermisosCOD_CAMPO: TStringField
      FieldName = 'COD_CAMPO'
      Size = 50
    end
  end
  object Database1: TDatabase
    AliasName = 'softeps'
    DatabaseName = 'Softars'
    LoginPrompt = False
    Params.Strings = (
      'DATABASE NAME=Softars'
      'USER NAME=CONSULTA'
      'ODBC DSN='
      'OPEN MODE=READ/WRITE'
      'BATCH COUNT=200'
      'LANGDRIVER='
      'MAX ROWS=-1'
      'SCHEMA CACHE DIR='
      'SCHEMA CACHE SIZE=8'
      'SCHEMA CACHE TIME=-1'
      'SQLPASSTHRU MODE=SHARED AUTOCOMMIT'
      'SQLQRYMODE=SERVER'
      'ENABLE SCHEMA CACHE=FALSE'
      'ENABLE BCD=FALSE'
      'ROWSET SIZE=20'
      'BLOBS TO CACHE=64'
      'BLOB SIZE=32'
      'PASSWORD=1234')
    SessionName = 'Default'
    Left = 206
    Top = 14
  end
  object dtsdiagnosticos: TDataSource
    DataSet = qrydiagnosticos
    Left = 64
    Top = 332
  end
  object qryincapacidadespat: TADOQuery
    Connection = DTBDATAMEC
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM RELACION_AFILIADOS')
    Left = 348
    Top = 86
  end
  object qrypagoininterrumpido: TADOQuery
    Connection = DTBDATAMEC
    Parameters = <>
    SQL.Strings = (
      'SELECT FROM AUTOLIQUIDACIONES')
    Left = 74
    Top = 22
  end
  object qryafil4sem: TADOQuery
    Connection = DTBDATAMEC
    Parameters = <
      item
        Name = 'vnum'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 18
        Value = Null
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM AFILIADOS'
      'where num_documento =  :vnum and'
      
        '(datediff(month,fec_afiliacion_uni,getdate()) < 1 or datediff(da' +
        'y,fec_afiliacion_uni,getdate()) < 30 )')
    Left = 530
    Top = 312
    object qryafil4semTIP_DOCUMENTO: TStringField
      FieldName = 'TIP_DOCUMENTO'
      Size = 3
    end
    object qryafil4semNUM_DOCUMENTO: TStringField
      FieldName = 'NUM_DOCUMENTO'
      Size = 18
    end
    object qryafil4semCOD_SEXO: TStringField
      FieldName = 'COD_SEXO'
      Size = 1
    end
    object qryafil4semCOD_TIPO_AFIL: TStringField
      FieldName = 'COD_TIPO_AFIL'
      Size = 1
    end
    object qryafil4semCOD_MODALIDAD_TRA: TStringField
      FieldName = 'COD_MODALIDAD_TRA'
      Size = 1
    end
    object qryafil4semCOD_ESTADO_CIV: TStringField
      FieldName = 'COD_ESTADO_CIV'
      Size = 1
    end
    object qryafil4semCOD_ESTRATO: TStringField
      FieldName = 'COD_ESTRATO'
      Size = 3
    end
    object qryafil4semCOD_ESCOLARIDAD: TStringField
      FieldName = 'COD_ESCOLARIDAD'
      Size = 3
    end
    object qryafil4semCOD_PROFESION: TStringField
      FieldName = 'COD_PROFESION'
      Size = 3
    end
    object qryafil4semCOD_ESTADO: TStringField
      FieldName = 'COD_ESTADO'
      Size = 2
    end
    object qryafil4semCOD_OFICINA: TStringField
      FieldName = 'COD_OFICINA'
      Size = 3
    end
    object qryafil4semCOD_REGIONAL: TStringField
      FieldName = 'COD_REGIONAL'
      Size = 5
    end
    object qryafil4semPRI_NOMBRE: TStringField
      FieldName = 'PRI_NOMBRE'
      Size = 25
    end
    object qryafil4semSEG_NOMBRE: TStringField
      FieldName = 'SEG_NOMBRE'
      Size = 25
    end
    object qryafil4semPRI_APELLIDO: TStringField
      FieldName = 'PRI_APELLIDO'
      Size = 25
    end
    object qryafil4semSEG_APELLIDO: TStringField
      FieldName = 'SEG_APELLIDO'
      Size = 25
    end
    object qryafil4semFEC_NACIMIENTO: TDateTimeField
      FieldName = 'FEC_NACIMIENTO'
    end
    object qryafil4semFEC_AFILIACION_SIS: TDateTimeField
      FieldName = 'FEC_AFILIACION_SIS'
    end
    object qryafil4semFEC_AFILIACION_UNI: TDateTimeField
      FieldName = 'FEC_AFILIACION_UNI'
    end
    object qryafil4semEPS_TIP_DOC: TStringField
      FieldName = 'EPS_TIP_DOC'
      Size = 3
    end
    object qryafil4semEPS_NUM_DOC: TStringField
      FieldName = 'EPS_NUM_DOC'
      Size = 18
    end
    object qryafil4semCOD_DEPARTAMENTO_RES: TStringField
      FieldName = 'COD_DEPARTAMENTO_RES'
      Size = 2
    end
    object qryafil4semCOD_CIUDAD_RES: TStringField
      FieldName = 'COD_CIUDAD_RES'
      Size = 3
    end
    object qryafil4semCOD_BARRIO_RES: TStringField
      FieldName = 'COD_BARRIO_RES'
      Size = 3
    end
    object qryafil4semCOD_ZONA: TStringField
      FieldName = 'COD_ZONA'
      Size = 3
    end
    object qryafil4semACE_TIP_DOC: TStringField
      FieldName = 'ACE_TIP_DOC'
      Size = 3
    end
    object qryafil4semACE_NUMERO_DOC: TStringField
      FieldName = 'ACE_NUMERO_DOC'
      Size = 18
    end
    object qryafil4semCOD_DISCAPACIDAD: TStringField
      FieldName = 'COD_DISCAPACIDAD'
      Size = 1
    end
    object qryafil4semNUM_SEMANA_COTIZA: TBCDField
      FieldName = 'NUM_SEMANA_COTIZA'
      Precision = 18
      Size = 0
    end
    object qryafil4semFEC_RADICACION: TDateTimeField
      FieldName = 'FEC_RADICACION'
    end
    object qryafil4semNUM_FORMATO_AFIL: TStringField
      FieldName = 'NUM_FORMATO_AFIL'
      Size = 10
    end
    object qryafil4semDIR_AFILIADO_RES: TStringField
      FieldName = 'DIR_AFILIADO_RES'
      Size = 50
    end
    object qryafil4semTEL_AFILIADO_RES: TStringField
      FieldName = 'TEL_AFILIADO_RES'
    end
    object qryafil4semTEL_AFILIADO_RES2: TStringField
      FieldName = 'TEL_AFILIADO_RES2'
    end
    object qryafil4semCEL_AFILIADO: TStringField
      FieldName = 'CEL_AFILIADO'
    end
    object qryafil4semEML_AFILIADO: TStringField
      FieldName = 'EML_AFILIADO'
      Size = 50
    end
    object qryafil4semFEC_ULTIMA_NOV: TDateTimeField
      FieldName = 'FEC_ULTIMA_NOV'
    end
    object qryafil4semTIP_DOCUMENTO_IPS: TStringField
      FieldName = 'TIP_DOCUMENTO_IPS'
      Size = 3
    end
    object qryafil4semNUM_DOCUMENTO_IPS: TStringField
      FieldName = 'NUM_DOCUMENTO_IPS'
      Size = 18
    end
    object qryafil4semTIP_DOCUMENTO_MED: TStringField
      FieldName = 'TIP_DOCUMENTO_MED'
      Size = 3
    end
    object qryafil4semNUM_DOCUMENTO_MED: TStringField
      FieldName = 'NUM_DOCUMENTO_MED'
      Size = 18
    end
    object qryafil4semTIP_DOCUMENTO_ODO: TStringField
      FieldName = 'TIP_DOCUMENTO_ODO'
      Size = 3
    end
    object qryafil4semNUM_DOCUMENTO_ODO: TStringField
      FieldName = 'NUM_DOCUMENTO_ODO'
      Size = 18
    end
    object qryafil4semSEM_COTIZACION: TBCDField
      FieldName = 'SEM_COTIZACION'
      Precision = 18
      Size = 0
    end
  end
  object qryaprobaciones: TADOQuery
    Connection = DTBDATAMEC
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *  FROM APROBACIONES')
    Left = 2
    Top = 2
    object qryaprobacionesACTIVADO: TBooleanField
      FieldName = 'ACTIVADO'
    end
    object qryaprobacionesTIPO: TStringField
      FieldName = 'TIPO'
      Size = 50
    end
    object qryaprobacionesCAUSAL_DE_NO_APROBACION: TStringField
      FieldName = 'CAUSAL_DE_NO_APROBACION'
      Size = 100
    end
  end
  object qrypromsal: TADOQuery
    Connection = DTBDATAMEC
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'TIP'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 3
        Value = Null
      end
      item
        Name = 'DOC'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 18
        Value = Null
      end>
    SQL.Strings = (
      'SELECT TOP 12 ING_BASE_COT FROM DET_PLANILLA_AUTOLIQUIDACION'
      'WHERE AFI_TIPO_DOC= :TIP AND AFI_NUMERO_DOC = :DOC'
      
        'ORDER BY SUBSTRING(PER_PRESENTACION,4,4)DESC,SUBSTRING(PER_PRESE' +
        'NTACION,1,2) DESC')
    Left = 204
    Top = 410
    object qrypromsalING_BASE_COT: TBCDField
      FieldName = 'ING_BASE_COT'
      Precision = 18
      Size = 0
    end
  end
  object qryfecincapacidad: TADOQuery
    Connection = DTBDATAMEC
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'TIP'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 3
        Value = Null
      end
      item
        Name = 'DOC'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 18
        Value = Null
      end>
    SQL.Strings = (
      'SELECT TOP 1 PER_COTIZACION FROM DET_PLANILLA_AUTOLIQUIDACION'
      'WHERE AFI_TIPO_DOC= :TIP AND AFI_NUMERO_DOC = :DOC'
      
        'ORDER BY SUBSTRING(PER_PRESENTACION,4,4)DESC,SUBSTRING(PER_PRESE' +
        'NTACION,1,2) DESC')
    Left = 294
    Top = 420
    object qryfecincapacidadPER_COTIZACION: TStringField
      FieldName = 'PER_COTIZACION'
      Size = 7
    end
  end
  object qrydiasafil: TADOQuery
    Connection = DTBDATAMEC
    Parameters = <
      item
        Name = 'FECPLANILLA'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'TIP'
        DataType = ftVariant
        Size = -1
        Value = Null
      end
      item
        Name = 'DOC'
        DataType = ftVariant
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT DATEDIFF(day,FEC_AFILIACION_UNI, :FECPLANILLA) AS NODIAS ' +
        'FROM AFILIADOS'
      'WHERE TIP_DOCUMENTO= :'#39'TIP'#39' AND NUM_DOCUMENTO= :'#39'DOC'#39' ')
    Left = 46
    Top = 414
    object qrydiasafilNODIAS: TIntegerField
      FieldName = 'NODIAS'
      ReadOnly = True
    end
  end
  object qrytrasafil: TADOQuery
    Connection = DTBDATAMEC
    Parameters = <
      item
        Name = 'FECPERIODO'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'TIP'
        DataType = ftVariant
        Size = -1
        Value = Null
      end
      item
        Name = 'DOC'
        DataType = ftVariant
        Size = -1
        Value = Null
      end
      item
        Name = 'FECPERIODO'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT DATEDIFF(MONTH,FEC_AFILIACION_UNI, :FECPERIODO) AS MESTRA' +
        'S FROM AFILIADOS WHERE'
      'TIP_DOCUMENTO= :'#39'TIP'#39' AND'
      'NUM_DOCUMENTO= :'#39'DOC'#39' AND'
      'DATEDIFF(MONTH,FEC_AFILIACION_UNI, :FECPERIODO) < 2 AND'
      'COD_CLA_AFILIACION='#39'3'#39)
    Left = 132
    Top = 462
    object qrytrasafilMESTRAS: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'MESTRAS'
      Calculated = True
    end
  end
  object qrymesesafil: TADOQuery
    Connection = DTBDATAMEC
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'FECPLANILLA'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'TIP'
        DataType = ftVariant
        Size = -1
        Value = Null
      end
      item
        Name = 'DOC'
        DataType = ftVariant
        Size = -1
        Value = Null
      end
      item
        Name = 'FECPLANILLA'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT DATEDIFF(MONTH,FEC_AFILIACION_UNI,:FECPLANILLA) AS NOMESE' +
        'S FROM AFILIADOS'
      'WHERE TIP_DOCUMENTO= :'#39'TIP'#39' AND NUM_DOCUMENTO= :'#39'DOC'#39
      'AND DATEDIFF(MONTH, FEC_AFILIACION_UNI, :FECPLANILLA) < 1')
    Left = 78
    Top = 476
  end
end
