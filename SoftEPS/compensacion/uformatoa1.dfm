object frmformatoa1: Tfrmformatoa1
  Left = 198
  Top = 103
  Width = 438
  Height = 215
  Caption = 'Generacion Formato A1'
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
    Width = 430
    Height = 109
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 10
      Top = 85
      Width = 108
      Height = 13
      Caption = 'Fecha Declaracion'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label13: TLabel
      Left = 68
      Top = 48
      Width = 294
      Height = 16
      Caption = 'Generacion Formato A1 Miembros Adicionales'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 322
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
    object DateTimePicker1: TDateTimePicker
      Left = 139
      Top = 77
      Width = 85
      Height = 21
      CalAlignment = dtaLeft
      Date = 37342
      Time = 37342
      Color = clMoneyGreen
      DateFormat = dfShort
      DateMode = dmComboBox
      Kind = dtkDate
      ParseInput = False
      TabOrder = 0
    end
    object Button1: TButton
      Left = 307
      Top = 76
      Width = 75
      Height = 25
      Caption = '&Generar'
      TabOrder = 1
      OnClick = Button1Click
    end
    object GroupBox2: TGroupBox
      Left = 16
      Top = 64
      Width = 393
      Height = 9
      TabOrder = 2
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 109
    Width = 430
    Height = 79
    Align = alClient
    TabOrder = 1
    object GroupBox1: TGroupBox
      Left = 34
      Top = 8
      Width = 345
      Height = 61
      Caption = ' Registros en Proceso'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object Label2: TLabel
        Left = 52
        Top = 29
        Width = 69
        Height = 13
        Caption = 'Declaracion'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 203
        Top = 24
        Width = 17
        Height = 13
        Caption = 'De'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Edit2: TEdit
        Left = 127
        Top = 23
        Width = 73
        Height = 21
        Color = clMoneyGreen
        TabOrder = 0
      end
      object Edit1: TEdit
        Left = 226
        Top = 21
        Width = 70
        Height = 21
        Color = clMoneyGreen
        TabOrder = 1
      end
    end
  end
  object SaveDialog1: TSaveDialog
    Left = 50
    Top = 26
  end
end
