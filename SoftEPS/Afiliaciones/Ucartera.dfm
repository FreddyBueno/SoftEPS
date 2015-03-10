object frmcartera: Tfrmcartera
  Left = 212
  Top = 92
  Width = 544
  Height = 375
  Caption = 'Cartera del Cotizante'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid3: TDBGrid
    Left = 0
    Top = 0
    Width = 536
    Height = 307
    Align = alClient
    Color = clMoneyGreen
    DataSource = dscartera_cotizante
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'tip_documento_emp'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'num_documento_emp'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nom_empresa'
        Width = 323
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cod_sucursal_emp'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'per_compensacion'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tipo_mora'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'valor_mora'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'valor_upc'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cod_tipo_afil'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tip_documento_cot'
        Width = 98
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'num_documento_cot'
        Width = 106
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 307
    Width = 536
    Height = 41
    Align = alBottom
    TabOrder = 1
    object DBNavigator1: TDBNavigator
      Left = 16
      Top = 8
      Width = 224
      Height = 25
      DataSource = dscartera_cotizante
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      TabOrder = 0
    end
  end
  object dscartera_cotizante: TDataSource
    DataSet = qrycartera_cotizante
    Left = 400
    Top = 112
  end
  object qrycartera_cotizante: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      'SELECT CARTERA.TIP_DOCUMENTO,   '
      '         CARTERA.NUM_DOCUMENTO,   '
      '         CARTERA.TIP_DOCUMENTO_EMP,   '
      '         CARTERA.NUM_DOCUMENTO_EMP,   '
      '         CARTERA.COD_SUCURSAL_EMP,   '
      '         CARTERA.PER_COMPENSACION,   '
      '         CARTERA.TIPO_MORA,   '
      '         CARTERA.VALOR_MORA,   '
      '         CARTERA.VALOR_UPC,   '
      '         CARTERA.COD_TIPO_AFIL,'
      '         EMPRESAS.NOM_EMPRESA,'
      '         CARTERA.TIP_DOCUMENTO_COT,'
      '         CARTERA.NUM_DOCUMENTO_COT   '
      '    FROM CARTERA,EMPRESAS  '
      '   WHERE ( CARTERA.TIP_DOCUMENTO = :"TIP_DOCUMENTO" ) AND  '
      '         ( CARTERA.NUM_DOCUMENTO = :"NUM_DOCUMENTO" ) AND'
      
        '         ( CARTERA.TIP_DOCUMENTO_EMP  = EMPRESAS.TIP_DOCUMENTO )' +
        ' AND'
      
        '         ( CARTERA.NUM_DOCUMENTO_EMP = EMPRESAS.NUM_DOCUMENTO ) ' +
        'AND'
      '         ( CARTERA.COD_SUCURSAL_EMP = EMPRESAS.COD_SUCURSAL )'
      '')
    Left = 368
    Top = 112
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'tip_documento'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'num_documento'
        ParamType = ptUnknown
      end>
    object qrycartera_cotizantetip_documento: TStringField
      FieldName = 'tip_documento'
      Origin = 'DBUNIMEC.cartera.tip_documento'
      FixedChar = True
      Size = 3
    end
    object qrycartera_cotizantenum_documento: TStringField
      FieldName = 'num_documento'
      Origin = 'DBUNIMEC.cartera.num_documento'
      FixedChar = True
      Size = 18
    end
    object qrycartera_cotizantetip_documento_emp: TStringField
      FieldName = 'tip_documento_emp'
      Origin = 'DBUNIMEC.cartera.tip_documento_emp'
      FixedChar = True
      Size = 3
    end
    object qrycartera_cotizantenum_documento_emp: TStringField
      FieldName = 'num_documento_emp'
      Origin = 'DBUNIMEC.cartera.num_documento_emp'
      FixedChar = True
      Size = 18
    end
    object qrycartera_cotizantecod_sucursal_emp: TStringField
      FieldName = 'cod_sucursal_emp'
      Origin = 'DBUNIMEC.cartera.cod_sucursal_emp'
      FixedChar = True
      Size = 2
    end
    object qrycartera_cotizanteper_compensacion: TStringField
      FieldName = 'per_compensacion'
      Origin = 'DBUNIMEC.cartera.per_compensacion'
      FixedChar = True
      Size = 7
    end
    object qrycartera_cotizantetipo_mora: TStringField
      FieldName = 'tipo_mora'
      Origin = 'DBUNIMEC.cartera.tipo_mora'
      FixedChar = True
      Size = 1
    end
    object qrycartera_cotizantevalor_mora: TFloatField
      FieldName = 'valor_mora'
      Origin = 'DBUNIMEC.cartera.valor_mora'
    end
    object qrycartera_cotizantevalor_upc: TFloatField
      FieldName = 'valor_upc'
      Origin = 'DBUNIMEC.cartera.valor_upc'
    end
    object qrycartera_cotizantecod_tipo_afil: TStringField
      FieldName = 'cod_tipo_afil'
      Origin = 'DBUNIMEC.cartera.cod_tipo_afil'
      FixedChar = True
      Size = 1
    end
    object qrycartera_cotizantenom_empresa: TStringField
      FieldName = 'nom_empresa'
      Origin = 'DBUNIMEC.empresas.nom_empresa'
      FixedChar = True
      Size = 100
    end
    object qrycartera_cotizantetip_documento_cot: TStringField
      FieldName = 'tip_documento_cot'
      Origin = 'DBUNIMEC.cartera.tip_documento_cot'
      FixedChar = True
      Size = 3
    end
    object qrycartera_cotizantenum_documento_cot: TStringField
      FieldName = 'num_documento_cot'
      Origin = 'DBUNIMEC.cartera.num_documento_cot'
      FixedChar = True
      Size = 18
    end
  end
end
