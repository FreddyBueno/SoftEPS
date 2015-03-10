object frmgencartera: Tfrmgencartera
  Left = 251
  Top = 159
  Width = 325
  Height = 292
  Caption = 'Generacion Cartera'
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 317
    Height = 121
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 11
      Top = 77
      Width = 86
      Height = 13
      Caption = 'Periodo Inicial:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 170
      Top = 77
      Width = 79
      Height = 13
      Caption = 'Periodo Final:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 92
      Top = 36
      Width = 146
      Height = 16
      Caption = 'Generacion de Cartera'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 252
      Top = 8
      Width = 53
      Height = 16
      Caption = 'SOFTEPS'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object MaskEdit1: TMaskEdit
      Left = 106
      Top = 69
      Width = 49
      Height = 21
      Color = clMoneyGreen
      EditMask = '!99/0000;1;_'
      MaxLength = 7
      TabOrder = 0
      Text = '  /    '
      OnExit = MaskEdit1Exit
    end
    object Button1: TButton
      Left = 124
      Top = 94
      Width = 75
      Height = 25
      Caption = '&Calcular'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = Button1Click
    end
    object MaskEdit2: TMaskEdit
      Left = 255
      Top = 69
      Width = 49
      Height = 21
      Color = clMoneyGreen
      EditMask = '!99/0000;1;_'
      MaxLength = 7
      TabOrder = 1
      Text = '  /    '
      OnExit = MaskEdit2Exit
    end
    object GroupBox3: TGroupBox
      Left = 16
      Top = 52
      Width = 281
      Height = 8
      TabOrder = 3
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 121
    Width = 317
    Height = 144
    Align = alClient
    TabOrder = 1
    object Label5: TLabel
      Left = 46
      Top = 16
      Width = 121
      Height = 13
      Caption = 'Periodo En Proceso :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Edit3: TEdit
      Left = 172
      Top = 9
      Width = 73
      Height = 21
      Color = clMoneyGreen
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object GroupBox1: TGroupBox
      Left = 9
      Top = 40
      Width = 301
      Height = 45
      Caption = ' Afiliados Activos Procesados '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      object Gauge1: TGauge
        Left = 12
        Top = 20
        Width = 277
        Height = 17
        ForeColor = clMoneyGreen
        Progress = 0
      end
    end
    object GroupBox2: TGroupBox
      Left = 8
      Top = 88
      Width = 301
      Height = 49
      Caption = 'Actualizacion Estados de Afiliados Activos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      object Gauge2: TGauge
        Left = 16
        Top = 20
        Width = 273
        Height = 17
        ForeColor = clMoneyGreen
        Progress = 0
      end
    end
  end
end
