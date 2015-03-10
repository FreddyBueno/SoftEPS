object frmgendecla: Tfrmgendecla
  Left = 252
  Top = 164
  Width = 336
  Height = 170
  Caption = 'Generacion Formato D2 Por Declaracion'
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
    Top = 72
    Width = 328
    Height = 71
    Align = alBottom
    TabOrder = 0
    object Label1: TLabel
      Left = 77
      Top = 16
      Width = 77
      Height = 13
      Caption = 'Declaracion :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Edit1: TEdit
      Left = 165
      Top = 11
      Width = 73
      Height = 21
      Color = clMoneyGreen
      TabOrder = 0
    end
    object Button1: TButton
      Left = 129
      Top = 39
      Width = 75
      Height = 25
      Caption = '&Generar'
      TabOrder = 1
      OnClick = Button1Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 328
    Height = 72
    Align = alClient
    TabOrder = 1
    object Label3: TLabel
      Left = 76
      Top = 44
      Width = 178
      Height = 16
      Caption = 'formato D2 por Declaracion'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 247
      Top = 4
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
    object GroupBox2: TGroupBox
      Left = 52
      Top = 58
      Width = 228
      Height = 7
      TabOrder = 0
    end
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = '*.txt'
    Filter = 'Archivos de Texto(*.txt)|*.txt'
    Left = 9
    Top = 78
  end
end
