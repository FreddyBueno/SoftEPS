object frming_afiliado_empresa: Tfrming_afiliado_empresa
  Left = -3
  Top = 109
  Width = 774
  Height = 434
  Caption = 'frming_afiliado_empresa'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 766
    Height = 99
    Align = alTop
    TabOrder = 0
    object Label7: TLabel
      Left = 236
      Top = 28
      Width = 237
      Height = 23
      Caption = 'DATOS NUEVA EMPRESA'
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object Label48: TLabel
      Left = 611
      Top = 8
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
    object Edit2: TEdit
      Left = 86
      Top = 62
      Width = 53
      Height = 21
      Color = clMoneyGreen
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object Edit3: TEdit
      Left = 146
      Top = 62
      Width = 73
      Height = 21
      Color = clMoneyGreen
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
    object Edit4: TEdit
      Left = 226
      Top = 62
      Width = 259
      Height = 21
      Color = clMoneyGreen
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
    end
    object Edit5: TEdit
      Left = 506
      Top = 62
      Width = 97
      Height = 21
      Color = clMoneyGreen
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 99
    Width = 766
    Height = 301
    Align = alClient
    TabOrder = 1
    object PageControl1: TPageControl
      Left = 1
      Top = 1
      Width = 764
      Height = 299
      Align = alClient
      TabOrder = 0
    end
    object GroupBox1: TGroupBox
      Left = 80
      Top = 3
      Width = 577
      Height = 139
      TabOrder = 1
      object Label8: TLabel
        Left = 24
        Top = 16
        Width = 24
        Height = 13
        Caption = 'Tipo'
        FocusControl = DBEdit4
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label9: TLabel
        Left = 104
        Top = 16
        Width = 44
        Height = 13
        Caption = 'Numero'
        FocusControl = DBEdit5
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label10: TLabel
        Left = 216
        Top = 14
        Width = 48
        Height = 13
        Caption = 'Sucursal'
        FocusControl = DBEdit6
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label22: TLabel
        Left = 21
        Top = 54
        Width = 58
        Height = 13
        Caption = 'Ocupaci'#243'n'
        FocusControl = DBLookupComboBox5
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label13: TLabel
        Left = 422
        Top = 56
        Width = 123
        Height = 13
        Caption = 'Fec Traslado Empresa'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label1: TLabel
        Left = 320
        Top = 92
        Width = 83
        Height = 13
        Caption = 'Tipo de Salario'
        FocusControl = DBLookupComboBox1
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label12: TLabel
        Left = 446
        Top = 92
        Width = 69
        Height = 13
        Caption = 'Salario Base'
        FocusControl = DBEdit8
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 84
        Top = 94
        Width = 126
        Height = 13
        Caption = 'Modalidad De Trabajo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label6: TLabel
        Left = 328
        Top = 16
        Width = 158
        Height = 13
        Caption = 'Razon Social de la Enpresa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBEdit4: TDBEdit
        Left = 24
        Top = 34
        Width = 43
        Height = 21
        CharCase = ecUpperCase
        Color = clMoneyGreen
        DataField = 'tip_documento_emp'
        DataSource = frmcambio_empresas.dsafiliados_empresas
        Enabled = False
        TabOrder = 8
        Visible = False
      end
      object DBEdit5: TDBEdit
        Left = 80
        Top = 32
        Width = 141
        Height = 21
        Color = clMoneyGreen
        DataField = 'num_documento_emp'
        DataSource = frmcambio_empresas.dsafiliados_empresas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnEnter = DBEdit5Enter
        OnExit = DBEdit6Exit
        OnKeyPress = DBEdit5KeyPress
      end
      object DBEdit6: TDBEdit
        Left = 224
        Top = 32
        Width = 30
        Height = 21
        Color = clMoneyGreen
        DataField = 'cod_sucursal'
        DataSource = frmcambio_empresas.dsafiliados_empresas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        OnExit = DBEdit6Exit
        OnKeyPress = DBEdit6KeyPress
      end
      object Button1: TButton
        Left = 258
        Top = 30
        Width = 17
        Height = 25
        Caption = '...'
        TabOrder = 9
        OnClick = Button1Click
      end
      object DBLookupComboBox5: TDBLookupComboBox
        Left = 21
        Top = 70
        Width = 369
        Height = 21
        Color = clMoneyGreen
        DataField = 'cod_ocupacion'
        DataSource = frmcambio_empresas.dsafiliados_empresas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        KeyField = 'cod_ocupacion'
        ListField = 'nom_ocupacion'
        ListSource = dsocupaciones
        ParentFont = False
        TabOrder = 3
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 318
        Top = 108
        Width = 121
        Height = 21
        Color = clMoneyGreen
        DataField = 'cod_tipo_sal'
        DataSource = frmcambio_empresas.dsafiliados_empresas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        KeyField = 'cod_tipo_sal'
        ListField = 'nom_tipo_sal'
        ListSource = dstipossalarios
        ParentFont = False
        TabOrder = 6
        OnExit = DBLookupComboBox1Exit
      end
      object DBEdit8: TDBEdit
        Left = 448
        Top = 108
        Width = 97
        Height = 21
        Color = clMoneyGreen
        DataField = 'val_sueldo_afil'
        DataSource = frmcambio_empresas.dsafiliados_empresas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 7
        OnExit = DBEdit8Exit
        OnKeyPress = DBEdit8KeyPress
      end
      object Edit1: TEdit
        Left = 278
        Top = 31
        Width = 279
        Height = 21
        CharCase = ecUpperCase
        Color = clMoneyGreen
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 10
      end
      object dblmodalidadtrabajo: TDBLookupComboBox
        Left = 20
        Top = 107
        Width = 291
        Height = 21
        Color = clMoneyGreen
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        KeyField = 'COD_MODALIDAD_TRA'
        ListField = 'NOM_MODALIDAD_TRA'
        ListSource = dtsmodalidadtra
        ParentFont = False
        TabOrder = 5
      end
      object DBLookupComboBox7: TDBLookupComboBox
        Left = 21
        Top = 31
        Width = 55
        Height = 21
        Color = clMoneyGreen
        DataField = 'tip_documento_emp'
        DataSource = frmcambio_empresas.dsafiliados_empresas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        KeyField = 'TIP_DOCUMENTO'
        ListField = 'TIP_DOCUMENTO'
        ListSource = dtstipodocumento
        ParentFont = False
        TabOrder = 0
      end
      object DateTimePicker1: TDateTimePicker
        Left = 420
        Top = 70
        Width = 125
        Height = 21
        Date = 37398.000000000000000000
        Time = 37398.000000000000000000
        Color = clMoneyGreen
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
        OnChange = DateTimePicker1Change
        OnExit = DateTimePicker1Exit
      end
    end
    object GroupBox2: TGroupBox
      Left = 81
      Top = 145
      Width = 576
      Height = 119
      TabOrder = 2
      object Label3: TLabel
        Left = 32
        Top = 24
        Width = 147
        Height = 13
        Caption = 'Nombre de Departamento'
        FocusControl = DBLookupComboBox3
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 224
        Top = 24
        Width = 102
        Height = 13
        Caption = 'Nombre de Ciudad'
        FocusControl = DBLookupComboBox4
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label17: TLabel
        Left = 10
        Top = 68
        Width = 52
        Height = 13
        Caption = 'Direccion'
        FocusControl = DBEdit13
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 449
        Top = 25
        Width = 28
        Height = 13
        Caption = 'Zona'
        FocusControl = DBLookupComboBox2
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label18: TLabel
        Left = 308
        Top = 70
        Width = 49
        Height = 13
        Caption = 'Telefono'
        FocusControl = DBEdit14
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label19: TLabel
        Left = 418
        Top = 70
        Width = 110
        Height = 13
        Caption = 'Telefono (Opcional)'
        FocusControl = DBEdit15
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBLookupComboBox3: TDBLookupComboBox
        Left = 8
        Top = 40
        Width = 191
        Height = 21
        Color = clMoneyGreen
        DataField = 'cod_departamento_lab'
        DataSource = frmcambio_empresas.dsafiliados_empresas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        KeyField = 'cod_departamento'
        ListField = 'nom_departamento'
        ListSource = dsdepartamentos
        ParentFont = False
        TabOrder = 0
        OnClick = DBLookupComboBox3Click
        OnExit = DBLookupComboBox3Exit
      end
      object DBLookupComboBox4: TDBLookupComboBox
        Left = 212
        Top = 40
        Width = 205
        Height = 21
        Color = clMoneyGreen
        DataField = 'cod_ciudad_lab'
        DataSource = frmcambio_empresas.dsafiliados_empresas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        KeyField = 'cod_ciudad'
        ListField = 'nom_ciudad'
        ListSource = dsciudades
        ParentFont = False
        TabOrder = 1
        OnExit = DBLookupComboBox4Exit
      end
      object DBLookupComboBox2: TDBLookupComboBox
        Left = 442
        Top = 40
        Width = 113
        Height = 21
        Color = clMoneyGreen
        DataField = 'cod_zona'
        DataSource = frmcambio_empresas.dsafiliados_empresas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        KeyField = 'cod_zona'
        ListField = 'nom_zona'
        ListSource = dszonas
        ParentFont = False
        TabOrder = 2
        OnExit = DBLookupComboBox2Exit
      end
      object DBEdit13: TDBEdit
        Left = 10
        Top = 84
        Width = 293
        Height = 21
        CharCase = ecUpperCase
        Color = clMoneyGreen
        DataField = 'dir_afiliado_lab'
        DataSource = frmcambio_empresas.dsafiliados_empresas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        OnExit = DBEdit13Exit
      end
      object DBEdit14: TDBEdit
        Left = 308
        Top = 84
        Width = 107
        Height = 21
        CharCase = ecUpperCase
        Color = clMoneyGreen
        DataField = 'tel_afiliado_lab'
        DataSource = frmcambio_empresas.dsafiliados_empresas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
        OnExit = DBEdit14Exit
        OnKeyPress = DBEdit14KeyPress
      end
      object DBEdit15: TDBEdit
        Left = 418
        Top = 84
        Width = 111
        Height = 21
        CharCase = ecUpperCase
        Color = clMoneyGreen
        DataField = 'tel_afiliado_lab2'
        DataSource = frmcambio_empresas.dsafiliados_empresas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
        OnKeyPress = DBEdit15KeyPress
      end
    end
    object Button2: TButton
      Left = 472
      Top = 270
      Width = 189
      Height = 25
      Caption = '&Aplicar Translado Empresa'
      Default = True
      TabOrder = 3
      OnClick = Button2Click
    end
  end
  object qrynovedades_afiliados: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      'INSERT INTO novedades_afiliados  '
      '                                 ( nov_codigo,   '
      '                                   tip_documento,   '
      '                                   num_documento,   '
      '                                   cod_oficina,   '
      '                                   cod_regional,   '
      '                                   usu_tipo_doc,   '
      '                                   usu_numero_doc,   '
      '                                   fec_novedad_afil,   '
      '                                   nom_campo,   '
      '                                   dat_campo_ant,   '
      '                                   nom_tabla,   '
      '                                   dat_campo_des,'
      '                                   fec_evento,   '
      '                                   fec_aplicativo,   '
      '                                   tip_documento_emp,   '
      '                                   num_documento_emp,   '
      '                                   cod_sucursal,'
      '                                   num_planilla,'
      '                                   cod_novedad_afil) '
      '                          VALUES ( :"novedad",   '
      '                                   :"tip_documento_ben",   '
      '                                   :"num_documento_ben",   '
      '                                   :"oficina",   '
      '                                   :"regional",   '
      '                                   :"tipo_usuario",   '
      '                                   :"numero_usuairo",   '
      '                                   :"fecha_novedad",   '
      '                                   '#39#39',   '
      '                                   '#39#39', '
      '                                   '#39'afiliados'#39',   '
      '                                   '#39#39',   '
      '                                   :"fecha_novedad",   '
      '                                   :"fecha_sistema",'
      '                                   :"tip_doc_emp",'
      '                                   :"num_doc_emp",'
      '                                   :"cod_sucursal",'
      '                                   :"num_planilla",'
      '                                   nov_afiliados.nextval)'
      ''
      '')
    Left = 432
    Top = 96
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'novedad'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tip_documento_ben'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'num_documento_ben'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'oficina'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'regional'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tipo_usuario'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'numero_usuairo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'fecha_novedad'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'fecha_novedad'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'fecha_sistema'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'tip_doc_emp'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'num_doc_emp'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'cod_sucursal'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'num_planilla'
        ParamType = ptInput
      end>
  end
  object qryafiliados_empresas: TQuery
    DatabaseName = 'softeps'
    DataSource = frmcambio_empresas.dsafiliados
    SQL.Strings = (
      '  UPDATE afiliados_empresas  '
      '     SET cod_estado = :"estado",   '
      '         fec_egreso_uni =:"fecha_hoy" '
      
        '   WHERE ( afiliados_empresas.tip_documento_emp = :"tip_doc_emp"' +
        ' ) AND  '
      
        '         ( afiliados_empresas.num_documento_emp = :"num_doc_emp"' +
        ' ) AND  '
      
        '         ( afiliados_empresas.cod_sucursal = :"codigo_suc" ) AND' +
        '  '
      
        '         ( afiliados_empresas.tip_documento_afi = :"tip_document' +
        'o" ) AND  '
      
        '         ( afiliados_empresas.num_documento_afi = :"num_document' +
        'o" ) and'
      '         ( afiliados_empresas.fec_ingreso_uni =:"fec_ingreso") ')
    Left = 400
    Top = 64
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'estado'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'fecha_hoy'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tip_doc_emp'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'num_doc_emp'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'codigo_suc'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tip_documento'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'num_documento'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'fec_ingreso'
        ParamType = ptUnknown
      end>
  end
  object dstipossalarios: TDataSource
    DataSet = dmafiliaciones.tbltipos_salarios
    Left = 400
    Top = 160
  end
  object dsdepartamentos: TDataSource
    DataSet = dmafiliaciones.tbldepartamentos
    Left = 400
    Top = 192
  end
  object dsciudades: TDataSource
    DataSet = dmafiliaciones.qryciudades
    Left = 400
    Top = 224
  end
  object dsocupaciones: TDataSource
    DataSet = dmafiliaciones.tblocupaciones
    Left = 400
    Top = 128
  end
  object dszonas: TDataSource
    DataSet = dmafiliaciones.tblzonas
    Left = 400
    Top = 256
  end
  object dtsmodalidadtra: TDataSource
    DataSet = dmafiliaciones.tblmodalidadtrabajo
    Left = 402
    Top = 288
  end
  object dtstipodocumento: TDataSource
    DataSet = dmafiliaciones.tbltipos_documentos
    Left = 402
    Top = 318
  end
  object qrytiposalario: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      'select * from tipos_salarios')
    Left = 14
    Top = 65534
  end
  object qryempresas: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      'Select *'
      'From empresas'
      'Where  empresas.cod_estado = '#39'A'#39
      'Order By empresas.tip_aportante,empresas.nom_empresa')
    Left = 93
    Top = 1
    object qryempresasTIP_DOCUMENTO: TStringField
      FieldName = 'TIP_DOCUMENTO'
      Origin = 'SOFTEPS.EMPRESAS.TIP_DOCUMENTO'
      Size = 3
    end
    object qryempresasNUM_DOCUMENTO: TStringField
      FieldName = 'NUM_DOCUMENTO'
      Origin = 'SOFTEPS.EMPRESAS.NUM_DOCUMENTO'
      Size = 18
    end
    object qryempresasCOD_SUCURSAL: TStringField
      FieldName = 'COD_SUCURSAL'
      Origin = 'SOFTEPS.EMPRESAS.COD_SUCURSAL'
      Size = 2
    end
    object qryempresasNOM_EMPRESA: TStringField
      FieldName = 'NOM_EMPRESA'
      Origin = 'SOFTEPS.EMPRESAS.NOM_EMPRESA'
      Size = 100
    end
    object qryempresasCOD_ACTIVIDAD_ECO: TStringField
      FieldName = 'COD_ACTIVIDAD_ECO'
      Origin = 'SOFTEPS.EMPRESAS.COD_ACTIVIDAD_ECO'
      Size = 4
    end
    object qryempresasCOD_DEPARTAMENTO: TStringField
      FieldName = 'COD_DEPARTAMENTO'
      Origin = 'SOFTEPS.EMPRESAS.COD_DEPARTAMENTO'
      Size = 2
    end
    object qryempresasCOD_CIUDAD: TStringField
      FieldName = 'COD_CIUDAD'
      Origin = 'SOFTEPS.EMPRESAS.COD_CIUDAD'
      Size = 3
    end
    object qryempresasTIP_APORTANTE: TStringField
      FieldName = 'TIP_APORTANTE'
      Origin = 'SOFTEPS.EMPRESAS.TIP_APORTANTE'
      Size = 1
    end
    object qryempresasDIR_EMPRESA: TStringField
      FieldName = 'DIR_EMPRESA'
      Origin = 'SOFTEPS.EMPRESAS.DIR_EMPRESA'
      Size = 50
    end
    object qryempresasTEL_EMPRESA: TStringField
      FieldName = 'TEL_EMPRESA'
      Origin = 'SOFTEPS.EMPRESAS.TEL_EMPRESA'
    end
    object qryempresasTEL_EMPRESA2: TStringField
      FieldName = 'TEL_EMPRESA2'
      Origin = 'SOFTEPS.EMPRESAS.TEL_EMPRESA2'
    end
    object qryempresasCOD_ESTADO: TStringField
      FieldName = 'COD_ESTADO'
      Origin = 'SOFTEPS.EMPRESAS.COD_ESTADO'
      Size = 2
    end
    object qryempresasCOD_OFICINA: TStringField
      FieldName = 'COD_OFICINA'
      Origin = 'SOFTEPS.EMPRESAS.COD_OFICINA'
      Size = 3
    end
    object qryempresasCOD_REGIONAL: TStringField
      FieldName = 'COD_REGIONAL'
      Origin = 'SOFTEPS.EMPRESAS.COD_REGIONAL'
      Size = 3
    end
    object qryempresasTIP_DOCUMENTO_ARP: TStringField
      FieldName = 'TIP_DOCUMENTO_ARP'
      Origin = 'SOFTEPS.EMPRESAS.TIP_DOCUMENTO_ARP'
      Size = 3
    end
    object qryempresasNUM_DOCUMENTO_ARP: TStringField
      FieldName = 'NUM_DOCUMENTO_ARP'
      Origin = 'SOFTEPS.EMPRESAS.NUM_DOCUMENTO_ARP'
      Size = 18
    end
    object qryempresasFEC_AFILIACION: TDateTimeField
      FieldName = 'FEC_AFILIACION'
      Origin = 'SOFTEPS.EMPRESAS.FEC_AFILIACION'
    end
    object qryempresasURL_EMPRESA: TStringField
      FieldName = 'URL_EMPRESA'
      Origin = 'SOFTEPS.EMPRESAS.URL_EMPRESA'
    end
    object qryempresasEML_EMPRESA: TStringField
      FieldName = 'EML_EMPRESA'
      Origin = 'SOFTEPS.EMPRESAS.EML_EMPRESA'
      Size = 50
    end
    object qryempresasTOT_EMPLEADOS: TStringField
      FieldName = 'TOT_EMPLEADOS'
      Origin = 'SOFTEPS.EMPRESAS.TOT_EMPLEADOS'
      Size = 10
    end
    object qryempresasCOD_TIPO_PER: TStringField
      FieldName = 'COD_TIPO_PER'
      Origin = 'SOFTEPS.EMPRESAS.COD_TIPO_PER'
      Size = 1
    end
    object qryempresasCOD_ZONA: TStringField
      FieldName = 'COD_ZONA'
      Origin = 'SOFTEPS.EMPRESAS.COD_ZONA'
      Size = 3
    end
    object qryempresasCOD_DEPARTAMENTO_PAG: TStringField
      FieldName = 'COD_DEPARTAMENTO_PAG'
      Origin = 'SOFTEPS.EMPRESAS.COD_DEPARTAMENTO_PAG'
      Size = 2
    end
    object qryempresasCOD_CIUDAD_PAG: TStringField
      FieldName = 'COD_CIUDAD_PAG'
      Origin = 'SOFTEPS.EMPRESAS.COD_CIUDAD_PAG'
      Size = 3
    end
    object qryempresasCOD_PRESENTACION_COM: TStringField
      FieldName = 'COD_PRESENTACION_COM'
      Origin = 'SOFTEPS.EMPRESAS.COD_PRESENTACION_COM'
      Size = 1
    end
    object qryempresasCOD_TIP_EMPRESA: TStringField
      FieldName = 'COD_TIP_EMPRESA'
      Origin = 'SOFTEPS.EMPRESAS.COD_TIP_EMPRESA'
      Size = 1
    end
    object qryempresasTIP_DOCUMENTO_PEN: TStringField
      FieldName = 'TIP_DOCUMENTO_PEN'
      Origin = 'SOFTEPS.EMPRESAS.TIP_DOCUMENTO_PEN'
      Size = 3
    end
    object qryempresasNUM_DOCUMENTO_PEN: TStringField
      FieldName = 'NUM_DOCUMENTO_PEN'
      Origin = 'SOFTEPS.EMPRESAS.NUM_DOCUMENTO_PEN'
      Size = 18
    end
  end
  object Query1: TQuery
    DatabaseName = 'softeps'
    Left = 54
    Top = 65532
  end
end
