object frmrecepcion: Tfrmrecepcion
  Left = 139
  Top = 166
  Width = 585
  Height = 359
  ActiveControl = DBLookupComboBox2
  Caption = 'Recepcion de  Planillas  de Autoliquicacion'
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
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 577
    Height = 332
    Align = alClient
    TabOrder = 0
    object Label47: TLabel
      Left = 179
      Top = 41
      Width = 260
      Height = 23
      Caption = 'RECEPCION DE PLANILLAS'
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object Label48: TLabel
      Left = 485
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
    object GroupBox1: TGroupBox
      Left = 8
      Top = 108
      Width = 561
      Height = 115
      Caption = 'Datos de la consignacion'
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object Label2: TLabel
        Left = 32
        Top = 24
        Width = 72
        Height = 14
        Caption = 'Nombre  Banco'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 213
        Top = 25
        Width = 36
        Height = 14
        Caption = 'Sucursal'
        FocusControl = DBEdit2
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 309
        Top = 26
        Width = 54
        Height = 14
        Caption = 'Documento'
        FocusControl = DBEdit3
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 460
        Top = 25
        Width = 35
        Height = 14
        Caption = 'Planilla'
        FocusControl = DBEdit4
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object Label6: TLabel
        Left = 14
        Top = 69
        Width = 68
        Height = 14
        Caption = 'Fecha Recaudo'
        FocusControl = DBEdit5
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object Label7: TLabel
        Left = 139
        Top = 68
        Width = 81
        Height = 14
        Caption = 'Valor Consignado'
        FocusControl = DBEdit6
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object Label8: TLabel
        Left = 248
        Top = 68
        Width = 84
        Height = 14
        Caption = 'Tipo Movimiento'
        FocusControl = DBEdit7
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object Label9: TLabel
        Left = 360
        Top = 67
        Width = 31
        Height = 14
        Caption = 'Estado'
        FocusControl = DBEdit8
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object Label10: TLabel
        Left = 437
        Top = 68
        Width = 91
        Height = 14
        Caption = 'Fecha  Conciliacion'
        FocusControl = DBEdit9
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object DBEdit2: TDBEdit
        Left = 213
        Top = 41
        Width = 64
        Height = 21
        Color = clMoneyGreen
        DataField = 'COD_SUCURSAL'
        DataSource = DataModule1.dtsestracto
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object DBEdit3: TDBEdit
        Left = 309
        Top = 42
        Width = 113
        Height = 21
        Color = clMoneyGreen
        DataField = 'NUM_DOCUMENTO'
        DataSource = DataModule1.dtsestracto
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
      object DBEdit4: TDBEdit
        Left = 436
        Top = 41
        Width = 113
        Height = 21
        Color = clMoneyGreen
        DataField = 'NUM_PLANILLA'
        DataSource = DataModule1.dtsestracto
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
      end
      object DBEdit5: TDBEdit
        Left = 14
        Top = 81
        Width = 89
        Height = 21
        Color = clMoneyGreen
        DataField = 'FEC_RECAUDO'
        DataSource = DataModule1.dtsestracto
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
      end
      object DBEdit6: TDBEdit
        Left = 113
        Top = 81
        Width = 128
        Height = 21
        Color = clMoneyGreen
        DataField = 'VAL_CONSIGNACION'
        DataSource = DataModule1.dtsestracto
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
      end
      object DBEdit7: TDBEdit
        Left = 253
        Top = 82
        Width = 69
        Height = 21
        Color = clMoneyGreen
        DataField = 'TIP_MOVIMIENTO'
        DataSource = DataModule1.dtsestracto
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
      end
      object DBEdit8: TDBEdit
        Left = 368
        Top = 81
        Width = 17
        Height = 21
        Color = clMoneyGreen
        DataField = 'EST_CONCILIACION'
        DataSource = DataModule1.dtsestracto
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 6
      end
      object DBEdit9: TDBEdit
        Left = 434
        Top = 80
        Width = 116
        Height = 21
        Color = clMoneyGreen
        DataField = 'FEC_PLANILLA_CON'
        DataSource = DataModule1.dtsestracto
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 7
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 8
        Top = 40
        Width = 185
        Height = 21
        Color = clMoneyGreen
        DataField = 'COD_BANCO'
        DataSource = DataModule1.dtsestracto
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        KeyField = 'COD_BANCO'
        ListField = 'NOM_BANCO'
        ListSource = DataSource1
        ParentFont = False
        TabOrder = 8
      end
    end
    object GroupBox2: TGroupBox
      Left = 8
      Top = 227
      Width = 560
      Height = 54
      Caption = 'Informacion de la Recepcion'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      object Label11: TLabel
        Left = 152
        Top = 24
        Width = 97
        Height = 14
        Caption = 'Fecha  de  Recepcion'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object DateTimePicker1: TDateTimePicker
        Left = 272
        Top = 16
        Width = 121
        Height = 28
        CalAlignment = dtaLeft
        Date = 37805.9236671991
        Time = 37805.9236671991
        Color = clMoneyGreen
        DateFormat = dfShort
        DateMode = dmComboBox
        Kind = dtkDate
        ParseInput = False
        TabOrder = 0
      end
    end
    object BitBtn1: TBitBtn
      Left = 336
      Top = 288
      Width = 145
      Height = 33
      Caption = '&Recepcionar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
    end
    object BitBtn2: TBitBtn
      Left = 103
      Top = 288
      Width = 153
      Height = 33
      Caption = '&Nuevo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
    end
    object GroupBox3: TGroupBox
      Left = 8
      Top = 64
      Width = 560
      Height = 41
      TabOrder = 4
      object Label1: TLabel
        Left = 325
        Top = 16
        Width = 73
        Height = 13
        Caption = 'Numero Planilla'
      end
      object Label12: TLabel
        Left = 11
        Top = 16
        Width = 71
        Height = 13
        Caption = 'Nombre Banco'
      end
      object edit1: TEdit
        Left = 418
        Top = 12
        Width = 130
        Height = 21
        CharCase = ecUpperCase
        Color = clMoneyGreen
        TabOrder = 1
        OnExit = edit1Exit
      end
      object DBLookupComboBox2: TDBLookupComboBox
        Left = 96
        Top = 14
        Width = 185
        Height = 21
        Color = clMoneyGreen
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        KeyField = 'COD_BANCO'
        ListField = 'NOM_BANCO'
        ListSource = DataSource1
        ParentFont = False
        TabOrder = 0
      end
    end
  end
  object DataSource1: TDataSource
    DataSet = DataModule1.qrybancos
    Left = 400
    Top = 240
  end
end
