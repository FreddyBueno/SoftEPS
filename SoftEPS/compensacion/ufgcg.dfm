object frm71: Tfrm71
  Left = 201
  Top = 193
  Width = 436
  Height = 177
  Caption = 'Generacion Form.Declaracion de Giro y Comp. Gral. (071)'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 74
    Width = 428
    Height = 76
    Align = alBottom
    TabOrder = 0
    object Label1: TLabel
      Left = 27
      Top = 16
      Width = 107
      Height = 13
      Caption = 'Declaracion Inicial'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 27
      Top = 43
      Width = 100
      Height = 13
      Caption = 'Declaracion Final'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Edit1: TEdit
      Left = 141
      Top = 10
      Width = 79
      Height = 21
      Color = clMoneyGreen
      TabOrder = 0
      OnExit = Edit1Exit
    end
    object Edit2: TEdit
      Left = 141
      Top = 40
      Width = 79
      Height = 21
      Color = clMoneyGreen
      TabOrder = 1
      OnExit = Edit2Exit
    end
    object Button1: TButton
      Left = 240
      Top = 33
      Width = 75
      Height = 25
      Caption = '&Generar'
      TabOrder = 2
      OnClick = Button1Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 428
    Height = 74
    Align = alClient
    TabOrder = 1
    object Label3: TLabel
      Left = 84
      Top = 44
      Width = 250
      Height = 16
      Caption = 'Generacion Archivo de Soporte (0071)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 354
      Top = 12
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
      Left = 92
      Top = 60
      Width = 227
      Height = 7
      TabOrder = 0
    end
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = '*.txt'
    FileName = '0071.txt'
    Filter = 'Archivos de Texto (*.txt)|*.txt'
    Left = 328
    Top = 108
  end
end
