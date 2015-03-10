object frmgdcorrecion: Tfrmgdcorrecion
  Left = 250
  Top = 185
  Width = 339
  Height = 199
  Caption = 'Formato de Declaracion de Correcion'
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
    Width = 331
    Height = 73
    Align = alTop
    TabOrder = 0
    object Label3: TLabel
      Left = 92
      Top = 44
      Width = 140
      Height = 16
      Caption = 'Formato D2 Correcion'
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
  object Panel2: TPanel
    Left = 0
    Top = 73
    Width = 331
    Height = 99
    Align = alClient
    TabOrder = 1
    object Label1: TLabel
      Left = 96
      Top = 14
      Width = 145
      Height = 13
      Caption = 'Numero Declaracion Correcion'
    end
    object Edit1: TEdit
      Left = 122
      Top = 28
      Width = 87
      Height = 21
      Color = clMoneyGreen
      TabOrder = 0
    end
    object Button1: TButton
      Left = 126
      Top = 60
      Width = 75
      Height = 25
      Caption = '&Generar'
      TabOrder = 1
      OnClick = Button1Click
    end
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = '*.txt'
    Filter = 'Archivos de Texto (*.txt)|*.txt'
    Left = 10
    Top = 84
  end
end
