object frmentrada: Tfrmentrada
  Left = 300
  Top = 186
  Width = 299
  Height = 245
  Caption = 'Compensacion Ver 1.3'
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
  object Button1: TButton
    Left = 62
    Top = 177
    Width = 77
    Height = 25
    Caption = '&Aceptar'
    Default = True
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 158
    Top = 177
    Width = 81
    Height = 25
    Caption = '&Salir'
    TabOrder = 1
    OnClick = Button2Click
  end
  object GroupBox1: TGroupBox
    Left = 14
    Top = 66
    Width = 261
    Height = 101
    Caption = ' Identificacion del Usuario'
    TabOrder = 2
    object Label1: TLabel
      Left = 17
      Top = 29
      Width = 59
      Height = 16
      Caption = 'Usuario '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 19
      Top = 56
      Width = 61
      Height = 16
      Caption = 'Clave     '
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object edtusuario: TEdit
      Left = 93
      Top = 28
      Width = 112
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
      Left = 93
      Top = 57
      Width = 113
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
  end
end
