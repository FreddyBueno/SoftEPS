object frmrelvalacum: Tfrmrelvalacum
  Left = 186
  Top = 103
  Width = 475
  Height = 199
  Caption = ' Relacion de Valores a Girar Cobrar Por Periodo'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 467
    Height = 85
    Align = alTop
    TabOrder = 0
    object Label13: TLabel
      Left = 110
      Top = 44
      Width = 210
      Height = 16
      Caption = 'Valores Acumulados Por Periodo'
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
    Width = 467
    Height = 87
    Align = alClient
    TabOrder = 1
    object Label1: TLabel
      Left = 57
      Top = 24
      Width = 82
      Height = 13
      Caption = 'Periodo Inicial'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 225
      Top = 25
      Width = 75
      Height = 13
      Caption = 'Periodo Final'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Button1: TButton
      Left = 179
      Top = 49
      Width = 75
      Height = 25
      Caption = '&Generar'
      TabOrder = 2
      OnClick = Button1Click
    end
    object MaskEdit1: TMaskEdit
      Left = 150
      Top = 18
      Width = 49
      Height = 21
      Color = clMoneyGreen
      EditMask = '!99/0000;1;_'
      MaxLength = 7
      TabOrder = 0
      Text = '  /    '
      OnExit = MaskEdit1Exit
    end
    object MaskEdit2: TMaskEdit
      Left = 304
      Top = 16
      Width = 49
      Height = 21
      Color = clMoneyGreen
      EditMask = '!99/0000;1;_'
      MaxLength = 7
      TabOrder = 1
      Text = '  /    '
      OnExit = MaskEdit2Exit
    end
  end
  object SaveDialog1: TSaveDialog
    Left = 394
    Top = 125
  end
end
