object frmeps: Tfrmeps
  Left = 189
  Top = 177
  Width = 488
  Height = 375
  Caption = 'E.P.S Activas'
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
    Width = 480
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
    Width = 480
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
    Width = 480
    Height = 288
    Align = alClient
    Color = clMoneyGreen
    DataSource = ds
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 2
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clNavy
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = [fsBold]
    OnDblClick = DBGrid1DblClick
  end
  object qry: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      '  SELECT eps.tip_documento,   '
      '         eps.num_documento,   '
      '         eps.nom_eps,   '
      '         eps.cod_eps,   '
      '         eps.dir_eps,   '
      '         eps.tel_eps,   '
      '         eps.fax_eps,   '
      '         eps.eml_eps,   '
      '         eps.fec_inclusion  '
      '    FROM eps'
      'Order By eps.nom_eps')
    Left = 417
    Top = 3
    object qrytip_documento: TStringField
      DisplayLabel = 'Tipo Doc'
      FieldName = 'tip_documento'
      Origin = 'DBUNIMEC.eps.tip_documento'
      FixedChar = True
      Size = 3
    end
    object qrynum_documento: TStringField
      DisplayLabel = 'Num Doc'
      FieldName = 'num_documento'
      Origin = 'DBUNIMEC.eps.num_documento'
      FixedChar = True
      Size = 18
    end
    object qrynom_eps: TStringField
      DisplayLabel = 'Nombre de la EPS'
      FieldName = 'nom_eps'
      Origin = 'DBUNIMEC.eps.nom_eps'
      FixedChar = True
      Size = 100
    end
    object qrycod_eps: TStringField
      DisplayLabel = 'Codigo EPS'
      FieldName = 'cod_eps'
      Origin = 'DBUNIMEC.eps.cod_eps'
      FixedChar = True
      Size = 6
    end
    object qrydir_eps: TStringField
      DisplayLabel = 'Direcci'#243'n'
      FieldName = 'dir_eps'
      Origin = 'DBUNIMEC.eps.dir_eps'
      FixedChar = True
      Size = 50
    end
    object qrytel_eps: TStringField
      DisplayLabel = 'Telefono'
      FieldName = 'tel_eps'
      Origin = 'DBUNIMEC.eps.tel_eps'
      FixedChar = True
    end
    object qryfax_eps: TStringField
      DisplayLabel = 'Fax'
      FieldName = 'fax_eps'
      Origin = 'DBUNIMEC.eps.fax_eps'
      FixedChar = True
    end
    object qryeml_eps: TStringField
      DisplayLabel = 'Correo Electronico'
      FieldName = 'eml_eps'
      Origin = 'DBUNIMEC.eps.eml_eps'
      FixedChar = True
      Size = 50
    end
    object qryfec_inclusion: TDateTimeField
      DisplayLabel = 'Fecha Inclusi'#243'n'
      FieldName = 'fec_inclusion'
      Origin = 'DBUNIMEC.eps.fec_inclusion'
    end
  end
  object ds: TDataSource
    DataSet = qry
    Left = 445
    Top = 3
  end
end
