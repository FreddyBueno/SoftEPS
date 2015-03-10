object Form1: TForm1
  Left = 69
  Top = 186
  Width = 708
  Height = 480
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 37
    Width = 321
    Height = 416
    Align = alLeft
    TabOrder = 0
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 319
      Height = 414
      Align = alClient
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 700
    Height = 37
    Align = alTop
    TabOrder = 1
    object dtfecinicial: TDateTimePicker
      Left = 80
      Top = 6
      Width = 104
      Height = 19
      Date = 37322.457879629600000000
      Time = 37322.457879629600000000
      TabOrder = 0
    end
    object dtfecfinal: TDateTimePicker
      Left = 286
      Top = 6
      Width = 119
      Height = 22
      Date = 37322.457917129600000000
      Time = 37322.457917129600000000
      TabOrder = 1
    end
    object btnbuscar: TButton
      Left = 464
      Top = 6
      Width = 116
      Height = 23
      Caption = 'buscar'
      TabOrder = 2
    end
  end
  object Panel3: TPanel
    Left = 321
    Top = 37
    Width = 379
    Height = 416
    Align = alClient
    TabOrder = 2
    object DBGrid2: TDBGrid
      Left = 1
      Top = 1
      Width = 377
      Height = 414
      Align = alClient
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
    end
  end
end
