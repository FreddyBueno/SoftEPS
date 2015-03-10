object frmlistadoupc: Tfrmlistadoupc
  Left = 287
  Top = 106
  Width = 546
  Height = 477
  Caption = 'Listado de Usuarios  que  pagan UPC'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 538
    Height = 42
    Align = alTop
    TabOrder = 0
    object DBNavigator1: TDBNavigator
      Left = 1
      Top = 1
      Width = 536
      Height = 40
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Align = alClient
      TabOrder = 0
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 42
    Width = 538
    Height = 349
    Align = alClient
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 536
      Height = 347
      Align = alClient
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 391
    Width = 538
    Height = 59
    Align = alBottom
    TabOrder = 2
    object Label1: TLabel
      Left = 162
      Top = 4
      Width = 152
      Height = 13
      Caption = 'Valor A pagar Por el Beneficiario'
    end
    object Label2: TLabel
      Left = 67
      Top = 15
      Width = 61
      Height = 13
      Caption = 'Valor_normal'
      FocusControl = DBEdit1
    end
    object Label3: TLabel
      Left = 188
      Top = 17
      Width = 50
      Height = 13
      Caption = 'Promocion'
      FocusControl = DBEdit2
    end
    object Label4: TLabel
      Left = 301
      Top = 18
      Width = 50
      Height = 13
      Caption = 'solidaridad'
      FocusControl = DBEdit3
    end
    object Label5: TLabel
      Left = 433
      Top = 14
      Width = 20
      Height = 13
      Caption = 'total'
      FocusControl = DBEdit4
    end
    object DBEdit1: TDBEdit
      Left = 13
      Top = 30
      Width = 134
      Height = 21
      DataField = 'Valor_normal'
      DataSource = DataSource1
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 154
      Top = 29
      Width = 109
      Height = 21
      DataField = 'Promocion'
      DataSource = DataSource1
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 270
      Top = 30
      Width = 101
      Height = 21
      DataField = 'solidaridad'
      DataSource = DataSource1
      TabOrder = 2
    end
    object DBEdit4: TDBEdit
      Left = 380
      Top = 29
      Width = 134
      Height = 21
      DataField = 'total'
      TabOrder = 3
    end
  end
  object qryvalores: TQuery
    DatabaseName = 'datosmec'
    SQL.Strings = (
      'select val_estructura_cost,'
      'ini_grupo_eta,'
      'fin_grupo_eta,'
      'sexo_grupo_eta,'
      '((val_estructura_cost * val_upc_dia_normal)*30) as Valor_normal,'
      '((por_pyp_liquidacion * val_upc_dia_normal)*30) as Promocion,'
      
        '((por_solidaridad_liquidacion * val_upc_dia_normal)*30) as solid' +
        'aridad'
      'from grupos_etareos,estructura_costos,valoresanulescomp'
      
        'where grupos_etareos.cod_grupo_eta = estructura_costos.cod_grupo' +
        '_eta'
      '      and ano_val_estructura_cost = ano'
      '      and ano_val_estructura_cost = :pfecha'
      '      and (ini_grupo_eta <= :edad'
      '     and fin_grupo_eta >= :edad1)'
      '')
    Left = 308
    Top = 340
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'pfecha'
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
        Name = 'edad1'
        ParamType = ptUnknown
        Value = 0
      end>
    object qryvaloresval_estructura_cost: TFloatField
      FieldName = 'val_estructura_cost'
      Origin = 'DATOSMEC.estructura_costos.val_estructura_cost'
    end
    object qryvaloresini_grupo_eta: TFloatField
      FieldName = 'ini_grupo_eta'
      Origin = 'DATOSMEC.grupos_etareos.ini_grupo_eta'
    end
    object qryvaloresfin_grupo_eta: TFloatField
      FieldName = 'fin_grupo_eta'
      Origin = 'DATOSMEC.grupos_etareos.fin_grupo_eta'
    end
    object qryvaloressexo_grupo_eta: TStringField
      FieldName = 'sexo_grupo_eta'
      Origin = 'DATOSMEC.grupos_etareos.sexo_grupo_eta'
      FixedChar = True
      Size = 1
    end
    object qryvaloresValor_normal: TFloatField
      FieldName = 'Valor_normal'
      Origin = 'DATOSMEC.estructura_costos.val_estructura_cost'
    end
    object qryvaloresPromocion: TFloatField
      FieldName = 'Promocion'
      Origin = 'DATOSMEC.valoresanulescomp.por_pyp_liquidacion'
    end
    object qryvaloressolidaridad: TFloatField
      FieldName = 'solidaridad'
      Origin = 'DATOSMEC.valoresanulescomp.por_solidaridad_liquidacion'
    end
  end
  object DataSource1: TDataSource
    DataSet = frmplanillas.qryautoliquidacion
    Left = 274
    Top = 342
  end
end
