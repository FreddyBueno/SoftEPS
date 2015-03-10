object frmrelval: Tfrmrelval
  Left = 227
  Top = 179
  Width = 447
  Height = 195
  Caption = 'Generacion Rel.Valorea a Girar-Cobrar'
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
    Width = 439
    Height = 85
    Align = alTop
    TabOrder = 0
    object Label13: TLabel
      Left = 108
      Top = 44
      Width = 220
      Height = 16
      Caption = 'Generacion Valores a Girar Cobrar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 358
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
    object GroupBox2: TGroupBox
      Left = 64
      Top = 60
      Width = 325
      Height = 7
      TabOrder = 0
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 85
    Width = 439
    Height = 83
    Align = alClient
    TabOrder = 1
    object Label1: TLabel
      Left = 13
      Top = 24
      Width = 104
      Height = 13
      Caption = 'Declarativa Inicial'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 215
      Top = 23
      Width = 97
      Height = 13
      Caption = 'Declarativa Final'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Edit1: TEdit
      Left = 124
      Top = 18
      Width = 79
      Height = 21
      Color = clMoneyGreen
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 316
      Top = 17
      Width = 79
      Height = 21
      Color = clMoneyGreen
      TabOrder = 1
      OnExit = Edit2Exit
    end
    object Button1: TButton
      Left = 179
      Top = 51
      Width = 75
      Height = 25
      Caption = '&Generar'
      TabOrder = 2
      OnClick = Button1Click
    end
  end
  object SaveDialog1: TSaveDialog
    Left = 394
    Top = 125
  end
end
