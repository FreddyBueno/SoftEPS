object frmpensiones: Tfrmpensiones
  Left = 253
  Top = 58
  Width = 483
  Height = 375
  Caption = 'Administradora de Pensiones'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 288
    Width = 475
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    object DBNavigator: TDBNavigator
      Left = 8
      Top = 10
      Width = 224
      Height = 25
      DataSource = ds
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Flat = True
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
    end
    object GroupBox1: TGroupBox
      Left = 236
      Top = 0
      Width = 237
      Height = 38
      TabOrder = 1
      object Label1: TLabel
        Left = 4
        Top = 15
        Width = 47
        Height = 13
        Caption = 'Nombre:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Edit1: TEdit
        Left = 56
        Top = 11
        Width = 97
        Height = 21
        Color = clMoneyGreen
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object Button1: TButton
        Left = 160
        Top = 9
        Width = 72
        Height = 25
        Caption = '&Consultar'
        Default = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnClick = Button1Click
      end
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 329
    Width = 475
    Height = 19
    Panels = <>
    ParentShowHint = False
    ShowHint = False
    SimplePanel = True
    SimpleText = '[Nota: Use '#39'%'#39' para visualizar todos los registros]'
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 475
    Height = 288
    Align = alClient
    Color = clMoneyGreen
    DataSource = ds
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
  end
  object qry: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      ' SELECT pensiones.tip_documento,   '
      '         pensiones.num_documento,   '
      '         pensiones.nom_pensiones,   '
      '         pensiones.fec_inclusion  '
      '    FROM pensiones'
      'Order By pensiones.nom_pensiones')
    Left = 417
    Top = 3
    object qrytip_documento: TStringField
      DisplayLabel = 'Tipo Doc'
      FieldName = 'tip_documento'
      Origin = 'DBUNIMEC.pensiones.tip_documento'
      FixedChar = True
      Size = 3
    end
    object qrynum_documento: TStringField
      DisplayLabel = 'Num Doc'
      FieldName = 'num_documento'
      Origin = 'DBUNIMEC.pensiones.num_documento'
      FixedChar = True
      Size = 18
    end
    object qrynom_pensiones: TStringField
      DisplayLabel = 'Nombre de la Administradora de Pensiones'
      FieldName = 'nom_pensiones'
      Origin = 'DBUNIMEC.pensiones.nom_pensiones'
      FixedChar = True
      Size = 100
    end
    object qryfec_inclusion: TDateTimeField
      DisplayLabel = 'Fecha de Inclusi'#243'n'
      FieldName = 'fec_inclusion'
      Origin = 'DBUNIMEC.pensiones.fec_inclusion'
    end
  end
  object ds: TDataSource
    DataSet = qry
    Left = 445
    Top = 3
  end
end
