object frmgenupc: Tfrmgenupc
  Left = 211
  Top = 148
  Width = 366
  Height = 260
  Caption = 'Generacion de Ingresos de UPC por Municipio y Declaracion'
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 358
    Height = 137
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 83
      Width = 115
      Height = 13
      Caption = 'Declaracion Inicial :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 183
      Top = 85
      Width = 112
      Height = 13
      Caption = 'Declaracion Final : '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label13: TLabel
      Left = 76
      Top = 48
      Width = 199
      Height = 16
      Caption = 'Ingresos Por Centro de Costos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 273
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
    object Edit1: TEdit
      Left = 124
      Top = 77
      Width = 46
      Height = 21
      Color = clMoneyGreen
      TabOrder = 0
    end
    object Button1: TButton
      Left = 139
      Top = 105
      Width = 75
      Height = 25
      Caption = '&Generar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = Button1Click
    end
    object Edit5: TEdit
      Left = 292
      Top = 75
      Width = 46
      Height = 21
      Color = clMoneyGreen
      TabOrder = 1
      OnExit = Edit5Exit
    end
    object GroupBox2: TGroupBox
      Left = 20
      Top = 64
      Width = 321
      Height = 8
      TabOrder = 3
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 137
    Width = 358
    Height = 96
    Align = alClient
    TabOrder = 1
    object Label3: TLabel
      Left = 63
      Top = 47
      Width = 32
      Height = 13
      Caption = 'Dpto.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 108
      Top = 47
      Width = 39
      Height = 13
      Caption = 'Mcpio.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 183
      Top = 47
      Width = 59
      Height = 13
      Caption = 'Valor UPC'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 100
      Top = 20
      Width = 43
      Height = 13
      Caption = 'Afiliado'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Edit2: TEdit
      Left = 63
      Top = 62
      Width = 31
      Height = 21
      Color = clMoneyGreen
      TabOrder = 0
    end
    object Edit3: TEdit
      Left = 108
      Top = 62
      Width = 58
      Height = 21
      Color = clMoneyGreen
      TabOrder = 1
    end
    object Edit4: TEdit
      Left = 180
      Top = 62
      Width = 121
      Height = 21
      Color = clMoneyGreen
      TabOrder = 2
    end
    object Edit6: TEdit
      Left = 148
      Top = 12
      Width = 121
      Height = 21
      Color = clMoneyGreen
      TabOrder = 3
    end
  end
  object SaveDialog1: TSaveDialog
    Left = 291
    Top = 138
  end
end
