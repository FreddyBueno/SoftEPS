object frm73: Tfrm73
  Left = 198
  Top = 185
  Width = 346
  Height = 139
  Caption = 'Gen. Form.Dec.Giro Com. Detalle Afiliados Dep. (0073)'
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
    Top = 0
    Width = 338
    Height = 112
    Align = alClient
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
    object Edit2: TEdit
      Left = 138
      Top = 48
      Width = 76
      Height = 21
      Color = clMoneyGreen
      TabOrder = 1
      OnExit = Edit2Exit
    end
    object Edit1: TEdit
      Left = 138
      Top = 18
      Width = 76
      Height = 21
      Color = clMoneyGreen
      TabOrder = 0
      OnExit = Edit1Exit
    end
    object Button1: TButton
      Left = 231
      Top = 44
      Width = 75
      Height = 25
      Caption = '&Generar'
      TabOrder = 2
      OnClick = Button1Click
    end
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = 'txt'
    FileName = '0073.txt'
    Filter = 'Archivos de Texto (*.txt)|*.txt'
    Left = 291
    Top = 72
  end
end
