object frmentrada: Tfrmentrada
  Left = 328
  Top = 235
  Width = 259
  Height = 207
  Caption = 'Cartera SOFTEPS Ver 1.0'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 14
    Top = 58
    Width = 217
    Height = 81
    Caption = ' Identificacion del Usuario'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clActiveCaption
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    object Label1: TLabel
      Left = 18
      Top = 27
      Width = 52
      Height = 13
      Caption = 'Usuario :'
    end
    object Label2: TLabel
      Left = 18
      Top = 52
      Width = 53
      Height = 13
      Caption = 'Clave    :'
    end
  end
  object edtusuario: TEdit
    Left = 95
    Top = 81
    Width = 121
    Height = 21
    CharCase = ecUpperCase
    Color = clMoneyGreen
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
  end
  object edtclave: TEdit
    Left = 95
    Top = 104
    Width = 121
    Height = 21
    CharCase = ecUpperCase
    Color = clMoneyGreen
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    PasswordChar = '*'
    TabOrder = 1
  end
  object Button1: TButton
    Left = 46
    Top = 147
    Width = 75
    Height = 25
    Caption = '&Aceptar'
    Default = True
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 127
    Top = 147
    Width = 75
    Height = 25
    Caption = '&Salir'
    TabOrder = 3
    OnClick = Button2Click
  end
end
