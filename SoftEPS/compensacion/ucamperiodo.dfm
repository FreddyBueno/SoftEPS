object frmcamperiodo: Tfrmcamperiodo
  Left = 250
  Top = 204
  Width = 306
  Height = 230
  Caption = 'Actualizacion Periodo '
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
    Width = 298
    Height = 121
    Align = alTop
    TabOrder = 0
    object Label3: TLabel
      Left = 28
      Top = 66
      Width = 124
      Height = 13
      Caption = 'Periodo A Actualizar :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 60
      Top = 34
      Width = 159
      Height = 16
      Caption = 'Actualizacion de Periodo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 228
      Top = 6
      Width = 53
      Height = 16
      Caption = 'SOFTEPS'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object MaskEdit1: TMaskEdit
      Left = 157
      Top = 60
      Width = 52
      Height = 21
      Color = clMoneyGreen
      EditMask = '!99/\2\000;1;_'
      MaxLength = 7
      TabOrder = 0
      Text = '  /20  '
    end
    object BitBtn1: TBitBtn
      Left = 108
      Top = 88
      Width = 75
      Height = 25
      Caption = '&Procesar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = BitBtn1Click
    end
    object GroupBox2: TGroupBox
      Left = 4
      Top = 48
      Width = 285
      Height = 7
      TabOrder = 2
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 121
    Width = 298
    Height = 80
    Align = alClient
    TabOrder = 1
    object GroupBox1: TGroupBox
      Left = 8
      Top = 12
      Width = 277
      Height = 61
      Caption = 'Porcentaje de Planillas Actualizadas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object Gauge1: TGauge
        Left = 8
        Top = 24
        Width = 257
        Height = 16
        ForeColor = clMoneyGreen
        Progress = 0
      end
    end
  end
end
