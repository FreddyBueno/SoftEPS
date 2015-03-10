object frmcartera: Tfrmcartera
  Left = 39
  Top = 49
  Width = 764
  Height = 525
  Caption = 'Cartera'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 82
    Width = 756
    Height = 397
    ActivePage = TabSheet1
    Align = alClient
    TabIndex = 0
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Cartera Por Empresa'
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 748
        Height = 88
        Align = alTop
        TabOrder = 0
        object Label1: TLabel
          Left = 6
          Top = 30
          Width = 51
          Height = 13
          Caption = 'Tp.Doc :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clActiveCaption
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label2: TLabel
          Left = 102
          Top = 30
          Width = 79
          Height = 13
          Caption = 'Numero Doc :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clActiveCaption
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label5: TLabel
          Left = 6
          Top = 48
          Width = 53
          Height = 13
          Caption = 'Empresa '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clActiveCaption
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label12: TLabel
          Left = 228
          Top = 48
          Width = 59
          Height = 13
          Caption = 'Direcci'#243'n '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clActiveCaption
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label13: TLabel
          Left = 516
          Top = 48
          Width = 55
          Height = 13
          Caption = 'Telefono '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clActiveCaption
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label17: TLabel
          Left = 624
          Top = 48
          Width = 44
          Height = 13
          Caption = 'Ciudad '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clActiveCaption
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Edit1: TEdit
          Left = 60
          Top = 24
          Width = 37
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 0
        end
        object Edit2: TEdit
          Left = 183
          Top = 24
          Width = 121
          Height = 21
          TabOrder = 1
        end
        object Button1: TButton
          Left = 318
          Top = 21
          Width = 75
          Height = 25
          Caption = '&Consultar'
          Default = True
          TabOrder = 2
          OnClick = Button1Click
        end
        object Edit5: TEdit
          Left = 6
          Top = 63
          Width = 217
          Height = 21
          Color = clBtnFace
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
        end
        object Edit12: TEdit
          Left = 228
          Top = 63
          Width = 283
          Height = 21
          Color = clBtnFace
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
        end
        object Edit13: TEdit
          Left = 516
          Top = 63
          Width = 103
          Height = 21
          Color = clBtnFace
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 5
        end
        object Edit17: TEdit
          Left = 624
          Top = 63
          Width = 151
          Height = 21
          Color = clBtnFace
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 6
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 88
        Width = 748
        Height = 234
        Align = alClient
        TabOrder = 1
        object DBGrid1: TDBGrid
          Left = 1
          Top = 1
          Width = 746
          Height = 232
          Align = alClient
          DataSource = DataSource1
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
        Top = 322
        Width = 748
        Height = 47
        Align = alBottom
        TabOrder = 2
        object Label3: TLabel
          Left = 9
          Top = 15
          Width = 117
          Height = 13
          Caption = 'Valor Estimado Mora'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clActiveCaption
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label4: TLabel
          Left = 240
          Top = 18
          Width = 171
          Height = 13
          Caption = 'Valor Estimado Compensacion'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clActiveCaption
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Edit3: TEdit
          Left = 128
          Top = 8
          Width = 105
          Height = 21
          Enabled = False
          TabOrder = 0
        end
        object Edit4: TEdit
          Left = 416
          Top = 8
          Width = 105
          Height = 21
          Enabled = False
          TabOrder = 1
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Cartera Por Afiliado'
      ImageIndex = 1
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 748
        Height = 88
        Align = alTop
        TabOrder = 0
        object Label6: TLabel
          Left = 6
          Top = 30
          Width = 51
          Height = 13
          Caption = 'Tp.Doc :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clActiveCaption
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label7: TLabel
          Left = 102
          Top = 30
          Width = 79
          Height = 13
          Caption = 'Numero Doc :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clActiveCaption
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label8: TLabel
          Left = 6
          Top = 48
          Width = 43
          Height = 13
          Caption = 'Afiliado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clActiveCaption
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label9: TLabel
          Left = 237
          Top = 48
          Width = 50
          Height = 13
          Caption = 'Periodos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clActiveCaption
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label14: TLabel
          Left = 297
          Top = 48
          Width = 69
          Height = 13
          Caption = 'Tel .Afiliado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clActiveCaption
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label15: TLabel
          Left = 384
          Top = 48
          Width = 67
          Height = 13
          Caption = 'Dir. Afiliado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clActiveCaption
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label16: TLabel
          Left = 600
          Top = 48
          Width = 40
          Height = 13
          Caption = 'Ciudad'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clActiveCaption
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Edit6: TEdit
          Left = 60
          Top = 24
          Width = 37
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 0
        end
        object Edit7: TEdit
          Left = 183
          Top = 24
          Width = 121
          Height = 21
          TabOrder = 1
        end
        object Edit8: TEdit
          Left = 6
          Top = 61
          Width = 226
          Height = 21
          Color = clBtnFace
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
        end
        object Edit9: TEdit
          Left = 237
          Top = 61
          Width = 25
          Height = 21
          Color = clBtnFace
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
        end
        object Edit14: TEdit
          Left = 297
          Top = 61
          Width = 79
          Height = 21
          Color = clBtnFace
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 5
        end
        object Edit15: TEdit
          Left = 384
          Top = 61
          Width = 211
          Height = 21
          Color = clBtnFace
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 6
        end
        object Edit16: TEdit
          Left = 600
          Top = 61
          Width = 127
          Height = 21
          Color = clBtnFace
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 7
        end
        object Button2: TButton
          Left = 316
          Top = 20
          Width = 77
          Height = 25
          Caption = '&Consultar'
          TabOrder = 2
          OnClick = Button2Click
        end
      end
      object Panel6: TPanel
        Left = 0
        Top = 298
        Width = 748
        Height = 67
        Align = alBottom
        TabOrder = 1
        object Label10: TLabel
          Left = 243
          Top = 24
          Width = 171
          Height = 13
          Caption = 'Valor Estimado Compensacion'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clActiveCaption
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label11: TLabel
          Left = 15
          Top = 24
          Width = 117
          Height = 13
          Caption = 'Valor Estimado Mora'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clActiveCaption
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Edit10: TEdit
          Left = 135
          Top = 18
          Width = 91
          Height = 21
          Enabled = False
          TabOrder = 0
        end
        object Edit11: TEdit
          Left = 420
          Top = 18
          Width = 85
          Height = 21
          Enabled = False
          TabOrder = 1
        end
      end
      object Panel7: TPanel
        Left = 0
        Top = 88
        Width = 748
        Height = 210
        Align = alClient
        Caption = 'Panel7'
        TabOrder = 2
        object Splitter1: TSplitter
          Left = 1
          Top = 127
          Width = 746
          Height = 6
          Cursor = crVSplit
          Align = alTop
        end
        object Panel8: TPanel
          Left = 1
          Top = 1
          Width = 746
          Height = 126
          Align = alTop
          Caption = 'Panel8'
          TabOrder = 0
          object DBGrid2: TDBGrid
            Left = 1
            Top = 16
            Width = 744
            Height = 109
            Align = alClient
            DataSource = DataSource2
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
          end
          object Panel10: TPanel
            Left = 1
            Top = 1
            Width = 744
            Height = 15
            Align = alTop
            Caption = 'Periodos en Mora del Afiliado'
            TabOrder = 1
          end
        end
        object Panel9: TPanel
          Left = 1
          Top = 133
          Width = 746
          Height = 76
          Align = alClient
          Caption = 'Panel9'
          TabOrder = 1
          object DBGrid3: TDBGrid
            Left = 1
            Top = 16
            Width = 744
            Height = 59
            Align = alClient
            DataSource = DataSource3
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
          end
          object Panel11: TPanel
            Left = 1
            Top = 1
            Width = 744
            Height = 15
            Align = alTop
            Caption = 'Novedades del Afiliado'
            TabOrder = 1
          end
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Cartera Por Afiliado - Grupo Familiar'
      ImageIndex = 2
      object Splitter2: TSplitter
        Left = 0
        Top = 217
        Width = 748
        Height = 9
        Cursor = crVSplit
        Align = alTop
      end
      object Panel12: TPanel
        Left = 0
        Top = 0
        Width = 748
        Height = 73
        Align = alTop
        TabOrder = 0
        object Label18: TLabel
          Left = 6
          Top = 14
          Width = 51
          Height = 13
          Caption = 'Tp.Doc :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clActiveCaption
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label19: TLabel
          Left = 102
          Top = 14
          Width = 79
          Height = 13
          Caption = 'Numero Doc :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clActiveCaption
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label20: TLabel
          Left = 6
          Top = 32
          Width = 43
          Height = 13
          Caption = 'Afiliado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clActiveCaption
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label21: TLabel
          Left = 237
          Top = 32
          Width = 50
          Height = 13
          Caption = 'Periodos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clActiveCaption
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label22: TLabel
          Left = 297
          Top = 32
          Width = 69
          Height = 13
          Caption = 'Tel .Afiliado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clActiveCaption
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label23: TLabel
          Left = 384
          Top = 32
          Width = 67
          Height = 13
          Caption = 'Dir. Afiliado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clActiveCaption
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label24: TLabel
          Left = 600
          Top = 32
          Width = 40
          Height = 13
          Caption = 'Ciudad'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clActiveCaption
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Edit18: TEdit
          Left = 60
          Top = 8
          Width = 37
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 0
        end
        object Edit19: TEdit
          Left = 183
          Top = 8
          Width = 121
          Height = 21
          TabOrder = 1
        end
        object Edit20: TEdit
          Left = 6
          Top = 45
          Width = 226
          Height = 21
          Color = clBtnFace
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
        end
        object Button3: TButton
          Left = 318
          Top = 5
          Width = 75
          Height = 25
          Caption = '&Consultar'
          Default = True
          TabOrder = 2
          OnClick = CarafiliadoClick
        end
        object Edit21: TEdit
          Left = 237
          Top = 45
          Width = 25
          Height = 21
          Color = clBtnFace
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
        end
        object Edit22: TEdit
          Left = 297
          Top = 45
          Width = 79
          Height = 21
          Color = clBtnFace
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 5
        end
        object Edit23: TEdit
          Left = 384
          Top = 45
          Width = 211
          Height = 21
          Color = clBtnFace
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 6
        end
        object Edit24: TEdit
          Left = 600
          Top = 45
          Width = 127
          Height = 21
          Color = clBtnFace
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 7
        end
      end
      object Panel13: TPanel
        Left = 0
        Top = 73
        Width = 748
        Height = 144
        Align = alTop
        TabOrder = 1
        object Panel16: TPanel
          Left = 1
          Top = 1
          Width = 746
          Height = 17
          Align = alTop
          Caption = 'Cartera Grupo Familiar'
          TabOrder = 0
        end
        object DBGrid4: TDBGrid
          Left = 1
          Top = 18
          Width = 746
          Height = 125
          Align = alClient
          DataSource = DataSource4
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
        end
      end
      object Panel14: TPanel
        Left = 0
        Top = 226
        Width = 748
        Height = 139
        Align = alTop
        TabOrder = 2
        object Panel17: TPanel
          Left = 1
          Top = 1
          Width = 746
          Height = 17
          Align = alTop
          Caption = 'Grupo Familiar Con Cartera'
          TabOrder = 0
        end
        object DBGrid5: TDBGrid
          Left = 1
          Top = 18
          Width = 746
          Height = 120
          Align = alClient
          DataSource = DataSource5
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
        end
      end
      object Panel15: TPanel
        Left = 0
        Top = 365
        Width = 748
        Height = 0
        Align = alClient
        TabOrder = 3
        object Label25: TLabel
          Left = 15
          Top = 20
          Width = 117
          Height = 13
          Caption = 'Valor Estimado Mora'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label26: TLabel
          Left = 243
          Top = 20
          Width = 171
          Height = 13
          Caption = 'Valor Estimado Compensacion'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Edit25: TEdit
          Left = 135
          Top = 12
          Width = 91
          Height = 21
          Enabled = False
          TabOrder = 0
        end
        object Edit26: TEdit
          Left = 420
          Top = 12
          Width = 85
          Height = 21
          Enabled = False
          TabOrder = 1
        end
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Cartera Estimada Por Edad de Mora'
      ImageIndex = 3
      object Panel18: TPanel
        Left = 0
        Top = 0
        Width = 748
        Height = 201
        Align = alTop
        TabOrder = 0
        object Button4: TButton
          Left = 324
          Top = 144
          Width = 91
          Height = 25
          Caption = 'Generar Archivo'
          TabOrder = 0
          OnClick = Button4Click
        end
        object RadioGroup1: TRadioGroup
          Left = 136
          Top = 12
          Width = 449
          Height = 125
          Caption = ' Meses en Mora  '
          Columns = 2
          ItemIndex = 0
          Items.Strings = (
            'Morosos Un Mes'
            'Morosos Dos Meses'
            'Morosos Tres Meses'
            'Morosos Cuatro Meses'
            'Morosos Cinco Meses'
            'Morosos Seis Meses'
            'Morosos Mas de Seis Meses'
            'Morosos Siete Meses'
            'Cartera Por Edades de Mora - Dpto')
          TabOrder = 1
        end
        object Edit27: TEdit
          Left = 344
          Top = 176
          Width = 49
          Height = 21
          Color = clBtnFace
          TabOrder = 2
        end
      end
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 5
    Width = 756
    Height = 77
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object Label47: TLabel
      Left = 191
      Top = 34
      Width = 392
      Height = 23
      Caption = 'Modulo de Cartera Regimen Contributivo'
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object Label48: TLabel
      Left = 601
      Top = 6
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
  end
  object Panel19: TPanel
    Left = 0
    Top = 0
    Width = 756
    Height = 5
    Align = alTop
    TabOrder = 2
  end
  object Database1: TDatabase
    AliasName = 'softeps'
    DatabaseName = 'softeps'
    LoginPrompt = False
    Params.Strings = (
      'SERVER NAME=DBO'
      'USER NAME=DBO'
      'NET PROTOCOL=TNS'
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
      'LIST SYNONYMS=NONE'
      'ROWSET SIZE=0'
      'BLOBS TO CACHE=65536'
      'BLOB SIZE=1000'
      'OBJECT MODE=TRUE'
      'PASSWORD=lock')
    SessionName = 'Default'
    Left = 322
    Top = 398
  end
  object Query1: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      
        'SELECT cartera.tip_documento, cartera.num_documento, afiliados.p' +
        'ri_nombre, afiliados.pri_apellido, cartera.per_compensacion, car' +
        'tera.tipo_mora, cartera.valor_mora, cartera.valor_upc,cartera.in' +
        'teres'
      'FROM cartera,afiliados,empresas'
      'WHERE (cartera.tip_documento = afiliados.tip_documento AND'
      
        '               cartera.num_documento = afiliados.num_documento) ' +
        'AND'
      
        '               (cartera.tip_documento_emp = empresas.tip_documen' +
        'to AND'
      
        '               cartera.num_documento_emp = empresas.num_document' +
        'o AND'
      
        '               cartera.cod_sucursal_emp = empresas.cod_sucursal)' +
        ' AND'
      '               cartera.tip_documento_emp = :tp_doc AND'
      '               cartera.num_documento_emp = :num_doc AND'
      '               cartera.cod_tipo_afil = '#39'C'#39
      'ORDER BY cartera.tip_documento, cartera.num_documento'
      '')
    Left = 238
    Top = 394
    ParamData = <
      item
        DataType = ftString
        Name = 'tp_doc'
        ParamType = ptInputOutput
        Value = 'NIT'
      end
      item
        DataType = ftString
        Name = 'num_doc'
        ParamType = ptInputOutput
        Value = '800208423'
      end>
    object Query1TIP_DOCUMENTO: TStringField
      FieldName = 'TIP_DOCUMENTO'
      Origin = 'SOFTEPS.CARTERA.TIP_DOCUMENTO'
      Size = 3
    end
    object Query1NUM_DOCUMENTO: TStringField
      FieldName = 'NUM_DOCUMENTO'
      Origin = 'SOFTEPS.CARTERA.NUM_DOCUMENTO'
      Size = 18
    end
    object Query1PRI_NOMBRE: TStringField
      FieldName = 'PRI_NOMBRE'
      Origin = 'SOFTEPS.AFILIADOS.PRI_NOMBRE'
      Size = 25
    end
    object Query1PRI_APELLIDO: TStringField
      FieldName = 'PRI_APELLIDO'
      Origin = 'SOFTEPS.AFILIADOS.PRI_APELLIDO'
      Size = 25
    end
    object Query1PER_COMPENSACION: TStringField
      FieldName = 'PER_COMPENSACION'
      Origin = 'SOFTEPS.CARTERA.PER_COMPENSACION'
      Size = 7
    end
    object Query1TIPO_MORA: TStringField
      FieldName = 'TIPO_MORA'
      Origin = 'SOFTEPS.CARTERA.TIPO_MORA'
      Size = 1
    end
    object Query1VALOR_MORA: TFloatField
      FieldName = 'VALOR_MORA'
      Origin = 'SOFTEPS.CARTERA.VALOR_MORA'
    end
    object Query1VALOR_UPC: TFloatField
      FieldName = 'VALOR_UPC'
      Origin = 'SOFTEPS.CARTERA.VALOR_UPC'
    end
    object Query1INTERES: TFloatField
      FieldName = 'INTERES'
      Origin = 'SOFTEPS.CARTERA.INTERES'
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 61
    Top = 396
  end
  object Query2: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      'SELECT nom_empresa,dir_empresa,tel_empresa, nom_ciudad'
      'FROM empresas, ciudades'
      'WHERE tip_documento = :tipo AND  num_documento = :numero'
      '             and empresas.cod_ciudad = ciudades.cod_ciudad'
      
        '             and empresas.cod_departamento = ciudades.cod_depart' +
        'amento')
    Left = 219
    Top = 394
    ParamData = <
      item
        DataType = ftString
        Name = 'tipo'
        ParamType = ptInputOutput
        Value = 'NIT'
      end
      item
        DataType = ftString
        Name = 'numero'
        ParamType = ptInputOutput
        Value = '800208423'
      end>
    object Query2NOM_EMPRESA: TStringField
      FieldName = 'NOM_EMPRESA'
      Origin = 'SOFTEPS.EMPRESAS.NOM_EMPRESA'
      Size = 100
    end
    object Query2DIR_EMPRESA: TStringField
      FieldName = 'DIR_EMPRESA'
      Origin = 'SOFTEPS.EMPRESAS.DIR_EMPRESA'
      Size = 50
    end
    object Query2TEL_EMPRESA: TStringField
      FieldName = 'TEL_EMPRESA'
      Origin = 'SOFTEPS.EMPRESAS.TEL_EMPRESA'
    end
    object Query2NOM_CIUDAD: TStringField
      FieldName = 'NOM_CIUDAD'
      Origin = 'SOFTEPS.CIUDADES.NOM_CIUDAD'
      Size = 35
    end
  end
  object Query3: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      
        'SELECT empresas.nom_empresa, cartera.per_compensacion, cartera.t' +
        'ipo_mora, cartera.valor_mora, cartera.valor_upc,cartera.interes'
      'FROM cartera,afiliados,empresas'
      'WHERE  cartera.tip_documento = :tp_doc AND'
      '               cartera.num_documento = :num_doc AND '
      
        '              (cartera.tip_documento = afiliados.tip_documento A' +
        'ND'
      
        '               cartera.num_documento = afiliados.num_documento) ' +
        'AND'
      
        '               (cartera.tip_documento_emp = empresas.tip_documen' +
        'to AND'
      
        '               cartera.num_documento_emp = empresas.num_document' +
        'o AND'
      
        '               cartera.cod_sucursal_emp = empresas.cod_sucursal)' +
        ' '
      '           '
      'ORDER BY cartera.per_compensacion')
    Left = 193
    Top = 396
    ParamData = <
      item
        DataType = ftString
        Name = 'tp_doc'
        ParamType = ptInputOutput
        Value = 'CC'
      end
      item
        DataType = ftString
        Name = 'num_doc'
        ParamType = ptInputOutput
        Value = '12971716'
      end>
    object Query3NOM_EMPRESA: TStringField
      FieldName = 'NOM_EMPRESA'
      Origin = 'SOFTEPS.EMPRESAS.NOM_EMPRESA'
      Size = 100
    end
    object Query3PER_COMPENSACION: TStringField
      FieldName = 'PER_COMPENSACION'
      Origin = 'SOFTEPS.CARTERA.PER_COMPENSACION'
      Size = 7
    end
    object Query3TIPO_MORA: TStringField
      FieldName = 'TIPO_MORA'
      Origin = 'SOFTEPS.CARTERA.TIPO_MORA'
      Size = 1
    end
    object Query3VALOR_MORA: TFloatField
      FieldName = 'VALOR_MORA'
      Origin = 'SOFTEPS.CARTERA.VALOR_MORA'
    end
    object Query3VALOR_UPC: TFloatField
      FieldName = 'VALOR_UPC'
      Origin = 'SOFTEPS.CARTERA.VALOR_UPC'
    end
    object Query3INTERES: TFloatField
      FieldName = 'INTERES'
      Origin = 'SOFTEPS.CARTERA.INTERES'
    end
  end
  object Query4: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      
        'SELECT pri_nombre, seg_nombre, pri_apellido,seg_apellido, tel_af' +
        'iliado_res, dir_afiliado_res, nom_ciudad'
      'FROM afiliados, ciudades'
      'WHERE tip_documento =  :tp_doc  AND  num_documento =  :num_doc '
      
        '               and afiliados.cod_ciudad_res = ciudades.cod_ciuda' +
        'd '
      
        '               and afiliados.cod_departamento_res = ciudades.cod' +
        '_departamento')
    Left = 167
    Top = 396
    ParamData = <
      item
        DataType = ftString
        Name = 'tp_doc'
        ParamType = ptInputOutput
        Value = 'CC'
      end
      item
        DataType = ftString
        Name = 'num_doc'
        ParamType = ptInputOutput
        Value = '12971716'
      end>
    object Query4PRI_NOMBRE: TStringField
      FieldName = 'PRI_NOMBRE'
      Origin = 'SOFTEPS.AFILIADOS.PRI_NOMBRE'
      Size = 25
    end
    object Query4SEG_NOMBRE: TStringField
      FieldName = 'SEG_NOMBRE'
      Origin = 'SOFTEPS.AFILIADOS.SEG_NOMBRE'
      Size = 25
    end
    object Query4PRI_APELLIDO: TStringField
      FieldName = 'PRI_APELLIDO'
      Origin = 'SOFTEPS.AFILIADOS.PRI_APELLIDO'
      Size = 25
    end
    object Query4SEG_APELLIDO: TStringField
      FieldName = 'SEG_APELLIDO'
      Origin = 'SOFTEPS.AFILIADOS.SEG_APELLIDO'
      Size = 25
    end
    object Query4TEL_AFILIADO_RES: TStringField
      FieldName = 'TEL_AFILIADO_RES'
      Origin = 'SOFTEPS.AFILIADOS.TEL_AFILIADO_RES'
    end
    object Query4DIR_AFILIADO_RES: TStringField
      FieldName = 'DIR_AFILIADO_RES'
      Origin = 'SOFTEPS.AFILIADOS.DIR_AFILIADO_RES'
      Size = 50
    end
    object Query4NOM_CIUDAD: TStringField
      FieldName = 'NOM_CIUDAD'
      Origin = 'SOFTEPS.CIUDADES.NOM_CIUDAD'
      Size = 35
    end
  end
  object DataSource2: TDataSource
    DataSet = Query3
    Left = 35
    Top = 397
  end
  object Query5: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      'SELECT *'
      'FROM novedades_afiliados'
      'WHERE tip_documento =  :tp_doc  AND  num_documento =  :num_doc ')
    Left = 141
    Top = 396
    ParamData = <
      item
        DataType = ftString
        Name = 'tp_doc'
        ParamType = ptInputOutput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'num_doc'
        ParamType = ptInputOutput
        Value = ''
      end>
    object Query5COD_NOVEDAD_AFIL: TFloatField
      FieldName = 'COD_NOVEDAD_AFIL'
      Origin = 'SOFTEPS.NOVEDADES_AFILIADOS.COD_NOVEDAD_AFIL'
    end
    object Query5NOV_CODIGO: TStringField
      FieldName = 'NOV_CODIGO'
      Origin = 'SOFTEPS.NOVEDADES_AFILIADOS.NOV_CODIGO'
      Size = 3
    end
    object Query5TIP_DOCUMENTO: TStringField
      FieldName = 'TIP_DOCUMENTO'
      Origin = 'SOFTEPS.NOVEDADES_AFILIADOS.TIP_DOCUMENTO'
      Size = 3
    end
    object Query5NUM_DOCUMENTO: TStringField
      FieldName = 'NUM_DOCUMENTO'
      Origin = 'SOFTEPS.NOVEDADES_AFILIADOS.NUM_DOCUMENTO'
      Size = 18
    end
    object Query5COD_OFICINA: TStringField
      FieldName = 'COD_OFICINA'
      Origin = 'SOFTEPS.NOVEDADES_AFILIADOS.COD_OFICINA'
      Size = 3
    end
    object Query5COD_REGIONAL: TStringField
      FieldName = 'COD_REGIONAL'
      Origin = 'SOFTEPS.NOVEDADES_AFILIADOS.COD_REGIONAL'
      Size = 3
    end
    object Query5USU_TIPO_DOC: TStringField
      FieldName = 'USU_TIPO_DOC'
      Origin = 'SOFTEPS.NOVEDADES_AFILIADOS.USU_TIPO_DOC'
      Size = 3
    end
    object Query5USU_NUMERO_DOC: TStringField
      FieldName = 'USU_NUMERO_DOC'
      Origin = 'SOFTEPS.NOVEDADES_AFILIADOS.USU_NUMERO_DOC'
      Size = 18
    end
    object Query5FEC_NOVEDAD_AFIL: TDateTimeField
      FieldName = 'FEC_NOVEDAD_AFIL'
      Origin = 'SOFTEPS.NOVEDADES_AFILIADOS.FEC_NOVEDAD_AFIL'
    end
    object Query5NOM_CAMPO: TStringField
      FieldName = 'NOM_CAMPO'
      Origin = 'SOFTEPS.NOVEDADES_AFILIADOS.NOM_CAMPO'
      Size = 30
    end
    object Query5DAT_CAMPO_ANT: TStringField
      FieldName = 'DAT_CAMPO_ANT'
      Origin = 'SOFTEPS.NOVEDADES_AFILIADOS.DAT_CAMPO_ANT'
      Size = 50
    end
    object Query5NOM_TABLA: TStringField
      FieldName = 'NOM_TABLA'
      Origin = 'SOFTEPS.NOVEDADES_AFILIADOS.NOM_TABLA'
      Size = 30
    end
    object Query5DAT_CAMPO_DES: TStringField
      FieldName = 'DAT_CAMPO_DES'
      Origin = 'SOFTEPS.NOVEDADES_AFILIADOS.DAT_CAMPO_DES'
      Size = 50
    end
    object Query5FEC_EVENTO: TDateTimeField
      FieldName = 'FEC_EVENTO'
      Origin = 'SOFTEPS.NOVEDADES_AFILIADOS.FEC_EVENTO'
    end
    object Query5FEC_APLICATIVO: TDateTimeField
      FieldName = 'FEC_APLICATIVO'
      Origin = 'SOFTEPS.NOVEDADES_AFILIADOS.FEC_APLICATIVO'
    end
    object Query5TIP_DOCUMENTO_EMP: TStringField
      FieldName = 'TIP_DOCUMENTO_EMP'
      Origin = 'SOFTEPS.NOVEDADES_AFILIADOS.TIP_DOCUMENTO_EMP'
      Size = 3
    end
    object Query5NUM_DOCUMENTO_EMP: TStringField
      FieldName = 'NUM_DOCUMENTO_EMP'
      Origin = 'SOFTEPS.NOVEDADES_AFILIADOS.NUM_DOCUMENTO_EMP'
      Size = 18
    end
    object Query5COD_SUCURSAL: TStringField
      FieldName = 'COD_SUCURSAL'
      Origin = 'SOFTEPS.NOVEDADES_AFILIADOS.COD_SUCURSAL'
      Size = 2
    end
    object Query5NUM_PLANILLA: TStringField
      FieldName = 'NUM_PLANILLA'
      Origin = 'SOFTEPS.NOVEDADES_AFILIADOS.NUM_PLANILLA'
      Size = 15
    end
  end
  object DataSource3: TDataSource
    DataSet = Query5
    Left = 9
    Top = 397
  end
  object qrycargrupo: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      'select * from cartera'
      'where tip_documento_cot = :tipo'
      'and num_documento_cot = :numero')
    Left = 264
    Top = 396
    ParamData = <
      item
        DataType = ftString
        Name = 'tipo'
        ParamType = ptInputOutput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'numero'
        ParamType = ptInputOutput
        Value = ''
      end>
    object qrycargrupoTIP_DOCUMENTO: TStringField
      FieldName = 'TIP_DOCUMENTO'
      Origin = 'SOFTEPS.CARTERA.TIP_DOCUMENTO'
      Size = 3
    end
    object qrycargrupoNUM_DOCUMENTO: TStringField
      FieldName = 'NUM_DOCUMENTO'
      Origin = 'SOFTEPS.CARTERA.NUM_DOCUMENTO'
      Size = 18
    end
    object qrycargrupoTIP_DOCUMENTO_EMP: TStringField
      FieldName = 'TIP_DOCUMENTO_EMP'
      Origin = 'SOFTEPS.CARTERA.TIP_DOCUMENTO_EMP'
      Size = 3
    end
    object qrycargrupoNUM_DOCUMENTO_EMP: TStringField
      FieldName = 'NUM_DOCUMENTO_EMP'
      Origin = 'SOFTEPS.CARTERA.NUM_DOCUMENTO_EMP'
      Size = 18
    end
    object qrycargrupoCOD_SUCURSAL_EMP: TStringField
      FieldName = 'COD_SUCURSAL_EMP'
      Origin = 'SOFTEPS.CARTERA.COD_SUCURSAL_EMP'
      Size = 2
    end
    object qrycargrupoPER_COMPENSACION: TStringField
      FieldName = 'PER_COMPENSACION'
      Origin = 'SOFTEPS.CARTERA.PER_COMPENSACION'
      Size = 7
    end
    object qrycargrupoTIPO_MORA: TStringField
      FieldName = 'TIPO_MORA'
      Origin = 'SOFTEPS.CARTERA.TIPO_MORA'
      Size = 1
    end
    object qrycargrupoVALOR_MORA: TFloatField
      FieldName = 'VALOR_MORA'
      Origin = 'SOFTEPS.CARTERA.VALOR_MORA'
    end
    object qrycargrupoVALOR_UPC: TFloatField
      FieldName = 'VALOR_UPC'
      Origin = 'SOFTEPS.CARTERA.VALOR_UPC'
    end
    object qrycargrupoCOD_TIPO_AFIL: TStringField
      FieldName = 'COD_TIPO_AFIL'
      Origin = 'SOFTEPS.CARTERA.COD_TIPO_AFIL'
      Size = 1
    end
    object qrycargrupoTIP_DOCUMENTO_COT: TStringField
      FieldName = 'TIP_DOCUMENTO_COT'
      Origin = 'SOFTEPS.CARTERA.TIP_DOCUMENTO_COT'
      Size = 3
    end
    object qrycargrupoNUM_DOCUMENTO_COT: TStringField
      FieldName = 'NUM_DOCUMENTO_COT'
      Origin = 'SOFTEPS.CARTERA.NUM_DOCUMENTO_COT'
      Size = 18
    end
    object qrycargrupoINTERES: TFloatField
      FieldName = 'INTERES'
      Origin = 'SOFTEPS.CARTERA.INTERES'
    end
  end
  object qrygrupo: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      'select distinct(cartera.num_documento), '
      'pri_nombre,seg_nombre,pri_apellido,seg_apellido '
      'from cartera, afiliados'
      'where tip_documento_cot = :tipo'
      'and num_documento_cot = :numero'
      'and cartera.tip_documento = afiliados.tip_documento'
      'and cartera.num_documento = afiliados.num_documento')
    Left = 292
    Top = 396
    ParamData = <
      item
        DataType = ftString
        Name = 'tipo'
        ParamType = ptInputOutput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'numero'
        ParamType = ptInputOutput
        Value = ''
      end>
    object qrygrupoNUM_DOCUMENTO: TStringField
      FieldName = 'NUM_DOCUMENTO'
      Origin = 'SOFTEPS.CARTERA.NUM_DOCUMENTO'
      Size = 18
    end
    object qrygrupoPRI_NOMBRE: TStringField
      FieldName = 'PRI_NOMBRE'
      Origin = 'SOFTEPS.CARTERA.TIP_DOCUMENTO'
      Size = 3
    end
    object qrygrupoSEG_NOMBRE: TStringField
      FieldName = 'SEG_NOMBRE'
      Origin = 'SOFTEPS.AFILIADOS.SEG_NOMBRE'
      Size = 25
    end
    object qrygrupoPRI_APELLIDO: TStringField
      FieldName = 'PRI_APELLIDO'
      Origin = 'SOFTEPS.AFILIADOS.PRI_APELLIDO'
      Size = 25
    end
    object qrygrupoSEG_APELLIDO: TStringField
      FieldName = 'SEG_APELLIDO'
      Origin = 'SOFTEPS.AFILIADOS.SEG_APELLIDO'
      Size = 25
    end
  end
  object DataSource4: TDataSource
    DataSet = qrycargrupo
    Left = 88
    Top = 396
  end
  object DataSource5: TDataSource
    DataSet = qrygrupo
    Left = 116
    Top = 396
  end
  object qrydiscartera: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      
        'select distinct(num_documento),tip_documento, num_documento_cot,' +
        'num_documento_emp'
      'from cartera'
      'where cod_tipo_afil = '#39'C'#39
      'order by num_documento_emp,num_documento_cot')
    Left = 348
    Top = 396
    object qrydiscarteraNUM_DOCUMENTO: TStringField
      FieldName = 'NUM_DOCUMENTO'
      Origin = 'SOFTEPS.CARTERA.NUM_DOCUMENTO'
      Size = 18
    end
    object qrydiscarteraTIP_DOCUMENTO: TStringField
      FieldName = 'TIP_DOCUMENTO'
      Origin = 'SOFTEPS.CARTERA.TIP_DOCUMENTO'
      Size = 3
    end
    object qrydiscarteraNUM_DOCUMENTO_COT: TStringField
      FieldName = 'NUM_DOCUMENTO_COT'
      Origin = 'SOFTEPS.CARTERA.NUM_DOCUMENTO_COT'
      Size = 18
    end
    object qrydiscarteraNUM_DOCUMENTO_EMP: TStringField
      FieldName = 'NUM_DOCUMENTO_EMP'
      Origin = 'DBO.CARTERA.NUM_DOCUMENTO_EMP'
      Size = 18
    end
  end
  object qrycountcar: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      'select * from cartera'
      'where tip_documento = :tip'
      'and num_documento =  :numero'
      'and tipo_mora <> '#39'0'#39)
    Left = 376
    Top = 392
    ParamData = <
      item
        DataType = ftString
        Name = 'tip'
        ParamType = ptInputOutput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'numero'
        ParamType = ptInputOutput
        Value = ''
      end>
    object qrycountcarTIP_DOCUMENTO: TStringField
      FieldName = 'TIP_DOCUMENTO'
      Origin = 'SOFTEPS.CARTERA.TIP_DOCUMENTO'
      Size = 3
    end
    object qrycountcarNUM_DOCUMENTO: TStringField
      FieldName = 'NUM_DOCUMENTO'
      Origin = 'SOFTEPS.CARTERA.NUM_DOCUMENTO'
      Size = 18
    end
    object qrycountcarTIP_DOCUMENTO_EMP: TStringField
      FieldName = 'TIP_DOCUMENTO_EMP'
      Origin = 'SOFTEPS.CARTERA.TIP_DOCUMENTO_EMP'
      Size = 3
    end
    object qrycountcarNUM_DOCUMENTO_EMP: TStringField
      FieldName = 'NUM_DOCUMENTO_EMP'
      Origin = 'SOFTEPS.CARTERA.NUM_DOCUMENTO_EMP'
      Size = 18
    end
    object qrycountcarCOD_SUCURSAL_EMP: TStringField
      FieldName = 'COD_SUCURSAL_EMP'
      Origin = 'SOFTEPS.CARTERA.COD_SUCURSAL_EMP'
      Size = 2
    end
    object qrycountcarPER_COMPENSACION: TStringField
      FieldName = 'PER_COMPENSACION'
      Origin = 'SOFTEPS.CARTERA.PER_COMPENSACION'
      Size = 7
    end
    object qrycountcarTIPO_MORA: TStringField
      FieldName = 'TIPO_MORA'
      Origin = 'SOFTEPS.CARTERA.TIPO_MORA'
      Size = 1
    end
    object qrycountcarVALOR_MORA: TFloatField
      FieldName = 'VALOR_MORA'
      Origin = 'SOFTEPS.CARTERA.VALOR_MORA'
    end
    object qrycountcarVALOR_UPC: TFloatField
      FieldName = 'VALOR_UPC'
      Origin = 'SOFTEPS.CARTERA.VALOR_UPC'
    end
    object qrycountcarCOD_TIPO_AFIL: TStringField
      FieldName = 'COD_TIPO_AFIL'
      Origin = 'SOFTEPS.CARTERA.COD_TIPO_AFIL'
      Size = 1
    end
    object qrycountcarTIP_DOCUMENTO_COT: TStringField
      FieldName = 'TIP_DOCUMENTO_COT'
      Origin = 'SOFTEPS.CARTERA.TIP_DOCUMENTO_COT'
      Size = 3
    end
    object qrycountcarNUM_DOCUMENTO_COT: TStringField
      FieldName = 'NUM_DOCUMENTO_COT'
      Origin = 'SOFTEPS.CARTERA.NUM_DOCUMENTO_COT'
      Size = 18
    end
    object qrycountcarINTERES: TFloatField
      FieldName = 'INTERES'
      Origin = 'SOFTEPS.CARTERA.INTERES'
    end
  end
  object MainMenu1: TMainMenu
    Left = 104
    Top = 292
    object Archivo1: TMenuItem
      Caption = '&Archivo'
      object ConfigurarImpresora1: TMenuItem
        Caption = '&Configurar Impresora'
        OnClick = ConfigurarImpresora1Click
      end
      object Salir1: TMenuItem
        Caption = '&Salir'
        OnClick = Salir1Click
      end
    end
    object Procesos1: TMenuItem
      Caption = '&Procesos'
      object GeneraciondeCartera1: TMenuItem
        Caption = 'Generacion de Cartera'
        OnClick = GeneraciondeCartera1Click
      end
    end
    object Reportes1: TMenuItem
      Caption = '&Reportes'
      object CarteraPorEmpresa1: TMenuItem
        Caption = 'Cartera Por &Empresa'
        OnClick = CarteraPorEmpresa1Click
      end
      object CarteraPorAfiliado1: TMenuItem
        Caption = 'Cartera Por &Afiliado'
        OnClick = CarteraPorAfiliado1Click
      end
      object CarteraPorAfiliadoGrupoFamiliar1: TMenuItem
        Caption = 'Cartera Por A&filiado Grupo Familiar'
        OnClick = CarteraPorAfiliadoGrupoFamiliar1Click
      end
      object CarteraPorEdadesdeMora1: TMenuItem
        Caption = '&Cartera Por Edades de Mora'
        OnClick = CarteraPorEdadesdeMora1Click
      end
    end
    object Ayuda1: TMenuItem
      Caption = '&Ayuda'
      object Acercade1: TMenuItem
        Caption = 'Acerca de.'
      end
    end
  end
  object PrinterSetupDialog1: TPrinterSetupDialog
    Left = 404
    Top = 392
  end
  object qryempresa: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      'SELECT * FROM EMPRESAS'
      'WHERE NUM_DOCUMENTO = :NM_DOC')
    Left = 426
    Top = 388
    ParamData = <
      item
        DataType = ftString
        Name = 'NM_DOC'
        ParamType = ptInputOutput
        Value = ''
      end>
    object qryempresaTIP_DOCUMENTO: TStringField
      FieldName = 'TIP_DOCUMENTO'
      Origin = 'DBO.EMPRESAS.TIP_DOCUMENTO'
      Size = 3
    end
    object qryempresaNUM_DOCUMENTO: TStringField
      FieldName = 'NUM_DOCUMENTO'
      Origin = 'DBO.EMPRESAS.NUM_DOCUMENTO'
      Size = 18
    end
    object qryempresaCOD_SUCURSAL: TStringField
      FieldName = 'COD_SUCURSAL'
      Origin = 'DBO.EMPRESAS.COD_SUCURSAL'
      Size = 2
    end
    object qryempresaCOD_ACTIVIDAD_ECO: TStringField
      FieldName = 'COD_ACTIVIDAD_ECO'
      Origin = 'DBO.EMPRESAS.COD_ACTIVIDAD_ECO'
      Size = 4
    end
    object qryempresaCOD_ESTADO: TStringField
      FieldName = 'COD_ESTADO'
      Origin = 'DBO.EMPRESAS.COD_ESTADO'
      Size = 2
    end
    object qryempresaCOD_OFICINA: TStringField
      FieldName = 'COD_OFICINA'
      Origin = 'DBO.EMPRESAS.COD_OFICINA'
      Size = 3
    end
    object qryempresaCOD_REGIONAL: TStringField
      FieldName = 'COD_REGIONAL'
      Origin = 'DBO.EMPRESAS.COD_REGIONAL'
      Size = 3
    end
    object qryempresaTIP_DOCUMENTO_ARP: TStringField
      FieldName = 'TIP_DOCUMENTO_ARP'
      Origin = 'DBO.EMPRESAS.TIP_DOCUMENTO_ARP'
      Size = 3
    end
    object qryempresaNUM_DOCUMENTO_ARP: TStringField
      FieldName = 'NUM_DOCUMENTO_ARP'
      Origin = 'DBO.EMPRESAS.NUM_DOCUMENTO_ARP'
      Size = 18
    end
    object qryempresaCOD_DEPARTAMENTO: TStringField
      FieldName = 'COD_DEPARTAMENTO'
      Origin = 'DBO.EMPRESAS.COD_DEPARTAMENTO'
      Size = 2
    end
    object qryempresaCOD_CIUDAD: TStringField
      FieldName = 'COD_CIUDAD'
      Origin = 'DBO.EMPRESAS.COD_CIUDAD'
      Size = 3
    end
    object qryempresaTIP_APORTANTE: TStringField
      FieldName = 'TIP_APORTANTE'
      Origin = 'DBO.EMPRESAS.TIP_APORTANTE'
      Size = 1
    end
    object qryempresaNOM_EMPRESA: TStringField
      FieldName = 'NOM_EMPRESA'
      Origin = 'DBO.EMPRESAS.NOM_EMPRESA'
      Size = 100
    end
    object qryempresaFEC_AFILIACION: TDateTimeField
      FieldName = 'FEC_AFILIACION'
      Origin = 'DBO.EMPRESAS.FEC_AFILIACION'
    end
    object qryempresaDIR_EMPRESA: TStringField
      FieldName = 'DIR_EMPRESA'
      Origin = 'DBO.EMPRESAS.DIR_EMPRESA'
      Size = 50
    end
    object qryempresaTEL_EMPRESA: TStringField
      FieldName = 'TEL_EMPRESA'
      Origin = 'DBO.EMPRESAS.TEL_EMPRESA'
    end
    object qryempresaTEL_EMPRESA2: TStringField
      FieldName = 'TEL_EMPRESA2'
      Origin = 'DBO.EMPRESAS.TEL_EMPRESA2'
    end
    object qryempresaURL_EMPRESA: TStringField
      FieldName = 'URL_EMPRESA'
      Origin = 'DBO.EMPRESAS.URL_EMPRESA'
    end
    object qryempresaEML_EMPRESA: TStringField
      FieldName = 'EML_EMPRESA'
      Origin = 'DBO.EMPRESAS.EML_EMPRESA'
      Size = 50
    end
    object qryempresaTOT_EMPLEADOS: TStringField
      FieldName = 'TOT_EMPLEADOS'
      Origin = 'DBO.EMPRESAS.TOT_EMPLEADOS'
      Size = 10
    end
    object qryempresaCOD_TIPO_PER: TStringField
      FieldName = 'COD_TIPO_PER'
      Origin = 'DBO.EMPRESAS.COD_TIPO_PER'
      Size = 1
    end
    object qryempresaCOD_ZONA: TStringField
      FieldName = 'COD_ZONA'
      Origin = 'DBO.EMPRESAS.COD_ZONA'
      Size = 3
    end
    object qryempresaCOD_DEPARTAMENTO_PAG: TStringField
      FieldName = 'COD_DEPARTAMENTO_PAG'
      Origin = 'DBO.EMPRESAS.COD_DEPARTAMENTO_PAG'
      Size = 2
    end
    object qryempresaCOD_CIUDAD_PAG: TStringField
      FieldName = 'COD_CIUDAD_PAG'
      Origin = 'DBO.EMPRESAS.COD_CIUDAD_PAG'
      Size = 3
    end
    object qryempresaCOD_PRESENTACION_COM: TStringField
      FieldName = 'COD_PRESENTACION_COM'
      Origin = 'DBO.EMPRESAS.COD_PRESENTACION_COM'
      Size = 1
    end
    object qryempresaCOD_TIP_EMPRESA: TStringField
      FieldName = 'COD_TIP_EMPRESA'
      Origin = 'DBO.EMPRESAS.COD_TIP_EMPRESA'
      Size = 1
    end
    object qryempresaTIP_DOCUMENTO_PEN: TStringField
      FieldName = 'TIP_DOCUMENTO_PEN'
      Origin = 'DBO.EMPRESAS.TIP_DOCUMENTO_PEN'
      Size = 3
    end
    object qryempresaNUM_DOCUMENTO_PEN: TStringField
      FieldName = 'NUM_DOCUMENTO_PEN'
      Origin = 'DBO.EMPRESAS.NUM_DOCUMENTO_PEN'
      Size = 18
    end
  end
  object qryacesor: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      'SELECT ACESORES.PRI_APELLIDO, ACESORES.PRI_NOMBRE'
      'FROM AFILIADOS,ACESORES'
      'WHERE AFILIADOS.TIP_DOCUMENTO = :TP'
      'AND AFILIADOS.NUM_DOCUMENTO = :NUM'
      'AND ACE_NUMERO_DOC = ACESORES.NUM_DOCUMENTO')
    Left = 462
    Top = 376
    ParamData = <
      item
        DataType = ftString
        Name = 'TP'
        ParamType = ptInputOutput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NUM'
        ParamType = ptInputOutput
        Value = ''
      end>
    object qryacesorPRI_APELLIDO: TStringField
      FieldName = 'PRI_APELLIDO'
      Origin = 'SOFTEPS.ACESORES.PRI_APELLIDO'
      Size = 25
    end
    object qryacesorPRI_NOMBRE: TStringField
      FieldName = 'PRI_NOMBRE'
      Origin = 'SOFTEPS.ACESORES.PRI_NOMBRE'
      Size = 25
    end
  end
  object qrydpto: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      'SELECT COD_DEPARTAMENTO FROM DEPARTAMENTOS')
    Left = 520
    Top = 376
    object qrydptoCOD_DEPARTAMENTO: TStringField
      FieldName = 'COD_DEPARTAMENTO'
      Origin = 'SOFTEPS.DEPARTAMENTOS.COD_DEPARTAMENTO'
      Size = 2
    end
  end
  object qryrep1: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      'select tip_documento, num_documento'
      'from afiliados'
      'where cod_departamento_res = :dep '
      'and cod_tipo_afil = '#39'C'#39)
    Left = 600
    Top = 304
    ParamData = <
      item
        DataType = ftString
        Name = 'DEP'
        ParamType = ptInputOutput
        Value = ''
      end>
    object qryrep1TIP_DOCUMENTO: TStringField
      FieldName = 'TIP_DOCUMENTO'
      Origin = 'SOFTEPS.AFILIADOS.TIP_DOCUMENTO'
      Size = 3
    end
    object qryrep1NUM_DOCUMENTO: TStringField
      FieldName = 'NUM_DOCUMENTO'
      Origin = 'SOFTEPS.AFILIADOS.NUM_DOCUMENTO'
      Size = 18
    end
  end
  object qryrep2: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      'select * from cartera'
      'where tip_documento = :tp'
      'and num_documento = :nm'
      'and tipo_mora <> 0')
    Left = 528
    Top = 232
    ParamData = <
      item
        DataType = ftString
        Name = 'tp'
        ParamType = ptInputOutput
        Value = ''
      end
      item
        DataType = ftFloat
        Name = 'nm'
        ParamType = ptInputOutput
        Value = 0
      end>
    object qryrep2TIP_DOCUMENTO: TStringField
      FieldName = 'TIP_DOCUMENTO'
      Origin = 'SOFTEPS.CARTERA.TIP_DOCUMENTO'
      Size = 3
    end
    object qryrep2NUM_DOCUMENTO: TStringField
      FieldName = 'NUM_DOCUMENTO'
      Origin = 'SOFTEPS.CARTERA.NUM_DOCUMENTO'
      Size = 18
    end
    object qryrep2TIP_DOCUMENTO_EMP: TStringField
      FieldName = 'TIP_DOCUMENTO_EMP'
      Origin = 'SOFTEPS.CARTERA.TIP_DOCUMENTO_EMP'
      Size = 3
    end
    object qryrep2NUM_DOCUMENTO_EMP: TStringField
      FieldName = 'NUM_DOCUMENTO_EMP'
      Origin = 'SOFTEPS.CARTERA.NUM_DOCUMENTO_EMP'
      Size = 18
    end
    object qryrep2COD_SUCURSAL_EMP: TStringField
      FieldName = 'COD_SUCURSAL_EMP'
      Origin = 'SOFTEPS.CARTERA.COD_SUCURSAL_EMP'
      Size = 2
    end
    object qryrep2PER_COMPENSACION: TStringField
      FieldName = 'PER_COMPENSACION'
      Origin = 'SOFTEPS.CARTERA.PER_COMPENSACION'
      Size = 7
    end
    object qryrep2TIPO_MORA: TStringField
      FieldName = 'TIPO_MORA'
      Origin = 'SOFTEPS.CARTERA.TIPO_MORA'
      Size = 1
    end
    object qryrep2VALOR_MORA: TFloatField
      FieldName = 'VALOR_MORA'
      Origin = 'SOFTEPS.CARTERA.VALOR_MORA'
    end
    object qryrep2VALOR_UPC: TFloatField
      FieldName = 'VALOR_UPC'
      Origin = 'SOFTEPS.CARTERA.VALOR_UPC'
    end
    object qryrep2COD_TIPO_AFIL: TStringField
      FieldName = 'COD_TIPO_AFIL'
      Origin = 'SOFTEPS.CARTERA.COD_TIPO_AFIL'
      Size = 1
    end
    object qryrep2TIP_DOCUMENTO_COT: TStringField
      FieldName = 'TIP_DOCUMENTO_COT'
      Origin = 'SOFTEPS.CARTERA.TIP_DOCUMENTO_COT'
      Size = 3
    end
    object qryrep2NUM_DOCUMENTO_COT: TStringField
      FieldName = 'NUM_DOCUMENTO_COT'
      Origin = 'SOFTEPS.CARTERA.NUM_DOCUMENTO_COT'
      Size = 18
    end
    object qryrep2INTERES: TFloatField
      FieldName = 'INTERES'
      Origin = 'SOFTEPS.CARTERA.INTERES'
    end
  end
end
