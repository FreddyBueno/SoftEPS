object frm72: Tfrm72
  Left = 194
  Top = 184
  Width = 425
  Height = 175
  Caption = 'Generacion Form.Dec.Giro y Com. Detalle Afiliados (0072)'
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
    Top = 69
    Width = 417
    Height = 79
    Align = alBottom
    TabOrder = 0
    object Label1: TLabel
      Left = 27
      Top = 24
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
      Top = 51
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
      Left = 147
      Top = 18
      Width = 79
      Height = 21
      Color = clMoneyGreen
      TabOrder = 0
      OnExit = Edit1Exit
    end
    object Edit2: TEdit
      Left = 147
      Top = 48
      Width = 79
      Height = 21
      Color = clMoneyGreen
      TabOrder = 1
      OnExit = Edit2Exit
    end
    object Button1: TButton
      Left = 242
      Top = 29
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
    Width = 417
    Height = 69
    Align = alClient
    TabOrder = 1
    object Label3: TLabel
      Left = 84
      Top = 41
      Width = 250
      Height = 16
      Caption = 'Generacion Archivo de Soporte (0072)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 330
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
      Left = 84
      Top = 56
      Width = 227
      Height = 7
      TabOrder = 0
    end
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = '*.txt'
    FileName = '0072.txt'
    Filter = 'Archivos de Texto (*.txt)|*.txt'
    Left = 324
    Top = 75
  end
end
