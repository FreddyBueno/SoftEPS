object frmcierre: Tfrmcierre
  Left = 200
  Top = 110
  Width = 454
  Height = 372
  Caption = 'Cierre Compensacion  '
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  Visible = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 446
    Height = 185
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 142
      Top = 66
      Width = 138
      Height = 13
      Caption = 'Mes / Ano Presentacion'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 149
      Top = 133
      Width = 126
      Height = 13
      Caption = 'Fecha Fin Digitacion  '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label12: TLabel
      Left = 148
      Top = 114
      Width = 132
      Height = 13
      Caption = 'Fecha Inicio Digitacion'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label13: TLabel
      Left = 148
      Top = 36
      Width = 155
      Height = 16
      Caption = 'Cierre de Compensacion'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 376
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
    object RadioGroup1: TRadioGroup
      Left = 16
      Top = 106
      Width = 125
      Height = 71
      Caption = 'Tipo Cierre'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ItemIndex = 0
      Items.Strings = (
        'Inicial'
        '1_Adici'#243'n'
        '2_Adici'#243'n')
      ParentFont = False
      TabOrder = 1
    end
    object MaskEdit2: TMaskEdit
      Left = 175
      Top = 80
      Width = 61
      Height = 21
      Color = clMoneyGreen
      EditMask = '!99/\2\000;1;_'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 7
      ParentFont = False
      TabOrder = 0
      Text = '  /20  '
      OnExit = MaskEdit2Exit
    end
    object BitBtn1: TBitBtn
      Left = 180
      Top = 151
      Width = 75
      Height = 25
      Caption = '&Procesar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnClick = BitBtn1Click
    end
    object DateTimePicker1: TDateTimePicker
      Left = 288
      Top = 130
      Width = 97
      Height = 19
      CalAlignment = dtaLeft
      Date = 37257
      Time = 37257
      Color = clMoneyGreen
      DateFormat = dfShort
      DateMode = dmComboBox
      Kind = dtkDate
      ParseInput = False
      TabOrder = 3
      OnExit = DateTimePicker1Exit
    end
    object DateTimePicker2: TDateTimePicker
      Left = 288
      Top = 109
      Width = 97
      Height = 19
      CalAlignment = dtaLeft
      Date = 37294
      Time = 37294
      Color = clMoneyGreen
      DateFormat = dfShort
      DateMode = dmComboBox
      Kind = dtkDate
      ParseInput = False
      TabOrder = 2
    end
    object GroupBox2: TGroupBox
      Left = 16
      Top = 52
      Width = 421
      Height = 7
      TabOrder = 5
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 185
    Width = 446
    Height = 160
    Align = alClient
    TabOrder = 1
    object GroupBox1: TGroupBox
      Left = 10
      Top = 9
      Width = 427
      Height = 120
      Caption = ' Proceso de Compensacion'
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
        Width = 401
        Height = 16
        ForeColor = clTeal
        Progress = 0
      end
      object Gauge2: TGauge
        Left = 12
        Top = 88
        Width = 401
        Height = 16
        Progress = 0
      end
      object Edit1: TEdit
        Left = 12
        Top = 20
        Width = 335
        Height = 19
        BevelKind = bkTile
        BorderStyle = bsNone
        Color = clBtnFace
        Ctl3D = False
        Enabled = False
        ParentCtl3D = False
        TabOrder = 0
        Text = 'Porcentaje de Carga de Afiliados A Compensar'
      end
      object Edit2: TEdit
        Left = 12
        Top = 64
        Width = 277
        Height = 19
        BevelKind = bkFlat
        BorderStyle = bsNone
        Color = clBtnFace
        Ctl3D = False
        Enabled = False
        ParentCtl3D = False
        TabOrder = 1
        Text = 'Porcentaje del Proceso Total de Compensacion'
      end
    end
    object Edit3: TEdit
      Left = 388
      Top = 132
      Width = 51
      Height = 23
      Color = clMoneyGreen
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Hog Book - HMK'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Text = '00000'
    end
  end
end
