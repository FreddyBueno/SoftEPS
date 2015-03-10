object frmConsulta: TfrmConsulta
  Left = 16
  Top = 156
  ActiveControl = cbbancos
  BorderIcons = [biSystemMenu]
  BorderStyle = bsNone
  Caption = 'Estado de las  Planillas'
  ClientHeight = 454
  ClientWidth = 749
  Color = clBtnFace
  DefaultMonitor = dmMainForm
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 749
    Height = 135
    Align = alTop
    TabOrder = 0
    object Label47: TLabel
      Left = 231
      Top = 37
      Width = 239
      Height = 23
      Caption = 'CONCILIACION MANUAL'
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object Label48: TLabel
      Left = 633
      Top = 10
      Width = 73
      Height = 19
      Caption = 'SOFTEPS'
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 80
      Top = 120
      Width = 125
      Height = 15
      Caption = 'Extracto Bancario sin conciliar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 462
      Top = 118
      Width = 139
      Height = 15
      Caption = 'Planilla  de Aportes  sin  Conciliar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentFont = False
    end
    object HeaderControl1: THeaderControl
      Left = 1
      Top = 1
      Width = 747
      Height = 2
      Sections = <>
    end
    object GroupBox1: TGroupBox
      Left = 8
      Top = 63
      Width = 731
      Height = 51
      Caption = 'Informacion del Extracto Bancario'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      object Label1: TLabel
        Left = 34
        Top = 24
        Width = 62
        Height = 15
        Caption = 'Nombre Banco'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 327
        Top = 22
        Width = 52
        Height = 15
        Caption = 'Fecha Inicial'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 516
        Top = 22
        Width = 45
        Height = 15
        Caption = 'fecha Final'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
      end
      object cbbancos: TDBLookupComboBox
        Left = 111
        Top = 20
        Width = 196
        Height = 21
        Color = clMoneyGreen
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        KeyField = 'cod_banco'
        ListField = 'nom_banco'
        ListSource = DataModule1.dtsbancos
        ParentFont = False
        TabOrder = 0
        OnExit = cbbancosExit
      end
      object dtfinicial: TDateTimePicker
        Left = 402
        Top = 20
        Width = 101
        Height = 21
        Date = 37270.649961111100000000
        Time = 37270.649961111100000000
        Color = clMoneyGreen
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
      object dtffinal: TDateTimePicker
        Left = 583
        Top = 20
        Width = 89
        Height = 21
        Date = 37270.650053356500000000
        Time = 37270.650053356500000000
        Color = clMoneyGreen
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        OnExit = dtffinalExit
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 135
    Width = 749
    Height = 277
    Align = alClient
    TabOrder = 1
    object DBGrid2: TDBGrid
      Left = 1
      Top = 1
      Width = 747
      Height = 275
      Align = alClient
      Color = clMoneyGreen
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection]
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clNavy
      TitleFont.Height = -11
      TitleFont.Name = 'GoudyOlSt BT'
      TitleFont.Style = [fsBold]
      OnCellClick = DBGrid2CellClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 412
    Width = 749
    Height = 42
    Align = alBottom
    Caption = 'Panel2'
    TabOrder = 2
    object Button1: TButton
      Left = 216
      Top = 2
      Width = 317
      Height = 31
      Caption = 'Conciliar '
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
  end
end
