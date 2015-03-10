object frmanamul: Tfrmanamul
  Left = 110
  Top = 97
  Width = 595
  Height = 425
  Caption = 'Analisis Medio Magnetico FISALUD'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 587
    Height = 398
    Align = alClient
    TabOrder = 0
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 585
      Height = 76
      Align = alTop
      TabOrder = 0
      object Label6: TLabel
        Left = 591
        Top = 12
        Width = 57
        Height = 16
        Caption = 'SOFTEPS '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
      end
      object Label13: TLabel
        Left = 168
        Top = 42
        Width = 219
        Height = 16
        Caption = 'Analisis Medio Magnetico FISALUD'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
      end
      object GroupBox2: TGroupBox
        Left = 118
        Top = 58
        Width = 318
        Height = 9
        TabOrder = 0
      end
    end
    object Panel3: TPanel
      Left = 1
      Top = 314
      Width = 585
      Height = 83
      Align = alBottom
      TabOrder = 1
      object Label1: TLabel
        Left = 4
        Top = 36
        Width = 100
        Height = 13
        Caption = 'Declaracion Final'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label8: TLabel
        Left = 5
        Top = 16
        Width = 107
        Height = 13
        Caption = 'Declaracion Inicial'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Button1: TButton
        Left = 198
        Top = 6
        Width = 75
        Height = 25
        Caption = '&Procesar'
        TabOrder = 2
        OnClick = Button1Click
      end
      object Edit3: TEdit
        Left = 122
        Top = 6
        Width = 61
        Height = 21
        Color = clMoneyGreen
        TabOrder = 0
      end
      object Edit4: TEdit
        Left = 122
        Top = 30
        Width = 61
        Height = 21
        Color = clMoneyGreen
        TabOrder = 1
      end
      object Button2: TButton
        Left = 228
        Top = 46
        Width = 157
        Height = 25
        Caption = 'Exportar a Excel Detalles'
        TabOrder = 3
        OnClick = Button2Click
      end
      object Button3: TButton
        Left = 390
        Top = 46
        Width = 141
        Height = 25
        Caption = 'Exportar a Excel Totales'
        TabOrder = 4
        OnClick = Button3Click
      end
    end
    object Panel4: TPanel
      Left = 1
      Top = 77
      Width = 585
      Height = 237
      Align = alClient
      TabOrder = 2
      object Splitter1: TSplitter
        Left = 1
        Top = 121
        Width = 583
        Height = 6
        Cursor = crVSplit
        Align = alTop
      end
      object Panel5: TPanel
        Left = 1
        Top = 1
        Width = 583
        Height = 120
        Align = alTop
        Caption = 'Panel5'
        TabOrder = 0
        object DBGrid1: TDBGrid
          Left = 1
          Top = 1
          Width = 581
          Height = 118
          Align = alClient
          Color = clMoneyGreen
          DataSource = DataSource2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = []
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          ParentFont = False
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -9
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
        end
      end
      object Panel6: TPanel
        Left = 1
        Top = 127
        Width = 583
        Height = 109
        Align = alClient
        Caption = 'Panel6'
        TabOrder = 1
        object DBGrid2: TDBGrid
          Left = 1
          Top = 1
          Width = 581
          Height = 107
          Align = alClient
          Color = clMoneyGreen
          DataSource = DataSource1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = []
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          ParentFont = False
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -9
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
        end
      end
    end
  end
  object DataSource1: TDataSource
    DataSet = dmcompensa.qrymcmulti
    Left = 468
    Top = 28
  end
  object opguardar: TSaveDialog
    Left = 520
    Top = 24
  end
  object DataSource2: TDataSource
    DataSet = dmcompensa.qrymcanamul
    Left = 412
    Top = 24
  end
end
