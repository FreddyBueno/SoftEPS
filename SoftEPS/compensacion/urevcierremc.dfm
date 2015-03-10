object frmrevcierremc1: Tfrmrevcierremc1
  Left = 222
  Top = 212
  Width = 370
  Height = 289
  Caption = 'Reversion Compensacion Madres Comunitarias'
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
    Width = 362
    Height = 117
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 6
      Top = 88
      Width = 116
      Height = 13
      Caption = 'Fecha Declaracion: '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 26
      Top = 46
      Width = 301
      Height = 16
      Caption = 'Reversion Compensacion Madres Comunitarias'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 296
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
    object Button1: TButton
      Left = 243
      Top = 80
      Width = 103
      Height = 25
      Caption = '&Reversar Cierre'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = Button1Click
    end
    object GroupBox2: TGroupBox
      Left = 8
      Top = 60
      Width = 349
      Height = 8
      TabOrder = 1
    end
    object DateTimePicker1: TDateTimePicker
      Left = 120
      Top = 80
      Width = 93
      Height = 21
      CalAlignment = dtaLeft
      Date = 37372
      Time = 37372
      DateFormat = dfShort
      DateMode = dmComboBox
      Kind = dtkDate
      ParseInput = False
      TabOrder = 2
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 117
    Width = 362
    Height = 145
    Align = alClient
    TabOrder = 1
    object GroupBox1: TGroupBox
      Left = 12
      Top = 8
      Width = 341
      Height = 129
      Caption = ' Proceso Reversion Cierre de Compensacion '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object Gauge1: TGauge
        Left = 12
        Top = 44
        Width = 313
        Height = 16
        Progress = 0
      end
      object Gauge2: TGauge
        Left = 12
        Top = 96
        Width = 313
        Height = 16
        Progress = 0
      end
      object Edit2: TEdit
        Left = 12
        Top = 20
        Width = 277
        Height = 19
        BevelKind = bkTile
        BorderStyle = bsNone
        Color = clBtnFace
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 0
        Text = 'Cambio de Estados Planillas de Autoliquidacion'
      end
      object Edit3: TEdit
        Left = 8
        Top = 72
        Width = 277
        Height = 19
        BevelKind = bkTile
        BorderStyle = bsNone
        Color = clBtnFace
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 1
        Text = 'Porcentaje Total del Proceso'
      end
    end
  end
end
