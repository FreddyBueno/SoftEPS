object frmafiliacion_empresas: Tfrmafiliacion_empresas
  Left = 1
  Top = 101
  Width = 798
  Height = 496
  ActiveControl = PageControl1
  Caption = 'frmafiliacion_empresas'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  WindowState = wsMaximized
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 790
    Height = 69
    Align = alTop
    TabOrder = 0
    object Label47: TLabel
      Left = 181
      Top = 37
      Width = 465
      Height = 23
      Caption = 'INGRESO DE  EMPRESAS Y/O INDEPENDIENTES'
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object Label48: TLabel
      Left = 707
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
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 69
    Width = 790
    Height = 393
    Align = alClient
    MultiLine = True
    TabOrder = 1
  end
  object GroupBox4: TGroupBox
    Left = 28
    Top = 86
    Width = 677
    Height = 333
    Caption = 'Datos Basicos de la Empresa'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    object Label29: TLabel
      Left = 47
      Top = 288
      Width = 174
      Height = 13
      Caption = 'Tipo y Numero documento ARP'
    end
    object Label30: TLabel
      Left = 126
      Top = 17
      Width = 129
      Height = 13
      Caption = 'Numero de Documento'
    end
    object Label31: TLabel
      Left = 398
      Top = 18
      Width = 153
      Height = 13
      Caption = 'Razon Social de la Empresa'
    end
    object Label33: TLabel
      Left = 94
      Top = 58
      Width = 116
      Height = 13
      Caption = 'Actividad Economica'
    end
    object Label34: TLabel
      Left = 473
      Top = 58
      Width = 102
      Height = 13
      Caption = 'Tipo de Aportante'
    end
    object Label35: TLabel
      Left = 23
      Top = 94
      Width = 104
      Height = 13
      Caption = 'Fecha de Afiliacion'
    end
    object Label36: TLabel
      Left = 152
      Top = 94
      Width = 90
      Height = 13
      Caption = 'Tipo de Persona'
    end
    object Label37: TLabel
      Left = 483
      Top = 95
      Width = 93
      Height = 13
      Caption = 'Total Empleados'
    end
    object Label38: TLabel
      Left = 28
      Top = 247
      Width = 208
      Height = 13
      Caption = 'Presentacion de Recaudo de Aportes'
    end
    object Label39: TLabel
      Left = 263
      Top = 94
      Width = 93
      Height = 13
      Caption = 'Tipo de Empresa'
    end
    object Label10: TLabel
      Left = 271
      Top = 17
      Width = 48
      Height = 13
      Caption = 'Sucursal'
      FocusControl = DBEdit10
    end
    object Label4: TLabel
      Left = 455
      Top = 244
      Width = 38
      Height = 13
      Caption = 'Estado'
    end
    object Label15: TLabel
      Left = 21
      Top = 134
      Width = 83
      Height = 13
      Caption = 'Departamento'
    end
    object Label19: TLabel
      Left = 244
      Top = 135
      Width = 38
      Height = 13
      Caption = 'Ciudad'
    end
    object Label21: TLabel
      Left = 249
      Top = 174
      Width = 118
      Height = 13
      Caption = 'Pagina Web Empresa'
    end
    object Label23: TLabel
      Left = 22
      Top = 172
      Width = 28
      Height = 13
      Caption = 'Zona'
    end
    object Label18: TLabel
      Left = 389
      Top = 135
      Width = 52
      Height = 13
      Caption = 'Direcci'#243'n'
      FocusControl = DBEdit15
    end
    object Label25: TLabel
      Left = 442
      Top = 175
      Width = 103
      Height = 13
      Caption = 'Correo Electronica'
      FocusControl = DBEdit30
    end
    object Label20: TLabel
      Left = 24
      Top = 210
      Width = 49
      Height = 13
      Caption = 'Tel'#233'fono'
      FocusControl = DBEdit19
    end
    object Label22: TLabel
      Left = 124
      Top = 210
      Width = 110
      Height = 13
      Caption = 'Tel'#233'fono (Opcional)'
      FocusControl = DBEdit24
    end
    object Label24: TLabel
      Left = 236
      Top = 212
      Width = 208
      Height = 13
      Caption = 'Departamento de Pago para Aportes'
    end
    object Label1: TLabel
      Left = 456
      Top = 212
      Width = 163
      Height = 13
      Caption = 'Ciudad de Pago para Aportes'
    end
    object Label8: TLabel
      Left = 12
      Top = 16
      Width = 112
      Height = 13
      Caption = 'Tipo de Documento '
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 26
      Top = 30
      Width = 57
      Height = 21
      Color = clMoneyGreen
      DataField = 'tip_documento'
      DataSource = dsempresas
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      KeyField = 'tip_documento'
      ListField = 'tip_documento'
      ListSource = dstiposdocumentos
      ParentFont = False
      TabOrder = 0
      OnExit = DBLookupComboBox2Exit
    end
    object DBEdit9: TDBEdit
      Left = 118
      Top = 30
      Width = 143
      Height = 21
      Color = clMoneyGreen
      DataField = 'num_documento'
      DataSource = dsempresas
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 10
      ParentFont = False
      TabOrder = 1
      OnExit = DBEdit8Exit
      OnKeyPress = DBEdit9KeyPress
    end
    object DBEdit10: TDBEdit
      Left = 279
      Top = 31
      Width = 30
      Height = 21
      Color = clMoneyGreen
      DataField = 'cod_sucursal'
      DataSource = dsempresas
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnExit = DBEdit8Exit
    end
    object DBEdit18: TDBEdit
      Left = 315
      Top = 32
      Width = 329
      Height = 21
      CharCase = ecUpperCase
      Color = clMoneyGreen
      DataField = 'nom_empresa'
      DataSource = dsempresas
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnExit = DBEdit18Exit
      OnKeyPress = DBEdit18KeyPress
    end
    object DBEdit20: TDBEdit
      Left = 510
      Top = 109
      Width = 49
      Height = 21
      Color = clMoneyGreen
      DataField = 'tot_empleados'
      DataSource = dsempresas
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 9
      OnExit = DBEdit20Exit
      OnKeyPress = DBEdit20KeyPress
    end
    object dbltipoaportante: TDBLookupComboBox
      Left = 448
      Top = 72
      Width = 193
      Height = 21
      Color = clMoneyGreen
      DataField = 'tip_aportante'
      DataSource = dsempresas
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      KeyField = 'tip_aportante'
      ListField = 'nom_tipo_apo'
      ListSource = dstipoaportante
      ParentFont = False
      TabOrder = 5
      OnExit = dbltipoaportanteExit
    end
    object dblpresentacioncompensacion: TDBLookupComboBox
      Left = 21
      Top = 261
      Width = 367
      Height = 21
      Color = clMoneyGreen
      DataField = 'cod_presentacion_com'
      DataSource = dsempresas
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      KeyField = 'cod_presentacion_com'
      ListField = 'nom_presentacion_com'
      ListSource = dspresentacioncompensacion
      ParentFont = False
      TabOrder = 20
      OnExit = dblpresentacioncompensacionExit
    end
    object dbltipodeempresa: TDBLookupComboBox
      Left = 267
      Top = 108
      Width = 193
      Height = 21
      Color = clMoneyGreen
      DataField = 'cod_tip_empresa'
      DataSource = dsempresas
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      KeyField = 'cod_tip_empresa'
      ListField = 'nom_tip_empresa'
      ListSource = dstipodeempresa
      ParentFont = False
      TabOrder = 8
      OnClick = dbltipodeempresaClick
      OnExit = dbltipodeempresaExit
    end
    object dbltipodepersona: TDBLookupComboBox
      Left = 144
      Top = 110
      Width = 111
      Height = 21
      Color = clMoneyGreen
      DataField = 'cod_tipo_per'
      DataSource = dsempresas
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      KeyField = 'cod_tipo_per'
      ListField = 'nom_tipo_per'
      ListSource = dstipopersona
      ParentFont = False
      TabOrder = 7
      OnExit = dbltipodepersonaExit
    end
    object dblactividadeconomica: TDBLookupComboBox
      Left = 24
      Top = 74
      Width = 419
      Height = 21
      Color = clMoneyGreen
      DataField = 'cod_actividad_eco'
      DataSource = dsempresas
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      KeyField = 'COD_ACTIVIDAD_ECO'
      ListField = 'NOM_ACTIVIDAD_ECO'
      ListSource = dsactividadeconomica
      ParentFont = False
      TabOrder = 4
      OnExit = dblactividadeconomicaExit
    end
    object DBLookupComboBox3: TDBLookupComboBox
      Left = 430
      Top = 259
      Width = 104
      Height = 21
      Color = clMoneyGreen
      DataField = 'cod_estado'
      DataSource = dsempresas
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      KeyField = 'COD_ESTADO'
      ListField = 'NOM_ESTADO'
      ListSource = dsestado
      ParentFont = False
      TabOrder = 21
    end
    object DBEdit8: TDBEdit
      Left = 532
      Top = 260
      Width = 85
      Height = 21
      Color = clMoneyGreen
      DataField = 'tip_documento'
      DataSource = dsempresas
      TabOrder = 26
      Visible = False
    end
    object dbldepartamentos: TDBLookupComboBox
      Left = 21
      Top = 150
      Width = 163
      Height = 21
      Hint = 'Selecione el departamento donde  esta  ubicada  la  Empresa'
      Color = clMoneyGreen
      DataField = 'cod_departamento'
      DataSource = dsempresas
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      KeyField = 'cod_departamento'
      ListField = 'nom_departamento'
      ListSource = dsdepartamentos
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 10
      OnClick = dbldepartamentosClick
      OnExit = dbldepartamentosExit
    end
    object dblciudades: TDBLookupComboBox
      Left = 188
      Top = 151
      Width = 187
      Height = 21
      Hint = 'Selecione el Municipio donde  esta  ubicada  la  Empresa'
      Color = clMoneyGreen
      DataField = 'cod_ciudad'
      DataSource = dsempresas
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      KeyField = 'cod_ciudad'
      ListField = 'nom_ciudad'
      ListSource = dsciudades
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 11
      OnExit = dblciudadesExit
    end
    object DBEdit3: TDBEdit
      Left = 231
      Top = 188
      Width = 201
      Height = 21
      Color = clMoneyGreen
      DataField = 'url_empresa'
      DataSource = dsempresas
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 14
    end
    object DBLookupComboBox4: TDBLookupComboBox
      Left = 20
      Top = 186
      Width = 201
      Height = 21
      Color = clMoneyGreen
      DataField = 'cod_zona'
      DataSource = dsempresas
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      KeyField = 'cod_zona'
      ListField = 'nom_zona'
      ListSource = dszonas
      ParentFont = False
      TabOrder = 13
      OnExit = DBLookupComboBox4Exit
    end
    object DBEdit15: TDBEdit
      Left = 376
      Top = 150
      Width = 264
      Height = 21
      CharCase = ecUpperCase
      Color = clMoneyGreen
      DataField = 'dir_empresa'
      DataSource = dsempresas
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 12
      OnExit = DBEdit15Exit
    end
    object DBEdit30: TDBEdit
      Left = 441
      Top = 188
      Width = 201
      Height = 21
      Color = clMoneyGreen
      DataField = 'eml_empresa'
      DataSource = dsempresas
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 15
      OnExit = DBEdit30Exit
    end
    object DBEdit19: TDBEdit
      Left = 20
      Top = 224
      Width = 98
      Height = 21
      Color = clMoneyGreen
      DataField = 'tel_empresa'
      DataSource = dsempresas
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 16
      OnExit = DBEdit19Exit
      OnKeyPress = DBEdit19KeyPress
    end
    object DBEdit24: TDBEdit
      Left = 127
      Top = 224
      Width = 98
      Height = 21
      Color = clMoneyGreen
      DataField = 'tel_empresa2'
      DataSource = dsempresas
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 17
      OnKeyPress = DBEdit24KeyPress
    end
    object DBLookupComboBox5: TDBLookupComboBox
      Left = 239
      Top = 227
      Width = 201
      Height = 21
      Color = clMoneyGreen
      DataField = 'cod_departamento_pag'
      DataSource = dsempresas
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      KeyField = 'cod_departamento'
      ListField = 'nom_departamento'
      ListSource = dsdepartamentos
      ParentFont = False
      TabOrder = 18
      OnClick = DBLookupComboBox5Click
      OnExit = DBLookupComboBox5Exit
    end
    object DBLookupComboBox6: TDBLookupComboBox
      Left = 448
      Top = 227
      Width = 195
      Height = 21
      Color = clMoneyGreen
      DataField = 'cod_ciudad_pag'
      DataSource = dsempresas
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      KeyField = 'cod_ciudad'
      ListField = 'nom_ciudad'
      ListSource = dsciudades1
      ParentFont = False
      TabOrder = 19
      OnExit = DBLookupComboBox6Exit
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 24
      Top = 302
      Width = 57
      Height = 21
      Color = clMoneyGreen
      DataField = 'tip_documento_arp'
      DataSource = dsempresas
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      KeyField = 'tip_documento'
      ListField = 'tip_documento'
      ListSource = dstiposdocumentos
      ParentFont = False
      TabOrder = 22
      OnExit = DBLookupComboBox1Exit
    end
    object DBEdit16: TDBEdit
      Left = 97
      Top = 304
      Width = 160
      Height = 21
      Color = clMoneyGreen
      DataField = 'num_documento_arp'
      DataSource = dsempresas
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 23
      OnExit = DBEdit16Exit
      OnKeyPress = DBEdit16KeyPress
    end
    object Button1: TButton
      Left = 266
      Top = 302
      Width = 17
      Height = 25
      Caption = '...'
      TabOrder = 24
      OnClick = Button1Click
    end
    object Edit1: TEdit
      Left = 293
      Top = 303
      Width = 349
      Height = 21
      CharCase = ecUpperCase
      Color = clMoneyGreen
      TabOrder = 25
    end
    object msfecafiliacion: TMaskEdit
      Left = 26
      Top = 112
      Width = 85
      Height = 21
      Hint = 'Fecha  de Constitucion de la Empresa'
      Color = clMoneyGreen
      EditMask = '!99/99/0000;1;_'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      MaxLength = 10
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
      Text = '  /  /    '
      OnExit = msfecafiliacionExit
    end
  end
  object DBNavigator1: TDBNavigator
    Left = 466
    Top = 425
    Width = 200
    Height = 25
    Hint = 'Grabar  Datos de  la Empresa'
    DataSource = dsempresas
    Ctl3D = True
    Hints.Strings = (
      'First record'
      'Prior record'
      'Next record'
      'Last record'
      'Insert record'
      'Delete record'
      'Edit record'
      'Grabar Registro'
      'Cancel edit'
      'Refresh data')
    ParentCtl3D = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
  end
  object tblempresas: TTable
    BeforePost = tblempresasBeforePost
    AfterPost = tblempresasAfterPost
    DatabaseName = 'softeps'
    TableName = 'EMPRESAS'
    Left = 256
    Top = 8
    object tblempresastip_documento: TStringField
      FieldName = 'tip_documento'
      Required = True
      FixedChar = True
      Size = 3
    end
    object tblempresasnum_documento: TStringField
      FieldName = 'num_documento'
      Required = True
      Size = 18
    end
    object tblempresascod_sucursal: TStringField
      FieldName = 'cod_sucursal'
      Required = True
      Size = 2
    end
    object tblempresascod_actividad_eco: TStringField
      FieldName = 'cod_actividad_eco'
      Size = 4
    end
    object tblempresascod_estado: TStringField
      FieldName = 'cod_estado'
      Required = True
      FixedChar = True
      Size = 2
    end
    object tblempresascod_oficina: TStringField
      FieldName = 'cod_oficina'
      Required = True
      FixedChar = True
      Size = 3
    end
    object tblempresascod_regional: TStringField
      FieldName = 'cod_regional'
      Required = True
      FixedChar = True
      Size = 3
    end
    object tblempresastip_documento_arp: TStringField
      FieldName = 'tip_documento_arp'
      FixedChar = True
      Size = 3
    end
    object tblempresasnum_documento_arp: TStringField
      FieldName = 'num_documento_arp'
      Size = 18
    end
    object tblempresascod_departamento: TStringField
      FieldName = 'cod_departamento'
      Size = 2
    end
    object tblempresascod_ciudad: TStringField
      FieldName = 'cod_ciudad'
      Size = 3
    end
    object tblempresastip_aportante: TStringField
      FieldName = 'tip_aportante'
      FixedChar = True
      Size = 1
    end
    object tblempresasnom_empresa: TStringField
      FieldName = 'nom_empresa'
      Required = True
      Size = 100
    end
    object tblempresasfec_afiliacion: TDateTimeField
      FieldName = 'fec_afiliacion'
      Required = True
    end
    object tblempresasdir_empresa: TStringField
      FieldName = 'dir_empresa'
      Required = True
      FixedChar = True
      Size = 50
    end
    object tblempresastel_empresa: TStringField
      FieldName = 'tel_empresa'
      FixedChar = True
    end
    object tblempresastel_empresa2: TStringField
      FieldName = 'tel_empresa2'
      FixedChar = True
    end
    object tblempresasurl_empresa: TStringField
      FieldName = 'url_empresa'
      FixedChar = True
    end
    object tblempresaseml_empresa: TStringField
      FieldName = 'eml_empresa'
      FixedChar = True
      Size = 50
    end
    object tblempresastot_empleados: TStringField
      FieldName = 'tot_empleados'
      FixedChar = True
      Size = 10
    end
    object tblempresascod_tipo_per: TStringField
      FieldName = 'cod_tipo_per'
      FixedChar = True
      Size = 1
    end
    object tblempresascod_zona: TStringField
      FieldName = 'cod_zona'
      Size = 3
    end
    object tblempresascod_departamento_pag: TStringField
      FieldName = 'cod_departamento_pag'
      Size = 2
    end
    object tblempresascod_ciudad_pag: TStringField
      FieldName = 'cod_ciudad_pag'
      Size = 3
    end
    object tblempresascod_presentacion_com: TStringField
      FieldName = 'cod_presentacion_com'
      Size = 1
    end
    object tblempresascod_tip_empresa: TStringField
      FieldName = 'cod_tip_empresa'
      Size = 1
    end
    object tblempresastip_documento_pen: TStringField
      FieldName = 'tip_documento_pen'
      FixedChar = True
      Size = 3
    end
    object tblempresasnum_documento_pen: TStringField
      FieldName = 'num_documento_pen'
      Size = 18
    end
  end
  object dsempresas: TDataSource
    DataSet = tblempresas
    Left = 288
    Top = 8
  end
  object qryempresas: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      '  SELECT empresas.tip_documento,   '
      '         empresas.num_documento,   '
      '         empresas.cod_sucursal,   '
      '         empresas.cod_actividad_eco,   '
      '         empresas.cod_estado,   '
      '         empresas.cod_oficina,   '
      '         empresas.cod_regional,   '
      '         empresas.tip_documento_arp,   '
      '         empresas.num_documento_arp,   '
      '         empresas.cod_departamento,   '
      '         empresas.cod_ciudad,   '
      '         empresas.tip_aportante,   '
      '         empresas.nom_empresa,   '
      '         empresas.fec_afiliacion,   '
      '         empresas.dir_empresa,   '
      '         empresas.tel_empresa,   '
      '         empresas.tel_empresa2,   '
      '         empresas.url_empresa,   '
      '         empresas.eml_empresa  '
      '    FROM empresas  '
      '   WHERE ( empresas.tip_documento =:"tip_doc"  ) AND  '
      '         ( empresas.num_documento =:"num_doc"  ) AND  '
      '         ( empresas.cod_sucursal =:"cod_suc"  ) ')
    Left = 576
    Top = 8
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'tip_doc'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'num_doc'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cod_suc'
        ParamType = ptUnknown
      end>
  end
  object dsdepartamentos: TDataSource
    DataSet = dmafiliaciones.tbldepartamentos
    Left = 626
    Top = 392
  end
  object dsciudades: TDataSource
    DataSet = dmafiliaciones.qryciudades
    Left = 748
    Top = 366
  end
  object dsactividadeconomica: TDataSource
    DataSet = dmafiliaciones.tblactividadeconomica
    Left = 624
    Top = 160
  end
  object dstipoaportante: TDataSource
    DataSet = dmafiliaciones.tbltipoaportante
    Left = 624
    Top = 192
  end
  object dstipopersona: TDataSource
    DataSet = dmafiliaciones.tbltipopersona
    Left = 624
    Top = 224
  end
  object dstipodeempresa: TDataSource
    DataSet = dmafiliaciones.tbltipoempresa
    Left = 624
    Top = 256
  end
  object dspresentacioncompensacion: TDataSource
    DataSet = dmafiliaciones.tblperiododecompensacion
    Left = 624
    Top = 288
  end
  object dszonas: TDataSource
    DataSet = dmafiliaciones.tblzonas
    Left = 624
    Top = 320
  end
  object dstiposdocumentos: TDataSource
    DataSet = dmafiliaciones.tbltipos_documentos
    Left = 624
    Top = 128
  end
  object dsciudades1: TDataSource
    DataSet = dmafiliaciones.qryciudades1
    Left = 752
    Top = 400
  end
  object dsestado: TDataSource
    DataSet = dmafiliaciones.tblestados
    Left = 624
    Top = 360
  end
  object qryarp: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      ' SELECT arps.tip_documento,   '
      '         arps.num_documento,   '
      '         arps.nom_arps,   '
      '         arps.fec_inclusion  '
      '    FROM arps'
      '   ')
    Left = 632
    Top = 50
    object qryarpTIP_DOCUMENTO: TStringField
      FieldName = 'TIP_DOCUMENTO'
      Origin = 'SOFTEPS.ARPS.TIP_DOCUMENTO'
      Size = 3
    end
    object qryarpNUM_DOCUMENTO: TStringField
      FieldName = 'NUM_DOCUMENTO'
      Origin = 'SOFTEPS.ARPS.NUM_DOCUMENTO'
      Size = 18
    end
    object qryarpNOM_ARPS: TStringField
      FieldName = 'NOM_ARPS'
      Origin = 'SOFTEPS.ARPS.NOM_ARPS'
      Size = 100
    end
    object qryarpFEC_INCLUSION: TDateTimeField
      FieldName = 'FEC_INCLUSION'
      Origin = 'SOFTEPS.ARPS.FEC_INCLUSION'
    end
  end
end
