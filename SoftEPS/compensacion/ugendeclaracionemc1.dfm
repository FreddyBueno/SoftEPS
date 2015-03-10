object formatomc1: Tformatomc1
  Left = 213
  Top = 230
  Width = 349
  Height = 200
  Caption = 'Generacion Formato MC1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 341
    Height = 79
    Align = alClient
    TabOrder = 0
    object Label2: TLabel
      Left = 92
      Top = 46
      Width = 152
      Height = 16
      Caption = 'Impresion Formato MC1'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 260
      Top = 8
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
    object GroupBox1: TGroupBox
      Left = 8
      Top = 64
      Width = 317
      Height = 8
      TabOrder = 0
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 79
    Width = 341
    Height = 94
    Align = alBottom
    TabOrder = 1
    object Label1: TLabel
      Left = 16
      Top = 20
      Width = 184
      Height = 16
      Caption = 'Fecha Realizacion Cierre :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DateTimePicker1: TDateTimePicker
      Left = 208
      Top = 10
      Width = 109
      Height = 22
      CalAlignment = dtaLeft
      Date = 37222.6401816319
      Time = 37222.6401816319
      Color = clMoneyGreen
      DateFormat = dfShort
      DateMode = dmComboBox
      Kind = dtkDate
      ParseInput = False
      TabOrder = 0
    end
    object Button1: TButton
      Left = 130
      Top = 44
      Width = 75
      Height = 25
      Caption = '&Generar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = Button1Click
    end
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = '*.txt'
    Filter = 'Archivos de Texto (*.txt)|*.txt'
    Left = 12
    Top = 128
  end
end
