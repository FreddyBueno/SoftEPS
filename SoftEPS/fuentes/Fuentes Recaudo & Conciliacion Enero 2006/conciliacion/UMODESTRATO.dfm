object frmmodificarestrato: Tfrmmodificarestrato
  Left = 240
  Top = 259
  ActiveControl = cbbancos
  BorderIcons = [biSystemMenu]
  BorderStyle = bsNone
  Caption = 'Conciliacion  de Planillas Manualmente'
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
  object Splitter1: TSplitter
    Left = 337
    Top = 135
    Width = 8
    Height = 277
    Beveled = True
    Color = clActiveBorder
    MinSize = 10
    ParentColor = False
    ResizeStyle = rsNone
  end
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
      Left = 20
      Top = 60
      Width = 711
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
    Width = 337
    Height = 277
    Align = alLeft
    TabOrder = 1
    object DBGrid2: TDBGrid
      Left = 1
      Top = 1
      Width = 335
      Height = 275
      Align = alClient
      Color = clMoneyGreen
      DataSource = DataModule1.dtsestracto
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
      Columns = <
        item
          Expanded = False
          FieldName = 'NUM_DOCUMENTO'
          Title.Caption = 'Documento'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FEC_RECAUDO'
          Title.Caption = 'Fecha Recaudo'
          Width = 82
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VAL_CONSIGNACION'
          Title.Caption = 'Valor Consignado'
          Width = 109
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TIP_MOVIMIENTO'
          Title.Caption = 'Tipo Movimiento'
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NUM_PLANILLA'
          Width = 64
          Visible = True
        end>
    end
  end
  object Panel4: TPanel
    Left = 345
    Top = 135
    Width = 404
    Height = 277
    Align = alClient
    TabOrder = 2
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 402
      Height = 275
      Align = alClient
      Color = clMoneyGreen
      DataSource = DataModule1.dtsautoliquidacion
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
      Columns = <
        item
          Expanded = False
          FieldName = 'EMP_TIPO_DOC'
          Title.Caption = 'Tipo'
          Width = 36
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'EMP_NUMERO_DOC'
          Title.Caption = 'Numero'
          Width = 81
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FEC_PAGO'
          Title.Caption = 'Fecha Pago'
          Width = 98
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TOT_PAGADO'
          Title.Caption = 'Total Pagado'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NUM_PLANILLA'
          Title.Caption = 'Numero Planilla'
          Width = 64
          Visible = True
        end>
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 412
    Width = 749
    Height = 42
    Align = alBottom
    Caption = 'Panel2'
    TabOrder = 3
    object Button1: TButton
      Left = 218
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
      OnClick = Button1Click
    end
  end
end
