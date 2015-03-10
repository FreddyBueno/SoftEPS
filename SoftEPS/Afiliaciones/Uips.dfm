object frmips: Tfrmips
  Left = 174
  Top = 159
  Width = 486
  Height = 375
  Caption = '[IPS]'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 269
    Width = 478
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    object DBNavigator: TDBNavigator
      Left = 8
      Top = 10
      Width = 224
      Height = 25
      DataSource = ds
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Flat = True
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
    end
    object GroupBox1: TGroupBox
      Left = 236
      Top = 0
      Width = 237
      Height = 38
      TabOrder = 1
      object Label1: TLabel
        Left = 4
        Top = 15
        Width = 48
        Height = 13
        Caption = 'Nombre:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Edit1: TEdit
        Left = 56
        Top = 11
        Width = 104
        Height = 21
        Color = clMoneyGreen
        TabOrder = 0
      end
      object Button1: TButton
        Left = 168
        Top = 9
        Width = 64
        Height = 25
        Caption = '&Consultar'
        Default = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnClick = Button1Click
      end
    end
    object eddepto: TEdit
      Left = 56
      Top = 0
      Width = 121
      Height = 21
      Color = clMoneyGreen
      TabOrder = 2
      Visible = False
    end
    object edmun: TEdit
      Left = 56
      Top = 20
      Width = 121
      Height = 21
      Color = clMoneyGreen
      TabOrder = 3
      Visible = False
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 310
    Width = 478
    Height = 19
    Panels = <>
    ParentShowHint = False
    ShowHint = False
    SimplePanel = True
    SimpleText = '[Nota: Use '#39'%'#39' para visualizar todos los registros] '
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 478
    Height = 269
    Align = alClient
    Color = clMoneyGreen
    DataSource = ds
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
  end
  object StatusBar2: TStatusBar
    Left = 0
    Top = 329
    Width = 478
    Height = 19
    Panels = <>
    SimplePanel = True
    SimpleText = 
      '[Es importante seleccionar el Municipio o Ciudad de Residencia p' +
      'ara la Selecci'#243'n]'
  end
  object qry: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      '  SELECT prestadores.cod_prestador,   '
      '         prestadores.tip_identificacion,   '
      '         prestadores.num_identificacion,   '
      '         prestadores.mon_prestador,   '
      '         prestadores.num_acreditacion,   '
      '         prestadores.dir_prestador,   '
      '         prestadores.tel_prestador,   '
      '         prestadores.niv_aten_prestador,   '
      '         prestadores.tip_prestador,   '
      '         prestadores.cla_prestador,   '
      '         prestadores.cod_reginal,   '
      '         prestadores.cod_oficina,   '
      '         prestadores.est_contrato'
      '    FROM prestadores'
      'Order By prestadores.mon_prestador')
    Left = 417
    Top = 5
    object qryCOD_PRESTADOR: TStringField
      FieldName = 'COD_PRESTADOR'
      Origin = 'SOFTEPS.PRESTADORES.COD_PRESTADOR'
      Size = 18
    end
    object qryTIP_IDENTIFICACION: TStringField
      FieldName = 'TIP_IDENTIFICACION'
      Origin = 'SOFTEPS.PRESTADORES.TIP_IDENTIFICACION'
      Size = 3
    end
    object qryNUM_IDENTIFICACION: TStringField
      FieldName = 'NUM_IDENTIFICACION'
      Origin = 'SOFTEPS.PRESTADORES.NUM_IDENTIFICACION'
      Size = 18
    end
    object qryMON_PRESTADOR: TStringField
      FieldName = 'MON_PRESTADOR'
      Origin = 'SOFTEPS.PRESTADORES.MON_PRESTADOR'
      Size = 100
    end
    object qryNUM_ACREDITACION: TStringField
      FieldName = 'NUM_ACREDITACION'
      Origin = 'SOFTEPS.PRESTADORES.NUM_ACREDITACION'
      Size = 18
    end
    object qryDIR_PRESTADOR: TStringField
      FieldName = 'DIR_PRESTADOR'
      Origin = 'SOFTEPS.PRESTADORES.DIR_PRESTADOR'
      Size = 100
    end
    object qryTEL_PRESTADOR: TStringField
      FieldName = 'TEL_PRESTADOR'
      Origin = 'SOFTEPS.PRESTADORES.TEL_PRESTADOR'
    end
    object qryNIV_ATEN_PRESTADOR: TStringField
      FieldName = 'NIV_ATEN_PRESTADOR'
      Origin = 'SOFTEPS.PRESTADORES.NIV_ATEN_PRESTADOR'
      Size = 50
    end
    object qryTIP_PRESTADOR: TStringField
      FieldName = 'TIP_PRESTADOR'
      Origin = 'SOFTEPS.PRESTADORES.TIP_PRESTADOR'
      Size = 1
    end
    object qryCLA_PRESTADOR: TStringField
      FieldName = 'CLA_PRESTADOR'
      Origin = 'SOFTEPS.PRESTADORES.CLA_PRESTADOR'
      Size = 2
    end
    object qryCOD_REGINAL: TStringField
      FieldName = 'COD_REGINAL'
      Origin = 'SOFTEPS.PRESTADORES.COD_REGINAL'
      Size = 3
    end
    object qryCOD_OFICINA: TStringField
      FieldName = 'COD_OFICINA'
      Origin = 'SOFTEPS.PRESTADORES.COD_OFICINA'
      Size = 3
    end
    object qryEST_CONTRATO: TStringField
      FieldName = 'EST_CONTRATO'
      Origin = 'SOFTEPS.PRESTADORES.EST_CONTRATO'
      Size = 1
    end
  end
  object ds: TDataSource
    DataSet = qry
    Left = 445
    Top = 3
  end
end
