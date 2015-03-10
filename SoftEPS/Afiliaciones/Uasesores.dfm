object frmasesores: Tfrmasesores
  Left = 246
  Top = 144
  Width = 490
  Height = 375
  Caption = 'Asesores Activos'
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
    Width = 482
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
        Width = 40
        Height = 13
        Caption = 'Apellido:'
      end
      object Edit1: TEdit
        Left = 47
        Top = 11
        Width = 114
        Height = 21
        Color = clMoneyGreen
        TabOrder = 0
      end
      object Button1: TButton
        Left = 168
        Top = 9
        Width = 64
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
    Width = 482
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
    Width = 482
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
      '  SELECT ACESORES.TIP_DOCUMENTO,   '
      '         ACESORES.NUM_DOCUMENTO,   '
      '         ACESORES.PRI_APELLIDO,   '
      '         ACESORES.SEG_APELLIDO,   '
      '         ACESORES.PRI_NOMBRE,   '
      '         ACESORES.SEG_NOMBRE  '
      '    FROM ACESORES  '
      '   WHERE ACESORES.COD_ESTADO = '#39'A'#39
      'ORDER BY ACESORES.PRI_APELLIDO  '
      ''
      '')
    Left = 417
    Top = 3
    object qrytip_documento: TStringField
      DisplayLabel = 'Tipo Doc'
      FieldName = 'tip_documento'
      Origin = 'DBUNIMEC.acesores.tip_documento'
      FixedChar = True
      Size = 3
    end
    object qrynum_documento: TStringField
      DisplayLabel = 'Num Doc'
      FieldName = 'num_documento'
      Origin = 'DBUNIMEC.acesores.num_documento'
      FixedChar = True
      Size = 18
    end
    object qrypri_apellido: TStringField
      DisplayLabel = 'Primer Apellido'
      FieldName = 'pri_apellido'
      Origin = 'DBUNIMEC.acesores.pri_apellido'
      FixedChar = True
      Size = 25
    end
    object qryseg_apellido: TStringField
      DisplayLabel = 'Segundo Apellido'
      FieldName = 'seg_apellido'
      Origin = 'DBUNIMEC.acesores.seg_apellido'
      FixedChar = True
      Size = 25
    end
    object qrypri_nombre: TStringField
      DisplayLabel = 'Primer Nombre'
      FieldName = 'pri_nombre'
      Origin = 'DBUNIMEC.acesores.pri_nombre'
      FixedChar = True
      Size = 25
    end
    object qryseg_nombre: TStringField
      DisplayLabel = 'Segundo Nombre'
      FieldName = 'seg_nombre'
      Origin = 'DBUNIMEC.acesores.seg_nombre'
      FixedChar = True
      Size = 25
    end
  end
  object ds: TDataSource
    DataSet = qry
    Left = 445
    Top = 3
  end
end
