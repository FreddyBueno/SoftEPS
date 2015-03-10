object frmact_certificados: Tfrmact_certificados
  Left = -2
  Top = 100
  Width = 795
  Height = 488
  Caption = 'Actualizaci'#243'n de Certificados'
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
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 121
    Width = 787
    Height = 333
    Align = alClient
    TabOrder = 1
    object GroupBox4: TGroupBox
      Left = 10
      Top = 69
      Width = 479
      Height = 241
      Caption = 'Datos Basicos de Afiliado'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object Label21: TLabel
        Left = 38
        Top = 20
        Width = 109
        Height = 13
        Caption = 'Tipo de Documento'
      end
      object Label22: TLabel
        Left = 260
        Top = 20
        Width = 129
        Height = 13
        Caption = 'Numero de Documento'
        FocusControl = DBEdit23
      end
      object Label30: TLabel
        Left = 38
        Top = 68
        Width = 86
        Height = 13
        Caption = 'Primer Apellido'
        FocusControl = DBEdit31
      end
      object Label31: TLabel
        Left = 260
        Top = 68
        Width = 97
        Height = 13
        Caption = 'Segundo Apellido'
        FocusControl = DBEdit32
      end
      object Label27: TLabel
        Left = 38
        Top = 108
        Width = 85
        Height = 13
        Caption = 'Primer Nombre'
        FocusControl = DBEdit28
      end
      object Label28: TLabel
        Left = 260
        Top = 108
        Width = 96
        Height = 13
        Caption = 'Segundo Nombre'
        FocusControl = DBEdit29
      end
      object Label33: TLabel
        Left = 38
        Top = 148
        Width = 116
        Height = 13
        Caption = 'Fecha de Nacimiento'
      end
      object Label24: TLabel
        Left = 154
        Top = 148
        Width = 28
        Height = 13
        Caption = 'Sexo'
      end
      object Label25: TLabel
        Left = 260
        Top = 194
        Width = 64
        Height = 13
        Caption = 'Estado Civil'
      end
      object Label36: TLabel
        Left = 38
        Top = 194
        Width = 74
        Height = 13
        Caption = 'Discapacidad'
      end
      object Label39: TLabel
        Left = 260
        Top = 148
        Width = 135
        Height = 13
        Caption = 'Estrato Socioeconomico'
      end
      object DBEdit23: TDBEdit
        Left = 260
        Top = 34
        Width = 157
        Height = 21
        Color = clMoneyGreen
        DataField = 'num_documento'
        DataSource = dsafiliados
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
      object DBEdit31: TDBEdit
        Left = 40
        Top = 82
        Width = 201
        Height = 21
        Color = clMoneyGreen
        DataField = 'pri_apellido'
        DataSource = dsafiliados
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
      end
      object DBEdit32: TDBEdit
        Left = 260
        Top = 82
        Width = 201
        Height = 21
        Color = clMoneyGreen
        DataField = 'seg_apellido'
        DataSource = dsafiliados
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
      end
      object DBEdit28: TDBEdit
        Left = 40
        Top = 122
        Width = 201
        Height = 21
        Color = clMoneyGreen
        DataField = 'pri_nombre'
        DataSource = dsafiliados
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
      end
      object DBEdit29: TDBEdit
        Left = 260
        Top = 122
        Width = 201
        Height = 21
        Color = clMoneyGreen
        DataField = 'seg_nombre'
        DataSource = dsafiliados
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
      end
      object DBLookupComboBox2: TDBLookupComboBox
        Left = 40
        Top = 34
        Width = 57
        Height = 21
        Color = clMoneyGreen
        DataField = 'tip_documento'
        DataSource = dsafiliados
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        KeyField = 'tip_documento'
        ListField = 'tip_documento'
        ListSource = dstipos_documentos
        ParentFont = False
        TabOrder = 0
      end
      object dblsexo: TDBLookupComboBox
        Left = 152
        Top = 162
        Width = 89
        Height = 21
        Color = clMoneyGreen
        DataField = 'cod_sexo'
        DataSource = dsafiliados
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        KeyField = 'cod_sexo'
        ListField = 'nom_sexo'
        ListSource = dssexo
        ParentFont = False
        TabOrder = 7
      end
      object dblestrato: TDBLookupComboBox
        Left = 260
        Top = 162
        Width = 201
        Height = 21
        Color = clMoneyGreen
        DataField = 'cod_estrato'
        DataSource = dsafiliados
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        KeyField = 'cod_estrato'
        ListField = 'nom_estrato'
        ListSource = dsestratos
        ParentFont = False
        TabOrder = 8
      end
      object dbldiscapacidad: TDBLookupComboBox
        Left = 40
        Top = 208
        Width = 201
        Height = 21
        Color = clMoneyGreen
        DataField = 'cod_discapacidad'
        DataSource = dsafiliados
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        KeyField = 'cod_discapacidad'
        ListField = 'nom_discapacidad'
        ListSource = dsdiscapacidades
        ParentFont = False
        TabOrder = 9
      end
      object dblestadocivil: TDBLookupComboBox
        Left = 260
        Top = 208
        Width = 201
        Height = 21
        Color = clMoneyGreen
        DataField = 'cod_estado_civ'
        DataSource = dsafiliados
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        KeyField = 'cod_estado_civ'
        ListField = 'nom_estado_civ'
        ListSource = dsestadosciviles
        ParentFont = False
        TabOrder = 10
      end
      object DBEdit1: TDBEdit
        Left = 40
        Top = 162
        Width = 105
        Height = 21
        Color = clMoneyGreen
        DataField = 'fec_nacimiento'
        DataSource = dsafiliados
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 6
      end
    end
    object GroupBox7: TGroupBox
      Left = 498
      Top = 70
      Width = 279
      Height = 239
      Caption = 'Fechas de la  Afiliaci'#243'n'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      object Label18: TLabel
        Left = 68
        Top = 66
        Width = 166
        Height = 13
        Caption = 'Fecha de Afiliacion al Sistema'
      end
      object Label19: TLabel
        Left = 66
        Top = 138
        Width = 159
        Height = 13
        Caption = 'Fecha de Afiliaci'#243'n a la E.P.S.'
      end
      object DBEdit2: TDBEdit
        Left = 72
        Top = 84
        Width = 105
        Height = 21
        Color = clMoneyGreen
        DataField = 'fec_afiliacion_sis'
        DataSource = dsafiliados
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object DBEdit3: TDBEdit
        Left = 72
        Top = 156
        Width = 105
        Height = 21
        Color = clMoneyGreen
        DataField = 'fec_afiliacion_uni'
        DataSource = dsafiliados
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
    end
    object GroupBox2: TGroupBox
      Left = 8
      Top = 2
      Width = 769
      Height = 63
      Caption = 'Datos Adicionales'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      object dbgnovedades: TDBGrid
        Left = 10
        Top = 15
        Width = 746
        Height = 42
        Color = clMoneyGreen
        DataSource = dsnovedades
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clNavy
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = [fsBold]
        Columns = <
          item
            Expanded = False
            FieldName = 'nov_nombre'
            Title.Caption = 'Novedad de:'
            Width = 703
            Visible = True
          end>
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 787
    Height = 121
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Label5: TLabel
      Left = 134
      Top = 34
      Width = 536
      Height = 23
      Caption = 'ACTUALIZACION DE CERTIFICADOS DE LOS AFILIADOS'
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
    object GroupBox3: TGroupBox
      Left = 8
      Top = 57
      Width = 779
      Height = 7
      TabOrder = 2
    end
    object gbdocumentos: TGroupBox
      Left = 8
      Top = 64
      Width = 377
      Height = 49
      Caption = 'Documento'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object Label7: TLabel
        Left = 8
        Top = 24
        Width = 26
        Height = 13
        Caption = 'Tipo'
      end
      object Label8: TLabel
        Left = 104
        Top = 24
        Width = 44
        Height = 13
        Caption = 'Numero'
      end
      object BitBtn1: TBitBtn
        Left = 272
        Top = 16
        Width = 81
        Height = 25
        Caption = '&Consultar'
        Default = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        OnClick = BitBtn1Click
      end
      object dbltipos: TDBLookupComboBox
        Left = 40
        Top = 20
        Width = 49
        Height = 21
        Color = clMoneyGreen
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        KeyField = 'tip_documento'
        ListField = 'tip_documento'
        ListSource = dstipos_documentos
        ParentFont = False
        TabOrder = 0
        OnExit = dbltiposExit
      end
      object Edit2: TEdit
        Left = 155
        Top = 20
        Width = 97
        Height = 21
        Color = clMoneyGreen
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnExit = Edit2Exit
      end
    end
    object GroupBox1: TGroupBox
      Left = 400
      Top = 64
      Width = 377
      Height = 49
      Caption = 'Datos Adicionales'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      object Label1: TLabel
        Left = 7
        Top = 24
        Width = 123
        Height = 13
        Caption = 'Fecha de Vencimiento'
      end
      object Label14: TLabel
        Left = 197
        Top = 26
        Width = 86
        Height = 13
        Caption = '(dd/mm/aaaa)'
      end
      object mefecha_evento: TMaskEdit
        Left = 136
        Top = 18
        Width = 65
        Height = 21
        Color = clMoneyGreen
        EditMask = '!99/99/0000;1;_'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        MaxLength = 10
        ParentFont = False
        TabOrder = 0
        Text = '  /  /    '
      end
      object Button1: TButton
        Left = 286
        Top = 16
        Width = 75
        Height = 25
        Caption = '&Procesar'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnClick = Button1Click
      end
    end
  end
  object qrynovedades: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      '  SELECT novedades.nov_codigo,   '
      '                novedades.nov_nombre  '
      '    FROM novedades  '
      '   WHERE ( novedades.cla_novedad = :"clase_novedad" ) AND  '
      '                  ( novedades.tipo_novedad =:"tipo_novedad"  )')
    Left = 520
    Top = 16
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'clase_novedad'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tipo_novedad'
        ParamType = ptUnknown
      end>
    object qrynovedadesnov_codigo: TStringField
      DisplayWidth = 11
      FieldName = 'nov_codigo'
      Origin = 'DBUNIMEC.novedades.nov_codigo'
      FixedChar = True
      Size = 3
    end
    object qrynovedadesnov_nombre: TStringField
      DisplayWidth = 63
      FieldName = 'nov_nombre'
      Origin = 'DBUNIMEC.novedades.nov_nombre'
      FixedChar = True
      Size = 50
    end
  end
  object dsnovedades: TDataSource
    DataSet = qrynovedades
    Left = 488
    Top = 16
  end
  object qryafiliados: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      '  SELECT afiliados.tip_documento,'
      '  afiliados.num_documento,'
      '  afiliados.cod_sexo,'
      '  afiliados.pri_apellido,'
      '  afiliados.seg_apellido,'
      '  afiliados.pri_nombre,'
      '  afiliados.seg_nombre,'
      '  afiliados.fec_nacimiento,'
      '  afiliados.cod_estado_civ,'
      '  afiliados.cod_estrato,'
      '  afiliados.fec_afiliacion_sis,'
      '  afiliados.fec_afiliacion_uni,'
      '  afiliados.cod_discapacidad'
      '    FROM afiliados  '
      '  WHERE ( afiliados.tip_documento = :"tipo_doc" ) AND  '
      '         ( afiliados.num_documento = :"num_doc" ) AND  '
      '         ( afiliados.cod_estado = '#39'A'#39' ) ')
    Left = 520
    Top = 48
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'tipo_doc'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'num_doc'
        ParamType = ptUnknown
      end>
    object qryafiliadostip_documento: TStringField
      FieldName = 'tip_documento'
      Origin = 'DBUNIMEC.afiliados.tip_documento'
      ReadOnly = True
      FixedChar = True
      Size = 3
    end
    object qryafiliadosnum_documento: TStringField
      FieldName = 'num_documento'
      Origin = 'DBUNIMEC.afiliados.num_documento'
      ReadOnly = True
      FixedChar = True
      Size = 18
    end
    object qryafiliadoscod_sexo: TStringField
      FieldName = 'cod_sexo'
      Origin = 'DBUNIMEC.afiliados.cod_sexo'
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object qryafiliadospri_apellido: TStringField
      FieldName = 'pri_apellido'
      Origin = 'DBUNIMEC.afiliados.pri_apellido'
      ReadOnly = True
      FixedChar = True
      Size = 25
    end
    object qryafiliadosseg_apellido: TStringField
      FieldName = 'seg_apellido'
      Origin = 'DBUNIMEC.afiliados.seg_apellido'
      ReadOnly = True
      FixedChar = True
      Size = 25
    end
    object qryafiliadospri_nombre: TStringField
      FieldName = 'pri_nombre'
      Origin = 'DBUNIMEC.afiliados.pri_nombre'
      ReadOnly = True
      FixedChar = True
      Size = 25
    end
    object qryafiliadosseg_nombre: TStringField
      FieldName = 'seg_nombre'
      Origin = 'DBUNIMEC.afiliados.seg_nombre'
      ReadOnly = True
      FixedChar = True
      Size = 25
    end
    object qryafiliadosfec_nacimiento: TDateTimeField
      FieldName = 'fec_nacimiento'
      Origin = 'DBUNIMEC.afiliados.fec_nacimiento'
      ReadOnly = True
    end
    object qryafiliadoscod_estado_civ: TStringField
      FieldName = 'cod_estado_civ'
      Origin = 'DBUNIMEC.afiliados.cod_estado_civ'
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object qryafiliadoscod_estrato: TStringField
      FieldName = 'cod_estrato'
      Origin = 'DBUNIMEC.afiliados.cod_estrato'
      ReadOnly = True
      FixedChar = True
      Size = 3
    end
    object qryafiliadosfec_afiliacion_sis: TDateTimeField
      FieldName = 'fec_afiliacion_sis'
      Origin = 'DBUNIMEC.afiliados.fec_afiliacion_sis'
      ReadOnly = True
    end
    object qryafiliadosfec_afiliacion_uni: TDateTimeField
      FieldName = 'fec_afiliacion_uni'
      Origin = 'DBUNIMEC.afiliados.fec_afiliacion_uni'
      ReadOnly = True
    end
    object qryafiliadoscod_discapacidad: TStringField
      FieldName = 'cod_discapacidad'
      Origin = 'DBUNIMEC.afiliados.cod_discapacidad'
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
  end
  object dsafiliados: TDataSource
    DataSet = qryafiliados
    Left = 488
    Top = 48
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
      '                                   cod_novedad_afil) '
      '                          VALUES ( :"novedad",   '
      '                                   :"tip_documento_ben",   '
      '                                   :"num_documento_ben",   '
      '                                   :"oficina",   '
      '                                   :"regional",   '
      '                                   :"tipo_usuario",   '
      '                                   :"numero_usuario",   '
      '                                   :"fecha_novedad",   '
      '                                   '#39#39',   '
      '                                   '#39#39', '
      '                                   '#39'afiliados'#39',   '
      
        '                                   '#39'actualizacion de certificado' +
        #39',   '
      '                                   :"fecha_evento",   '
      '                                   :"fecha_sistema",'
      '                                   :"tip_doc_emp",'
      '                                   :"num_doc_emp",'
      '                                   :"cod_sucursal",'
      '                                   nov_afiliados.nextval)')
    Left = 520
    Top = 80
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
        Name = 'numero_usuario'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'fecha_novedad'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'fecha_evento'
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
      end>
  end
  object dstipos_documentos: TDataSource
    DataSet = dmafiliaciones.tbltipos_documentos
    Left = 736
    Top = 72
  end
  object dssexo: TDataSource
    DataSet = dmafiliaciones.tblsexo
    Left = 736
    Top = 104
  end
  object dsestratos: TDataSource
    DataSet = dmafiliaciones.tblestratos
    Left = 736
    Top = 136
  end
  object dsdiscapacidades: TDataSource
    DataSet = dmafiliaciones.tbldiscapacidades
    Left = 736
    Top = 168
  end
  object dsestadosciviles: TDataSource
    DataSet = dmafiliaciones.tblestadosciviles
    Left = 736
    Top = 200
  end
end
