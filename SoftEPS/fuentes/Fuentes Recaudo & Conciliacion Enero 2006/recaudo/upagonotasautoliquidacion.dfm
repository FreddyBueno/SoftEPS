object frmpagonotasautoliquidacion: Tfrmpagonotasautoliquidacion
  Left = 255
  Top = 130
  Width = 737
  Height = 457
  ActiveControl = DBLookupComboBox1
  BorderIcons = [biSystemMenu]
  Caption = 'Pago  de Incapacidades por Tesoreria'
  Color = clBtnFace
  DefaultMonitor = dmMainForm
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  WindowState = wsMinimized
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 729
    Height = 133
    Align = alTop
    TabOrder = 0
    object Label47: TLabel
      Left = 248
      Top = 31
      Width = 268
      Height = 23
      Alignment = taCenter
      Caption = 'AMORTIZACION DE NOTAS '
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object Label48: TLabel
      Left = 598
      Top = 6
      Width = 73
      Height = 19
      Caption = 'SOFTEPS'
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 248
      Top = 118
      Width = 224
      Height = 13
      Caption = 'Notas  de Autoliquidacion de la Empresa'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object GroupBox1: TGroupBox
      Left = 46
      Top = 66
      Width = 703
      Height = 54
      Caption = 'Identificacion de la Empresa'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object Label1: TLabel
        Left = 40
        Top = 13
        Width = 24
        Height = 14
        Caption = 'Tipo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'GoudyOlSt BT'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 122
        Top = 13
        Width = 120
        Height = 14
        Caption = 'Numero Identificacion'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'GoudyOlSt BT'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 318
        Top = 13
        Width = 126
        Height = 14
        Caption = 'Nombre O Razon Social'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'GoudyOlSt BT'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 12
        Top = 27
        Width = 86
        Height = 21
        Color = clMoneyGreen
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        KeyField = 'TIP_DOCUMENTO'
        ListField = 'TIP_DOCUMENTO'
        ListSource = DataModule1.dtsdocumento
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnClick = DBLookupComboBox1Click
      end
      object Edit1: TEdit
        Left = 112
        Top = 29
        Width = 143
        Height = 21
        Color = clMoneyGreen
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        MaxLength = 15
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnExit = Edit1Exit
      end
      object Edit2: TEdit
        Left = 272
        Top = 27
        Width = 407
        Height = 21
        Color = clScrollBar
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
      end
    end
    object GroupBox2: TGroupBox
      Left = -143
      Top = 54
      Width = 844
      Height = 9
      TabOrder = 1
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 133
    Width = 729
    Height = 190
    Align = alClient
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 19
      Top = 1
      Width = 693
      Height = 168
      Hint = 'dobleclik para  selecionar el valor a  pagar'
      Align = alClient
      Color = clMoneyGreen
      DataSource = dtsnotasrecaudo
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect]
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnCellClick = DBGrid1CellClick
      OnDblClick = DBGrid1DblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'NUM_PLANILLA'
          Title.Caption = 'Numero de la Nota'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VAL_NOTA'
          Title.Caption = 'Valor'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TIP_NOTA2'
          Title.Caption = 'Tipo Nota'
          Visible = True
        end>
    end
    object DBNavigator1: TDBNavigator
      Left = 1
      Top = 169
      Width = 727
      Height = 20
      DataSource = dtsnotasrecaudo
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Align = alBottom
      TabOrder = 1
    end
    object Panel4: TPanel
      Left = 712
      Top = 1
      Width = 16
      Height = 168
      Align = alRight
      TabOrder = 2
    end
    object Panel5: TPanel
      Left = 1
      Top = 1
      Width = 18
      Height = 168
      Align = alLeft
      TabOrder = 3
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 323
    Width = 729
    Height = 107
    Align = alBottom
    TabOrder = 2
    object GroupBox4: TGroupBox
      Left = 15
      Top = 4
      Width = 147
      Height = 91
      Caption = 'Valores de la Nota'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object Label4: TLabel
        Left = 24
        Top = 46
        Width = 29
        Height = 14
        Caption = 'Valor'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'GoudyOlSt BT'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label8: TLabel
        Left = 32
        Top = 14
        Width = 44
        Height = 14
        Caption = 'No. Nota'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'GoudyOlSt BT'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Edit3: TEdit
        Left = 10
        Top = 58
        Width = 111
        Height = 21
        Color = clScrollBar
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object Edit7: TEdit
        Left = 18
        Top = 28
        Width = 97
        Height = 21
        TabOrder = 1
        Visible = False
      end
      object Edit8: TEdit
        Left = 14
        Top = 28
        Width = 103
        Height = 21
        Color = clScrollBar
        Enabled = False
        TabOrder = 2
      end
    end
    object GroupBox5: TGroupBox
      Left = 160
      Top = 4
      Width = 367
      Height = 91
      Caption = 'Descripcion del Comprobante de Tesoreria'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      object Label5: TLabel
        Left = 30
        Top = 26
        Width = 75
        Height = 14
        Caption = 'Valor Pagado '
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'GoudyOlSt BT'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label6: TLabel
        Left = 232
        Top = 28
        Width = 123
        Height = 14
        Caption = 'Numero Comprobante'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'GoudyOlSt BT'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label7: TLabel
        Left = 146
        Top = 28
        Width = 62
        Height = 14
        Caption = 'Fecha Pago'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'GoudyOlSt BT'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Edit4: TEdit
        Left = 8
        Top = 41
        Width = 105
        Height = 21
        Color = clMoneyGreen
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnChange = Edit4Change
        OnExit = Edit4Exit
      end
      object Edit6: TEdit
        Left = 240
        Top = 41
        Width = 99
        Height = 21
        Color = clMoneyGreen
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        OnChange = Edit6Change
        OnExit = Edit6Exit
      end
      object DateTimePicker1: TDateTimePicker
        Left = 121
        Top = 41
        Width = 115
        Height = 21
        Date = 37562.000000000000000000
        Time = 37562.000000000000000000
        Color = clMoneyGreen
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnEnter = DateTimePicker1Enter
        OnExit = DateTimePicker1Exit
      end
    end
    object BitBtn1: TBitBtn
      Left = 579
      Top = 16
      Width = 84
      Height = 29
      Caption = '&Grabar'
      TabOrder = 2
      OnClick = BitBtn1Click
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333388F3333333333000033334224333333333333
        338338F3333333330000333422224333333333333833338F3333333300003342
        222224333333333383333338F3333333000034222A22224333333338F338F333
        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
        0000333333333A222433333333333338F338F33300003333333333A222433333
        333333338F338F33000033333333333A222433333333333338F338F300003333
        33333333A222433333333333338F338F00003333333333333A22433333333333
        3338F38F000033333333333333A223333333333333338F830000333333333333
        333A333333333333333338330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
    end
    object btncancelar: TBitBtn
      Left = 581
      Top = 58
      Width = 80
      Height = 29
      Caption = '&Cancelar'
      TabOrder = 3
      OnClick = btncancelarClick
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333000033338833333333333333333F333333333333
        0000333911833333983333333388F333333F3333000033391118333911833333
        38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
        911118111118333338F3338F833338F3000033333911111111833333338F3338
        3333F8330000333333911111183333333338F333333F83330000333333311111
        8333333333338F3333383333000033333339111183333333333338F333833333
        00003333339111118333333333333833338F3333000033333911181118333333
        33338333338F333300003333911183911183333333383338F338F33300003333
        9118333911183333338F33838F338F33000033333913333391113333338FF833
        38F338F300003333333333333919333333388333338FFF830000333333333333
        3333333333333333333888330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
    end
  end
  object detalleincapacidad: TDataSource
    DataSet = DataModule1.qrydetincapacidad
    Left = 376
    Top = 8
  end
  object dtsnotasrecaudo: TDataSource
    DataSet = DataModule1.qrynotasautoliquidacion
    Left = 428
    Top = 6
  end
end
