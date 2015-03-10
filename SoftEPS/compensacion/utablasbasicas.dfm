object frmtablasbasicas: Tfrmtablasbasicas
  Left = 78
  Top = 98
  Width = 664
  Height = 417
  Caption = 'Tablas Basicas de Compensacion'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Visible = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel12: TPanel
    Left = 0
    Top = 0
    Width = 656
    Height = 93
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 72
      Width = 36
      Height = 16
      Caption = 'A'#241'o :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 184
      Top = 32
      Width = 249
      Height = 16
      Caption = 'Consulta Tablas Basicas Compensacion'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 528
      Top = 12
      Width = 53
      Height = 16
      Caption = 'SOFTEPS'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object Button1: TButton
      Left = 544
      Top = 60
      Width = 75
      Height = 25
      Caption = '&Buscar'
      Default = True
      TabOrder = 0
      OnClick = Button1Click
    end
    object GroupBox1: TGroupBox
      Left = 12
      Top = 48
      Width = 605
      Height = 8
      TabOrder = 1
    end
    object ComboBox1: TComboBox
      Left = 48
      Top = 68
      Width = 93
      Height = 21
      Color = clMoneyGreen
      ItemHeight = 13
      TabOrder = 2
      Text = '01/01/1996'
      Items.Strings = (
        '01/01/1996'
        '01/01/1997'
        '01/01/1998'
        '01/01/1999'
        '01/01/2000'
        '01/01/2001'
        '01/01/2002'
        '01/01/2003')
    end
  end
  object Panel13: TPanel
    Left = 0
    Top = 93
    Width = 656
    Height = 297
    Align = alClient
    Caption = 'Panel13'
    TabOrder = 1
    object PageControl1: TPageControl
      Left = 1
      Top = 1
      Width = 654
      Height = 295
      ActivePage = TabSheet1
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MultiLine = True
      ParentFont = False
      TabIndex = 0
      TabOrder = 0
      object TabSheet1: TTabSheet
        Caption = 'Estructuras de Costo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        object Panel1: TPanel
          Left = 0
          Top = 0
          Width = 646
          Height = 267
          Align = alClient
          Caption = 'Panel1'
          TabOrder = 0
          object Panel2: TPanel
            Left = 1
            Top = 225
            Width = 644
            Height = 41
            Align = alBottom
            TabOrder = 0
            object DBNavigator1: TDBNavigator
              Left = 468
              Top = 12
              Width = 128
              Height = 21
              DataSource = dsqestcos
              VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
              TabOrder = 0
            end
          end
          object Panel3: TPanel
            Left = 1
            Top = 1
            Width = 644
            Height = 224
            Align = alClient
            TabOrder = 1
            object DBGrid1: TDBGrid
              Left = 1
              Top = 1
              Width = 642
              Height = 222
              Align = alClient
              BorderStyle = bsNone
              Color = clMoneyGreen
              DataSource = dsqestcos
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ImeMode = imHira
              ParentFont = False
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clBlack
              TitleFont.Height = -11
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = []
            end
          end
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Grupos Etareos'
        ImageIndex = 1
        object Panel4: TPanel
          Left = 0
          Top = 0
          Width = 646
          Height = 267
          Align = alClient
          Caption = 'Panel4'
          TabOrder = 0
          object Panel10: TPanel
            Left = 1
            Top = 226
            Width = 644
            Height = 40
            Align = alBottom
            TabOrder = 0
            object nagrueta: TDBNavigator
              Left = 468
              Top = 12
              Width = 128
              Height = 21
              DataSource = dsetareos
              VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
              TabOrder = 0
            end
          end
          object Panel11: TPanel
            Left = 1
            Top = 1
            Width = 644
            Height = 225
            Align = alClient
            TabOrder = 1
            object DBGrid2: TDBGrid
              Left = 1
              Top = 1
              Width = 642
              Height = 223
              Align = alClient
              BorderStyle = bsNone
              Color = clMoneyGreen
              DataSource = dsetareos
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clBlack
              TitleFont.Height = -11
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = []
            end
          end
        end
      end
      object TabSheet3: TTabSheet
        Caption = 'Valores Compensacion'
        ImageIndex = 2
        object Panel5: TPanel
          Left = 0
          Top = 0
          Width = 646
          Height = 267
          Align = alClient
          Caption = 'Panel5'
          TabOrder = 0
          object Panel14: TPanel
            Left = 1
            Top = 226
            Width = 644
            Height = 40
            Align = alBottom
            TabOrder = 0
            object DBNavigator2: TDBNavigator
              Left = 468
              Top = 12
              Width = 128
              Height = 21
              DataSource = dsvalores
              VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
              TabOrder = 0
            end
          end
          object Panel15: TPanel
            Left = 1
            Top = 1
            Width = 644
            Height = 225
            Align = alClient
            TabOrder = 1
            object DBGrid3: TDBGrid
              Left = 1
              Top = 1
              Width = 642
              Height = 223
              Align = alClient
              BorderStyle = bsNone
              Color = clMoneyGreen
              DataSource = dsvalores
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clBlack
              TitleFont.Height = -11
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = []
            end
          end
        end
      end
      object TabSheet5: TTabSheet
        Caption = 'Valores Upc - Salarios'
        ImageIndex = 4
        object Panel7: TPanel
          Left = 0
          Top = 0
          Width = 646
          Height = 267
          Align = alClient
          Caption = 'Panel7'
          TabOrder = 0
          object Panel18: TPanel
            Left = 1
            Top = 226
            Width = 644
            Height = 40
            Align = alBottom
            TabOrder = 0
            object DBNavigator4: TDBNavigator
              Left = 468
              Top = 12
              Width = 128
              Height = 21
              DataSource = dsupcs
              VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
              TabOrder = 0
            end
          end
          object Panel19: TPanel
            Left = 1
            Top = 1
            Width = 644
            Height = 225
            Align = alClient
            TabOrder = 1
            object DBGrid5: TDBGrid
              Left = 1
              Top = 1
              Width = 642
              Height = 223
              Align = alClient
              BorderStyle = bsNone
              Color = clMoneyGreen
              DataSource = dsupcs
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clBlack
              TitleFont.Height = -11
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = []
            end
          end
        end
      end
      object TabSheet7: TTabSheet
        Caption = 'Tasas de Interes'
        ImageIndex = 6
        object Panel9: TPanel
          Left = 0
          Top = 0
          Width = 646
          Height = 267
          Align = alClient
          Caption = 'Panel9'
          TabOrder = 0
          object Panel22: TPanel
            Left = 1
            Top = 226
            Width = 644
            Height = 40
            Align = alBottom
            TabOrder = 0
            object DBNavigator6: TDBNavigator
              Left = 468
              Top = 12
              Width = 128
              Height = 21
              DataSource = dsinteres
              VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
              TabOrder = 0
            end
          end
          object Panel23: TPanel
            Left = 1
            Top = 1
            Width = 644
            Height = 225
            Align = alClient
            Caption = 'Panel2'
            TabOrder = 1
            object DBGrid6: TDBGrid
              Left = 1
              Top = 1
              Width = 642
              Height = 223
              Align = alClient
              BorderStyle = bsNone
              Color = clMoneyGreen
              Ctl3D = True
              DataSource = dsinteres
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = []
            end
          end
        end
      end
    end
  end
  object dsqestcos: TDataSource
    DataSet = dmcompensa.qrymcestcos1
    Left = 24
    Top = 180
  end
  object dsvalores: TDataSource
    DataSet = dmcompensa.qrymcvalores
    Left = 24
    Top = 148
  end
  object dssal_min: TDataSource
    Left = 24
    Top = 212
  end
  object dsupcs: TDataSource
    Left = 24
    Top = 244
  end
  object dsupczon: TDataSource
    Left = 24
    Top = 116
  end
  object dsetareos: TDataSource
    Left = 24
    Top = 276
  end
  object dsinteres: TDataSource
    Left = 24
    Top = 308
  end
end
