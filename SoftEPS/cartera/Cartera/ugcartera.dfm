object frmgencartera: Tfrmgencartera
  Left = 240
  Top = 162
  Width = 325
  Height = 292
  BorderIcons = [biSystemMenu]
  Caption = 'Generacion Cartera'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 317
    Height = 121
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 19
      Top = 77
      Width = 86
      Height = 13
      Caption = 'Periodo Inicial:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 170
      Top = 77
      Width = 79
      Height = 13
      Caption = 'Periodo Final:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 92
      Top = 36
      Width = 146
      Height = 16
      Caption = 'Generacion de Cartera'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 252
      Top = 8
      Width = 53
      Height = 16
      Caption = 'SOFTEPS'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object MaskEdit1: TMaskEdit
      Left = 106
      Top = 69
      Width = 49
      Height = 21
      Color = clMoneyGreen
      EditMask = '!99/0000;1;_'
      MaxLength = 7
      TabOrder = 0
      Text = '  /    '
      OnExit = MaskEdit1Exit
    end
    object Button1: TButton
      Left = 124
      Top = 96
      Width = 75
      Height = 25
      Caption = '&Calcular'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = Button1Click
    end
    object MaskEdit2: TMaskEdit
      Left = 255
      Top = 69
      Width = 49
      Height = 21
      Color = clMoneyGreen
      EditMask = '!99/0000;1;_'
      MaxLength = 7
      TabOrder = 1
      Text = '  /    '
      OnExit = MaskEdit2Exit
    end
    object GroupBox3: TGroupBox
      Left = 16
      Top = 52
      Width = 281
      Height = 8
      TabOrder = 3
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 121
    Width = 317
    Height = 144
    Align = alClient
    TabOrder = 1
    object Label5: TLabel
      Left = 46
      Top = 16
      Width = 121
      Height = 13
      Caption = 'Periodo En Proceso :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Edit3: TEdit
      Left = 172
      Top = 9
      Width = 73
      Height = 21
      Color = clMoneyGreen
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object GroupBox1: TGroupBox
      Left = 9
      Top = 40
      Width = 301
      Height = 45
      Caption = ' Afiliados Activos Procesados '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      object Label6: TLabel
        Left = 132
        Top = 21
        Width = 18
        Height = 13
        Caption = 'DE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Edit1: TEdit
        Left = 36
        Top = 16
        Width = 91
        Height = 21
        TabOrder = 0
      end
      object Edit2: TEdit
        Left = 156
        Top = 16
        Width = 91
        Height = 21
        TabOrder = 1
      end
    end
    object GroupBox2: TGroupBox
      Left = 12
      Top = 88
      Width = 301
      Height = 49
      Caption = 'Actualizacion Estados de Afiliados Activos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      object Gauge2: TGauge
        Left = 16
        Top = 20
        Width = 273
        Height = 17
        ForeColor = clMoneyGreen
        Progress = 0
      end
    end
  end
  object qrymccartera1: TQuery
    DatabaseName = 'softeps'
    RequestLive = True
    SQL.Strings = (
      'SELECT * FROM CARTERA WHERE PER_COMPENSACION = :PER')
    Left = 20
    Top = 16
    ParamData = <
      item
        DataType = ftString
        Name = 'PER'
        ParamType = ptInputOutput
        Value = ''
      end>
    object qrymccartera1TIP_DOCUMENTO: TStringField
      FieldName = 'TIP_DOCUMENTO'
      Origin = 'SOFTEPS.CARTERA.TIP_DOCUMENTO'
      Size = 3
    end
    object qrymccartera1NUM_DOCUMENTO: TStringField
      FieldName = 'NUM_DOCUMENTO'
      Origin = 'SOFTEPS.CARTERA.NUM_DOCUMENTO'
      Size = 18
    end
    object qrymccartera1TIP_DOCUMENTO_EMP: TStringField
      FieldName = 'TIP_DOCUMENTO_EMP'
      Origin = 'SOFTEPS.CARTERA.TIP_DOCUMENTO_EMP'
      Size = 3
    end
    object qrymccartera1NUM_DOCUMENTO_EMP: TStringField
      FieldName = 'NUM_DOCUMENTO_EMP'
      Origin = 'SOFTEPS.CARTERA.NUM_DOCUMENTO_EMP'
      Size = 18
    end
    object qrymccartera1COD_SUCURSAL_EMP: TStringField
      FieldName = 'COD_SUCURSAL_EMP'
      Origin = 'SOFTEPS.CARTERA.COD_SUCURSAL_EMP'
      Size = 2
    end
    object qrymccartera1PER_COMPENSACION: TStringField
      FieldName = 'PER_COMPENSACION'
      Origin = 'SOFTEPS.CARTERA.PER_COMPENSACION'
      Size = 7
    end
    object qrymccartera1TIPO_MORA: TStringField
      FieldName = 'TIPO_MORA'
      Origin = 'SOFTEPS.CARTERA.TIPO_MORA'
      Size = 1
    end
    object qrymccartera1VALOR_MORA: TFloatField
      FieldName = 'VALOR_MORA'
      Origin = 'SOFTEPS.CARTERA.VALOR_MORA'
    end
    object qrymccartera1VALOR_UPC: TFloatField
      FieldName = 'VALOR_UPC'
      Origin = 'SOFTEPS.CARTERA.VALOR_UPC'
    end
    object qrymccartera1COD_TIPO_AFIL: TStringField
      FieldName = 'COD_TIPO_AFIL'
      Origin = 'SOFTEPS.CARTERA.COD_TIPO_AFIL'
      Size = 1
    end
    object qrymccartera1TIP_DOCUMENTO_COT: TStringField
      FieldName = 'TIP_DOCUMENTO_COT'
      Origin = 'SOFTEPS.CARTERA.TIP_DOCUMENTO_COT'
      Size = 3
    end
    object qrymccartera1NUM_DOCUMENTO_COT: TStringField
      FieldName = 'NUM_DOCUMENTO_COT'
      Origin = 'SOFTEPS.CARTERA.NUM_DOCUMENTO_COT'
      Size = 18
    end
    object qrymccartera1INTERES: TFloatField
      FieldName = 'INTERES'
      Origin = 'SOFTEPS.CARTERA.INTERES'
    end
  end
  object qrymcvalores: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      'SELECT * FROM VALORESANULESCOMP WHERE ANO = :FECHA')
    Left = 20
    Top = 44
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'FECHA'
        ParamType = ptInputOutput
        Value = 0d
      end>
    object qrymcvaloresANO: TDateTimeField
      FieldName = 'ANO'
      Origin = 'SOFTEPS.VALORESANULESCOMP.ANO'
    end
    object qrymcvaloresSAL_MINIMO: TFloatField
      FieldName = 'SAL_MINIMO'
      Origin = 'SOFTEPS.VALORESANULESCOMP.SAL_MINIMO'
    end
    object qrymcvaloresUPC: TFloatField
      FieldName = 'UPC'
      Origin = 'SOFTEPS.VALORESANULESCOMP.UPC'
    end
    object qrymcvaloresPYP: TFloatField
      FieldName = 'PYP'
      Origin = 'SOFTEPS.VALORESANULESCOMP.PYP'
    end
    object qrymcvaloresSOL: TFloatField
      FieldName = 'SOL'
      Origin = 'SOFTEPS.VALORESANULESCOMP.SOL'
    end
    object qrymcvaloresRIESGO: TFloatField
      FieldName = 'RIESGO'
      Origin = 'SOFTEPS.VALORESANULESCOMP.RIESGO'
    end
    object qrymcvaloresVAL_UPC_DIA_NORMAL: TFloatField
      FieldName = 'VAL_UPC_DIA_NORMAL'
      Origin = 'SOFTEPS.VALORESANULESCOMP.VAL_UPC_DIA_NORMAL'
    end
    object qrymcvaloresVAL_UPC_DIA_ESPECIAL: TFloatField
      FieldName = 'VAL_UPC_DIA_ESPECIAL'
      Origin = 'SOFTEPS.VALORESANULESCOMP.VAL_UPC_DIA_ESPECIAL'
    end
    object qrymcvaloresPOR_COTIZACION: TFloatField
      FieldName = 'POR_COTIZACION'
      Origin = 'SOFTEPS.VALORESANULESCOMP.POR_COTIZACION'
    end
    object qrymcvaloresPOR_ENFERMEDAD_GENERAL: TFloatField
      FieldName = 'POR_ENFERMEDAD_GENERAL'
      Origin = 'SOFTEPS.VALORESANULESCOMP.POR_ENFERMEDAD_GENERAL'
    end
    object qrymcvaloresPOR_PROVISION_INC: TFloatField
      FieldName = 'POR_PROVISION_INC'
      Origin = 'SOFTEPS.VALORESANULESCOMP.POR_PROVISION_INC'
    end
    object qrymcvaloresPOR_PYP_LIQUIDACION: TFloatField
      FieldName = 'POR_PYP_LIQUIDACION'
      Origin = 'SOFTEPS.VALORESANULESCOMP.POR_PYP_LIQUIDACION'
    end
    object qrymcvaloresPOR_SOLIDARIDAD_LIQUIDACION: TFloatField
      FieldName = 'POR_SOLIDARIDAD_LIQUIDACION'
      Origin = 'SOFTEPS.VALORESANULESCOMP.POR_SOLIDARIDAD_LIQUIDACION'
    end
  end
  object qrymcintereses: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      'SELECT * FROM INTERESES')
    Left = 20
    Top = 68
    object qrymcinteresesFEC_INTERESES: TDateTimeField
      FieldName = 'FEC_INTERESES'
      Origin = 'SOFTEPS.INTERESES.FEC_INTERESES'
    end
    object qrymcinteresesVAL_ANUL: TFloatField
      FieldName = 'VAL_ANUL'
      Origin = 'SOFTEPS.INTERESES.VAL_ANUL'
    end
    object qrymcinteresesVAL_MENSUAL: TFloatField
      FieldName = 'VAL_MENSUAL'
      Origin = 'SOFTEPS.INTERESES.VAL_MENSUAL'
    end
    object qrymcinteresesDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Origin = 'SOFTEPS.INTERESES.DESCRIPCION'
      Size = 255
    end
  end
  object qrymcafiactivos: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      'SELECT TIP_DOCUMENTO,NUM_DOCUMENTO,COD_MODALIDAD_TRA '
      'FROM AFILIADOS '
      'WHERE COD_TIPO_AFIL = '#39'C'#39' '
      
        'AND ((FEC_AFILIACION_UNI < :FECHA1 AND (COD_MODALIDAD_TRA = '#39'D'#39' ' +
        'OR COD_MODALIDAD_TRA = '#39'E'#39' OR COD_MODALIDAD_TRA = '#39'P'#39'))'
      ' OR (FEC_AFILIACION_UNI <= :FECHA2 AND COD_MODALIDAD_TRA = '#39'I'#39')'
      
        ' OR (FEC_AFILIACION_UNI <= :FECHA3 AND FEC_AFILIACION_SIS <> FEC' +
        '_AFILIACION_UNI))')
    Left = 22
    Top = 96
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'FECHA1'
        ParamType = ptInputOutput
        Value = 0d
      end
      item
        DataType = ftDateTime
        Name = 'FECHA2'
        ParamType = ptInputOutput
        Value = 0d
      end
      item
        DataType = ftDateTime
        Name = 'FECHA3'
        ParamType = ptInputOutput
        Value = 0d
      end>
    object qrymcafiactivosTIP_DOCUMENTO: TStringField
      FieldName = 'TIP_DOCUMENTO'
      Origin = 'DBO.AFILIADOS.TIP_DOCUMENTO'
      Size = 3
    end
    object qrymcafiactivosNUM_DOCUMENTO: TStringField
      FieldName = 'NUM_DOCUMENTO'
      Origin = 'DBO.AFILIADOS.NUM_DOCUMENTO'
      Size = 18
    end
    object qrymcafiactivosCOD_MODALIDAD_TRA: TStringField
      FieldName = 'COD_MODALIDAD_TRA'
      Origin = 'DBO.AFILIADOS.COD_MODALIDAD_TRA'
      Size = 1
    end
  end
  object tblcartera: TTable
    DatabaseName = 'softeps'
    TableName = 'CARTERA'
    Left = 20
    Top = 124
    object tblcarteraTIP_DOCUMENTO: TStringField
      FieldName = 'TIP_DOCUMENTO'
      Required = True
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
      Size = 7
    end
    object tblcarteraTIPO_MORA: TStringField
      FieldName = 'TIPO_MORA'
      Required = True
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
      Size = 1
    end
    object tblcarteraTIP_DOCUMENTO_COT: TStringField
      FieldName = 'TIP_DOCUMENTO_COT'
      Required = True
      Size = 3
    end
    object tblcarteraNUM_DOCUMENTO_COT: TStringField
      FieldName = 'NUM_DOCUMENTO_COT'
      Required = True
      Size = 18
    end
    object tblcarteraINTERES: TFloatField
      FieldName = 'INTERES'
    end
  end
  object qrymcnovegre: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      'SELECT FEC_EVENTO FROM NOVEDADES_AFILIADOS'
      'WHERE NOV_CODIGO = 66'
      '               AND TIP_DOCUMENTO = :tip_documento'
      '               AND NUM_DOCUMENTO = :num_documento'
      'ORDER BY FEC_EVENTO'
      '')
    Left = 20
    Top = 152
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
      Origin = 'SOFTEPS.NOVEDADES_AFILIADOS.FEC_EVENTO'
    end
  end
  object qrymcnoving: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      'SELECT FEC_EVENTO FROM NOVEDADES_AFILIADOS'
      'WHERE NOV_CODIGO = 88'
      '               AND TIP_DOCUMENTO = :tip_documento'
      '               AND NUM_DOCUMENTO = :num_documento'
      'ORDER BY FEC_EVENTO'
      '')
    Left = 20
    Top = 180
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
      Origin = 'DBO.NOVEDADES_AFILIADOS.FEC_EVENTO'
    end
  end
  object qrymcafiemp: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      'SELECT * FROM AFILIADOS_EMPRESAS '
      'WHERE TIP_DOCUMENTO_AFI = :tip_documento'
      '          AND NUM_DOCUMENTO_AFI = :num_documento'
      '          AND FEC_INGRESO_UNI < :fecha1'
      
        '          AND ((FEC_EGRESO_UNI IS NULL) OR  (FEC_EGRESO_UNI > :f' +
        'echa2 ))'
      ''
      '')
    Left = 48
    Top = 16
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
      Origin = 'DBO.AFILIADOS_EMPRESAS.COD_OCUPACION'
      Size = 3
    end
    object qrymcafiempTIP_DOCUMENTO_AFI: TStringField
      FieldName = 'TIP_DOCUMENTO_AFI'
      Origin = 'DBO.AFILIADOS_EMPRESAS.TIP_DOCUMENTO_AFI'
      Size = 3
    end
    object qrymcafiempNUM_DOCUMENTO_AFI: TStringField
      FieldName = 'NUM_DOCUMENTO_AFI'
      Origin = 'DBO.AFILIADOS_EMPRESAS.NUM_DOCUMENTO_AFI'
      Size = 18
    end
    object qrymcafiempTIP_DOCUMENTO_EMP: TStringField
      FieldName = 'TIP_DOCUMENTO_EMP'
      Origin = 'DBO.AFILIADOS_EMPRESAS.TIP_DOCUMENTO_EMP'
      Size = 3
    end
    object qrymcafiempNUM_DOCUMENTO_EMP: TStringField
      FieldName = 'NUM_DOCUMENTO_EMP'
      Origin = 'DBO.AFILIADOS_EMPRESAS.NUM_DOCUMENTO_EMP'
      Size = 18
    end
    object qrymcafiempCOD_SUCURSAL: TStringField
      FieldName = 'COD_SUCURSAL'
      Origin = 'DBO.AFILIADOS_EMPRESAS.COD_SUCURSAL'
      Size = 2
    end
    object qrymcafiempCOD_ESTADO: TStringField
      FieldName = 'COD_ESTADO'
      Origin = 'DBO.AFILIADOS_EMPRESAS.COD_ESTADO'
      Size = 2
    end
    object qrymcafiempVAL_SUELDO_AFIL: TFloatField
      FieldName = 'VAL_SUELDO_AFIL'
      Origin = 'DBO.AFILIADOS_EMPRESAS.VAL_SUELDO_AFIL'
    end
    object qrymcafiempFEC_INGRESO_UNI: TDateTimeField
      FieldName = 'FEC_INGRESO_UNI'
      Origin = 'DBO.AFILIADOS_EMPRESAS.FEC_INGRESO_UNI'
    end
    object qrymcafiempFEC_EGRESO_UNI: TDateTimeField
      FieldName = 'FEC_EGRESO_UNI'
      Origin = 'DBO.AFILIADOS_EMPRESAS.FEC_EGRESO_UNI'
    end
    object qrymcafiempCOD_DEPARTAMENTO_LAB: TStringField
      FieldName = 'COD_DEPARTAMENTO_LAB'
      Origin = 'DBO.AFILIADOS_EMPRESAS.COD_DEPARTAMENTO_LAB'
      Size = 2
    end
    object qrymcafiempCOD_CIUDAD_LAB: TStringField
      FieldName = 'COD_CIUDAD_LAB'
      Origin = 'DBO.AFILIADOS_EMPRESAS.COD_CIUDAD_LAB'
      Size = 3
    end
    object qrymcafiempDIR_AFILIADO_LAB: TStringField
      FieldName = 'DIR_AFILIADO_LAB'
      Origin = 'DBO.AFILIADOS_EMPRESAS.DIR_AFILIADO_LAB'
      Size = 50
    end
    object qrymcafiempTEL_AFILIADO_LAB: TStringField
      FieldName = 'TEL_AFILIADO_LAB'
      Origin = 'DBO.AFILIADOS_EMPRESAS.TEL_AFILIADO_LAB'
    end
    object qrymcafiempTEL_AFILIADO_LAB2: TStringField
      FieldName = 'TEL_AFILIADO_LAB2'
      Origin = 'DBO.AFILIADOS_EMPRESAS.TEL_AFILIADO_LAB2'
    end
    object qrymcafiempCOD_TIPO_SAL: TStringField
      FieldName = 'COD_TIPO_SAL'
      Origin = 'DBO.AFILIADOS_EMPRESAS.COD_TIPO_SAL'
      Size = 1
    end
    object qrymcafiempCOD_ZONA: TStringField
      FieldName = 'COD_ZONA'
      Origin = 'DBO.AFILIADOS_EMPRESAS.COD_ZONA'
      Size = 3
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
      '')
    Left = 48
    Top = 44
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
      end>
    object qrymccarteraPER_COTIZACION: TStringField
      FieldName = 'PER_COTIZACION'
      Origin = 'DBO.DET_PLANILLA_AUTOLIQUIDACION.PER_COTIZACION'
      Size = 7
    end
  end
  object qrymcrelafiliados: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      'SELECT DISTINCT * FROM RELACION_AFILIADOS '
      'WHERE TIP_DOCUMENTO_COT =  :tip_documento'
      '          AND NUM_DOCUMENTO_COT = :num_documento'
      '          AND FEC_INCLUSION_NOV <= :fec_fin'
      
        '          AND ((FEC_EXCLUSION_NOV IS NULL) OR (FEC_EXCLUSION_NOV' +
        ' >= :fec_ini)) '
      'ORDER BY NUM_DOCUMENTO_BEN'
      '')
    Left = 46
    Top = 68
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
        DataType = ftString
        Name = 'fec_ini'
        ParamType = ptInputOutput
        Value = 0d
      end>
    object qrymcrelafiliadosTIP_DOCUMENTO_COT: TStringField
      FieldName = 'TIP_DOCUMENTO_COT'
      Origin = 'DBO.RELACION_AFILIADOS.TIP_DOCUMENTO_COT'
      Size = 3
    end
    object qrymcrelafiliadosNUM_DOCUMENTO_COT: TStringField
      FieldName = 'NUM_DOCUMENTO_COT'
      Origin = 'DBO.RELACION_AFILIADOS.NUM_DOCUMENTO_COT'
      Size = 18
    end
    object qrymcrelafiliadosTIP_DOCUMENTO_BEN: TStringField
      FieldName = 'TIP_DOCUMENTO_BEN'
      Origin = 'DBO.RELACION_AFILIADOS.TIP_DOCUMENTO_BEN'
      Size = 3
    end
    object qrymcrelafiliadosNUM_DOCUMENTO_BEN: TStringField
      FieldName = 'NUM_DOCUMENTO_BEN'
      Origin = 'DBO.RELACION_AFILIADOS.NUM_DOCUMENTO_BEN'
      Size = 18
    end
    object qrymcrelafiliadosFEC_INCLUSION_NOV: TDateTimeField
      FieldName = 'FEC_INCLUSION_NOV'
      Origin = 'DBO.RELACION_AFILIADOS.FEC_INCLUSION_NOV'
    end
    object qrymcrelafiliadosCOD_PARENTESCO: TStringField
      FieldName = 'COD_PARENTESCO'
      Origin = 'DBO.RELACION_AFILIADOS.COD_PARENTESCO'
      Size = 3
    end
    object qrymcrelafiliadosFEC_EXCLUSION_NOV: TDateTimeField
      FieldName = 'FEC_EXCLUSION_NOV'
      Origin = 'DBO.RELACION_AFILIADOS.FEC_EXCLUSION_NOV'
    end
    object qrymcrelafiliadosCOD_ESTADO: TStringField
      FieldName = 'COD_ESTADO'
      Origin = 'DBO.RELACION_AFILIADOS.COD_ESTADO'
      Size = 2
    end
    object qrymcrelafiliadosCOD_RELACION_ADI: TStringField
      FieldName = 'COD_RELACION_ADI'
      Origin = 'DBO.RELACION_AFILIADOS.COD_RELACION_ADI'
      Size = 2
    end
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
    Left = 48
    Top = 96
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
      Origin = 'DBO.AFILIADOS.TIP_DOCUMENTO'
      Size = 3
    end
    object qrymcaficiuNUM_DOCUMENTO: TStringField
      FieldName = 'NUM_DOCUMENTO'
      Origin = 'DBO.AFILIADOS.NUM_DOCUMENTO'
      Size = 18
    end
    object qrymcaficiuCOD_SEXO: TStringField
      FieldName = 'COD_SEXO'
      Origin = 'DBO.AFILIADOS.COD_SEXO'
      Size = 1
    end
    object qrymcaficiuCOD_TIPO_AFIL: TStringField
      FieldName = 'COD_TIPO_AFIL'
      Origin = 'DBO.AFILIADOS.COD_TIPO_AFIL'
      Size = 1
    end
    object qrymcaficiuCOD_MODALIDAD_TRA: TStringField
      FieldName = 'COD_MODALIDAD_TRA'
      Origin = 'DBO.AFILIADOS.COD_MODALIDAD_TRA'
      Size = 1
    end
    object qrymcaficiuCOD_ESTADO_CIV: TStringField
      FieldName = 'COD_ESTADO_CIV'
      Origin = 'DBO.AFILIADOS.COD_ESTADO_CIV'
      Size = 1
    end
    object qrymcaficiuCOD_ESTRATO: TStringField
      FieldName = 'COD_ESTRATO'
      Origin = 'DBO.AFILIADOS.COD_ESTRATO'
      Size = 3
    end
    object qrymcaficiuCOD_ESCOLARIDAD: TStringField
      FieldName = 'COD_ESCOLARIDAD'
      Origin = 'DBO.AFILIADOS.COD_ESCOLARIDAD'
      Size = 3
    end
    object qrymcaficiuCOD_PROFESION: TStringField
      FieldName = 'COD_PROFESION'
      Origin = 'DBO.AFILIADOS.COD_PROFESION'
      Size = 3
    end
    object qrymcaficiuCOD_ESTADO: TStringField
      FieldName = 'COD_ESTADO'
      Origin = 'DBO.AFILIADOS.COD_ESTADO'
      Size = 2
    end
    object qrymcaficiuCOD_OFICINA: TStringField
      FieldName = 'COD_OFICINA'
      Origin = 'DBO.AFILIADOS.COD_OFICINA'
      Size = 3
    end
    object qrymcaficiuCOD_REGIONAL: TStringField
      FieldName = 'COD_REGIONAL'
      Origin = 'DBO.AFILIADOS.COD_REGIONAL'
      Size = 3
    end
    object qrymcaficiuPRI_NOMBRE: TStringField
      FieldName = 'PRI_NOMBRE'
      Origin = 'DBO.AFILIADOS.PRI_NOMBRE'
      Size = 25
    end
    object qrymcaficiuSEG_NOMBRE: TStringField
      FieldName = 'SEG_NOMBRE'
      Origin = 'DBO.AFILIADOS.SEG_NOMBRE'
      Size = 25
    end
    object qrymcaficiuPRI_APELLIDO: TStringField
      FieldName = 'PRI_APELLIDO'
      Origin = 'DBO.AFILIADOS.PRI_APELLIDO'
      Size = 25
    end
    object qrymcaficiuSEG_APELLIDO: TStringField
      FieldName = 'SEG_APELLIDO'
      Origin = 'DBO.AFILIADOS.SEG_APELLIDO'
      Size = 25
    end
    object qrymcaficiuFEC_NACIMIENTO: TDateTimeField
      FieldName = 'FEC_NACIMIENTO'
      Origin = 'DBO.AFILIADOS.FEC_NACIMIENTO'
    end
    object qrymcaficiuFEC_AFILIACION_SIS: TDateTimeField
      FieldName = 'FEC_AFILIACION_SIS'
      Origin = 'DBO.AFILIADOS.FEC_AFILIACION_SIS'
    end
    object qrymcaficiuFEC_AFILIACION_UNI: TDateTimeField
      FieldName = 'FEC_AFILIACION_UNI'
      Origin = 'DBO.AFILIADOS.FEC_AFILIACION_UNI'
    end
    object qrymcaficiuEPS_TIP_DOC: TStringField
      FieldName = 'EPS_TIP_DOC'
      Origin = 'DBO.AFILIADOS.EPS_TIP_DOC'
      Size = 3
    end
    object qrymcaficiuEPS_NUM_DOC: TStringField
      FieldName = 'EPS_NUM_DOC'
      Origin = 'DBO.AFILIADOS.EPS_NUM_DOC'
      Size = 18
    end
    object qrymcaficiuCOD_DEPARTAMENTO_RES: TStringField
      FieldName = 'COD_DEPARTAMENTO_RES'
      Origin = 'DBO.AFILIADOS.COD_DEPARTAMENTO_RES'
      Size = 2
    end
    object qrymcaficiuCOD_CIUDAD_RES: TStringField
      FieldName = 'COD_CIUDAD_RES'
      Origin = 'DBO.AFILIADOS.COD_CIUDAD_RES'
      Size = 3
    end
    object qrymcaficiuCOD_BARRIO_RES: TStringField
      FieldName = 'COD_BARRIO_RES'
      Origin = 'DBO.AFILIADOS.COD_BARRIO_RES'
      Size = 3
    end
    object qrymcaficiuCOD_ZONA: TStringField
      FieldName = 'COD_ZONA'
      Origin = 'DBO.AFILIADOS.COD_ZONA'
      Size = 3
    end
    object qrymcaficiuACE_TIP_DOC: TStringField
      FieldName = 'ACE_TIP_DOC'
      Origin = 'DBO.AFILIADOS.ACE_TIP_DOC'
      Size = 3
    end
    object qrymcaficiuACE_NUMERO_DOC: TStringField
      FieldName = 'ACE_NUMERO_DOC'
      Origin = 'DBO.AFILIADOS.ACE_NUMERO_DOC'
      Size = 18
    end
    object qrymcaficiuCOD_DISCAPACIDAD: TStringField
      FieldName = 'COD_DISCAPACIDAD'
      Origin = 'DBO.AFILIADOS.COD_DISCAPACIDAD'
      Size = 1
    end
    object qrymcaficiuNUM_SEMANA_COTIZA: TFloatField
      FieldName = 'NUM_SEMANA_COTIZA'
      Origin = 'DBO.AFILIADOS.NUM_SEMANA_COTIZA'
    end
    object qrymcaficiuFEC_RADICACION: TDateTimeField
      FieldName = 'FEC_RADICACION'
      Origin = 'DBO.AFILIADOS.FEC_RADICACION'
    end
    object qrymcaficiuNUM_FORMATO_AFIL: TStringField
      FieldName = 'NUM_FORMATO_AFIL'
      Origin = 'DBO.AFILIADOS.NUM_FORMATO_AFIL'
      Size = 10
    end
    object qrymcaficiuDIR_AFILIADO_RES: TStringField
      FieldName = 'DIR_AFILIADO_RES'
      Origin = 'DBO.AFILIADOS.DIR_AFILIADO_RES'
      Size = 50
    end
    object qrymcaficiuTEL_AFILIADO_RES: TStringField
      FieldName = 'TEL_AFILIADO_RES'
      Origin = 'DBO.AFILIADOS.TEL_AFILIADO_RES'
    end
    object qrymcaficiuTEL_AFILIADO_RES2: TStringField
      FieldName = 'TEL_AFILIADO_RES2'
      Origin = 'DBO.AFILIADOS.TEL_AFILIADO_RES2'
    end
    object qrymcaficiuCEL_AFILIADO: TStringField
      FieldName = 'CEL_AFILIADO'
      Origin = 'DBO.AFILIADOS.CEL_AFILIADO'
    end
    object qrymcaficiuEML_AFILIADO: TStringField
      FieldName = 'EML_AFILIADO'
      Origin = 'DBO.AFILIADOS.EML_AFILIADO'
      Size = 50
    end
    object qrymcaficiuFEC_ULTIMA_NOV: TDateTimeField
      FieldName = 'FEC_ULTIMA_NOV'
      Origin = 'DBO.AFILIADOS.FEC_ULTIMA_NOV'
    end
    object qrymcaficiuTIP_DOCUMENTO_IPS: TStringField
      FieldName = 'TIP_DOCUMENTO_IPS'
      Origin = 'DBO.AFILIADOS.TIP_DOCUMENTO_IPS'
      Size = 3
    end
    object qrymcaficiuNUM_DOCUMENTO_IPS: TStringField
      FieldName = 'NUM_DOCUMENTO_IPS'
      Origin = 'DBO.AFILIADOS.NUM_DOCUMENTO_IPS'
      Size = 18
    end
    object qrymcaficiuTIP_DOCUMENTO_MED: TStringField
      FieldName = 'TIP_DOCUMENTO_MED'
      Origin = 'DBO.AFILIADOS.TIP_DOCUMENTO_MED'
      Size = 3
    end
    object qrymcaficiuNUM_DOCUMENTO_MED: TStringField
      FieldName = 'NUM_DOCUMENTO_MED'
      Origin = 'DBO.AFILIADOS.NUM_DOCUMENTO_MED'
      Size = 18
    end
    object qrymcaficiuTIP_DOCUMENTO_ODO: TStringField
      FieldName = 'TIP_DOCUMENTO_ODO'
      Origin = 'DBO.AFILIADOS.TIP_DOCUMENTO_ODO'
      Size = 3
    end
    object qrymcaficiuNUM_DOCUMENTO_ODO: TStringField
      FieldName = 'NUM_DOCUMENTO_ODO'
      Origin = 'DBO.AFILIADOS.NUM_DOCUMENTO_ODO'
      Size = 18
    end
    object qrymcaficiuSEM_COTIZACION: TFloatField
      FieldName = 'SEM_COTIZACION'
      Origin = 'DBO.AFILIADOS.SEM_COTIZACION'
    end
    object qrymcaficiuCOD_DEPARTAMENTO: TStringField
      FieldName = 'COD_DEPARTAMENTO'
      Origin = 'DBO.AFILIADOS.SEM_COTIZACION'
      Size = 2
    end
    object qrymcaficiuCOD_CIUDAD: TStringField
      FieldName = 'COD_CIUDAD'
      Origin = 'DBO.AFILIADOS.SEM_COTIZACION'
      Size = 3
    end
    object qrymcaficiuNOM_CIUDAD: TStringField
      FieldName = 'NOM_CIUDAD'
      Origin = 'DBO.AFILIADOS.SEM_COTIZACION'
      Size = 35
    end
    object qrymcaficiuPOR_ALTO_RIE: TStringField
      FieldName = 'POR_ALTO_RIE'
      Origin = 'DBO.AFILIADOS.SEM_COTIZACION'
      Size = 3
    end
    object qrymcaficiuCOD_REGIONAL_1: TStringField
      FieldName = 'COD_REGIONAL_1'
      Origin = 'DBO.AFILIADOS.SEM_COTIZACION'
      Size = 3
    end
    object qrymcaficiuVALOR_UPC: TFloatField
      FieldName = 'VALOR_UPC'
      Origin = 'DBO.AFILIADOS.SEM_COTIZACION'
    end
    object qrymcaficiuCEN_COSTO: TStringField
      FieldName = 'CEN_COSTO'
      Origin = 'DBO.AFILIADOS.SEM_COTIZACION'
      Size = 6
    end
  end
  object qrymcgrpeta: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      'SELECT * FROM GRUPOS_ETAREOS '
      'WHERE :edad  >= INI_GRUPO_ETA '
      '             AND  :edad1 <= FIN_GRUPO_ETA'
      
        '             AND (SEXO_GRUPO_ETA = :sexo OR SEXO_GRUPO_ETA = '#39'N'#39 +
        ')'
      '')
    Left = 48
    Top = 120
    ParamData = <
      item
        DataType = ftInteger
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
      Origin = 'DBO.GRUPOS_ETAREOS.COD_GRUPO_ETA'
    end
    object qrymcgrpetaINI_GRUPO_ETA: TFloatField
      FieldName = 'INI_GRUPO_ETA'
      Origin = 'DBO.GRUPOS_ETAREOS.INI_GRUPO_ETA'
    end
    object qrymcgrpetaFIN_GRUPO_ETA: TFloatField
      FieldName = 'FIN_GRUPO_ETA'
      Origin = 'DBO.GRUPOS_ETAREOS.FIN_GRUPO_ETA'
    end
    object qrymcgrpetaSEXO_GRUPO_ETA: TStringField
      FieldName = 'SEXO_GRUPO_ETA'
      Origin = 'DBO.GRUPOS_ETAREOS.SEXO_GRUPO_ETA'
      Size = 1
    end
  end
  object qrymcestcos1: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      'SELECT * FROM ESTRUCTURA_COSTOS '
      'WHERE ANO_VAL_ESTRUCTURA_COST = :ano'
      '          AND COD_GRUPO_ETA = :grupo_eta'
      '')
    Left = 48
    Top = 148
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'ano'
        ParamType = ptInputOutput
        Value = 0d
      end
      item
        DataType = ftString
        Name = 'grupo_eta'
        ParamType = ptInputOutput
        Value = ''
      end>
    object qrymcestcos1COD_GRUPO_ETA: TFloatField
      FieldName = 'COD_GRUPO_ETA'
      Origin = 'DBO.ESTRUCTURA_COSTOS.COD_GRUPO_ETA'
    end
    object qrymcestcos1VAL_ESTRUCTURA_COST: TFloatField
      FieldName = 'VAL_ESTRUCTURA_COST'
      Origin = 'DBO.ESTRUCTURA_COSTOS.VAL_ESTRUCTURA_COST'
    end
    object qrymcestcos1ANO_VAL_ESTRUCTURA_COST: TDateTimeField
      FieldName = 'ANO_VAL_ESTRUCTURA_COST'
      Origin = 'DBO.ESTRUCTURA_COSTOS.ANO_VAL_ESTRUCTURA_COST'
    end
  end
  object qrymccarafi: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      
        'SELECT TIP_DOCUMENTO, NUM_DOCUMENTO, TIP_DOCUMENTO_COT, NUM_DOCU' +
        'MENTO_COT '
      'FROM CARTERA '
      'WHERE PER_COMPENSACION = :periodo')
    Left = 48
    Top = 176
    ParamData = <
      item
        DataType = ftString
        Name = 'periodo'
        ParamType = ptInputOutput
        Value = ''
      end>
    object qrymccarafiTIP_DOCUMENTO: TStringField
      FieldName = 'TIP_DOCUMENTO'
      Origin = 'DBO.CARTERA.TIP_DOCUMENTO'
      Size = 3
    end
    object qrymccarafiNUM_DOCUMENTO: TStringField
      FieldName = 'NUM_DOCUMENTO'
      Origin = 'DBO.CARTERA.NUM_DOCUMENTO'
      Size = 18
    end
    object qrymccarafiTIP_DOCUMENTO_COT: TStringField
      FieldName = 'TIP_DOCUMENTO_COT'
      Origin = 'DBO.CARTERA.TIP_DOCUMENTO_COT'
      Size = 3
    end
    object qrymccarafiNUM_DOCUMENTO_COT: TStringField
      FieldName = 'NUM_DOCUMENTO_COT'
      Origin = 'DBO.CARTERA.NUM_DOCUMENTO_COT'
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
    Left = 44
    Top = 204
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
      Origin = 'DBO.AFILIADOS.COD_ESTADO'
      Size = 2
    end
    object qrymcaficarFEC_ULTIMA_NOV: TDateTimeField
      FieldName = 'FEC_ULTIMA_NOV'
      Origin = 'DBO.AFILIADOS.FEC_ULTIMA_NOV'
    end
  end
  object qryrevcar: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      'SELECT * FROM CARTERA'
      'WHERE TIP_DOCUMENTO = :TP'
      'AND NUM_DOCUMENTO = :NM'
      'AND TIP_DOCUMENTO_EMP = :TPE'
      'AND NUM_DOCUMENTO_EMP = :NME'
      'AND PER_COMPENSACION = :PER'
      '')
    Left = 16
    Top = 208
    ParamData = <
      item
        DataType = ftString
        Name = 'TP'
        ParamType = ptInputOutput
        Value = ''
      end
      item
        DataType = ftFloat
        Name = 'NM'
        ParamType = ptInputOutput
        Value = 0
      end
      item
        DataType = ftString
        Name = 'TPE'
        ParamType = ptInputOutput
        Value = ''
      end
      item
        DataType = ftFloat
        Name = 'NME'
        ParamType = ptInputOutput
        Value = 0
      end
      item
        DataType = ftString
        Name = 'PER'
        ParamType = ptInputOutput
        Value = ''
      end>
    object qryrevcarTIP_DOCUMENTO: TStringField
      FieldName = 'TIP_DOCUMENTO'
      Origin = 'SOFTEPS.CARTERA.TIP_DOCUMENTO'
      Size = 3
    end
    object qryrevcarNUM_DOCUMENTO: TStringField
      FieldName = 'NUM_DOCUMENTO'
      Origin = 'SOFTEPS.CARTERA.NUM_DOCUMENTO'
      Size = 18
    end
    object qryrevcarTIP_DOCUMENTO_EMP: TStringField
      FieldName = 'TIP_DOCUMENTO_EMP'
      Origin = 'SOFTEPS.CARTERA.TIP_DOCUMENTO_EMP'
      Size = 3
    end
    object qryrevcarNUM_DOCUMENTO_EMP: TStringField
      FieldName = 'NUM_DOCUMENTO_EMP'
      Origin = 'SOFTEPS.CARTERA.NUM_DOCUMENTO_EMP'
      Size = 18
    end
    object qryrevcarCOD_SUCURSAL_EMP: TStringField
      FieldName = 'COD_SUCURSAL_EMP'
      Origin = 'SOFTEPS.CARTERA.COD_SUCURSAL_EMP'
      Size = 2
    end
    object qryrevcarPER_COMPENSACION: TStringField
      FieldName = 'PER_COMPENSACION'
      Origin = 'SOFTEPS.CARTERA.PER_COMPENSACION'
      Size = 7
    end
    object qryrevcarTIPO_MORA: TStringField
      FieldName = 'TIPO_MORA'
      Origin = 'SOFTEPS.CARTERA.TIPO_MORA'
      Size = 1
    end
    object qryrevcarVALOR_MORA: TFloatField
      FieldName = 'VALOR_MORA'
      Origin = 'SOFTEPS.CARTERA.VALOR_MORA'
    end
    object qryrevcarVALOR_UPC: TFloatField
      FieldName = 'VALOR_UPC'
      Origin = 'SOFTEPS.CARTERA.VALOR_UPC'
    end
    object qryrevcarCOD_TIPO_AFIL: TStringField
      FieldName = 'COD_TIPO_AFIL'
      Origin = 'SOFTEPS.CARTERA.COD_TIPO_AFIL'
      Size = 1
    end
    object qryrevcarTIP_DOCUMENTO_COT: TStringField
      FieldName = 'TIP_DOCUMENTO_COT'
      Origin = 'SOFTEPS.CARTERA.TIP_DOCUMENTO_COT'
      Size = 3
    end
    object qryrevcarNUM_DOCUMENTO_COT: TStringField
      FieldName = 'NUM_DOCUMENTO_COT'
      Origin = 'SOFTEPS.CARTERA.NUM_DOCUMENTO_COT'
      Size = 18
    end
    object qryrevcarINTERES: TFloatField
      FieldName = 'INTERES'
      Origin = 'SOFTEPS.CARTERA.INTERES'
    end
  end
  object qrymeses: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      'SELECT COUNT(*) AS MESES FROM CARTERA'
      'WHERE TIP_DOCUMENTO = :TP'
      'AND NUM_DOCUMENTO = :NM')
    Left = 112
    Top = 8
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
    object qrymesesMESES: TFloatField
      FieldName = 'MESES'
    end
  end
  object qrycartera: TQuery
    DatabaseName = 'softeps'
    RequestLive = True
    SQL.Strings = (
      'SELECT * FROM CARTERA'
      'WHERE TIP_DOCUMENTO = :DOC'
      'AND NUM_DOCUMENTO = :NUM'
      'AND TIP_DOCUMENTO_EMP = :TIP'
      'AND NUM_DOCUMENTO_EMP = :EMP'
      'AND PER_COMPENSACION = :PER'
      '')
    Left = 190
    Top = 4
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
      end
      item
        DataType = ftString
        Name = 'TIP'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'EMP'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'PER'
        ParamType = ptUnknown
        Value = ''
      end>
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
end
