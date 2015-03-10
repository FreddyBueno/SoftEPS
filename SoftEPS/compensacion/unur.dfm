object frmnur: Tfrmnur
  Left = 216
  Top = 174
  Width = 419
  Height = 286
  Caption = 'Generacion Anexo Tecnico B N.U.R.C 8002-2-53072'
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
  object Panel2: TPanel
    Left = 0
    Top = 79
    Width = 411
    Height = 180
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 184
      Top = 58
      Width = 88
      Height = 13
      Caption = 'Fecha de Corte'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Button1: TButton
      Left = 248
      Top = 80
      Width = 89
      Height = 33
      Caption = '&Generar'
      TabOrder = 0
      OnClick = Button1Click
    end
    object DateTimePicker1: TDateTimePicker
      Left = 280
      Top = 48
      Width = 104
      Height = 21
      CalAlignment = dtaLeft
      Date = 37532
      Time = 37532
      Color = clMoneyGreen
      DateFormat = dfShort
      DateMode = dmComboBox
      Kind = dtkDate
      ParseInput = False
      TabOrder = 1
    end
    object GroupBox1: TGroupBox
      Left = 8
      Top = 10
      Width = 173
      Height = 161
      Caption = ' Directorio Destino '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      object DirectoryListBox1: TDirectoryListBox
        Left = 4
        Top = 14
        Width = 165
        Height = 145
        Color = clMoneyGreen
        ItemHeight = 16
        TabOrder = 0
      end
    end
    object GroupBox3: TGroupBox
      Left = 182
      Top = 130
      Width = 225
      Height = 41
      Caption = ' Porcentaje Usuarios Procesados '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      object Gauge1: TGauge
        Left = 6
        Top = 18
        Width = 215
        Height = 15
        BackColor = clMoneyGreen
        Progress = 0
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 411
    Height = 79
    Align = alTop
    TabOrder = 1
    object Label13: TLabel
      Left = 90
      Top = 44
      Width = 235
      Height = 16
      Caption = 'Generacion Archivo Anexo Tecnico B'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 309
      Top = 10
      Width = 57
      Height = 16
      Caption = 'SOFTEPS '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object GroupBox2: TGroupBox
      Left = 34
      Top = 60
      Width = 318
      Height = 9
      TabOrder = 0
    end
  end
end
