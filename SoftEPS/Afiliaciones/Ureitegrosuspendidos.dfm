object frmreintegrossuspendidos: Tfrmreintegrossuspendidos
  Left = 2
  Top = 100
  Width = 796
  Height = 470
  Caption = 'Reintegros'
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
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 788
    Height = 185
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Label13: TLabel
      Left = 439
      Top = 16
      Width = 82
      Height = 13
      Caption = 'Fecha de Evento'
      Visible = False
    end
    object Label26: TLabel
      Left = 220
      Top = 32
      Width = 384
      Height = 23
      Caption = 'RELACION DE LOS AFILIADOS ACTIVOS'
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
    object DBNavigator: TDBNavigator
      Left = 326
      Top = 12
      Width = 240
      Height = 25
      DataSource = dsafiliados
      Flat = True
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
      Visible = False
    end
    object btnsuspencion: TBitBtn
      Left = 671
      Top = 79
      Width = 70
      Height = 25
      Caption = '&Reintegros'
      TabOrder = 1
      OnClick = btnsuspencionClick
    end
    object GroupBox16: TGroupBox
      Left = 8
      Top = 57
      Width = 779
      Height = 7
      TabOrder = 2
    end
    object GroupBox2: TGroupBox
      Left = 6
      Top = 117
      Width = 762
      Height = 63
      Caption = 'Datos Adicionales'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      Visible = False
      object Label1: TLabel
        Left = 439
        Top = 16
        Width = 92
        Height = 13
        Caption = 'Fecha de Evento'
        Visible = False
      end
      object Label14: TLabel
        Left = 525
        Top = 34
        Width = 86
        Height = 13
        Caption = '(dd/mm/aaaa)'
        Visible = False
      end
      object Label17: TLabel
        Left = 609
        Top = 18
        Width = 104
        Height = 13
        Caption = 'Numero de Planilla'
        Visible = False
      end
      object mefecha_evento: TMaskEdit
        Left = 440
        Top = 32
        Width = 81
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
        TabOrder = 1
        Text = '  /  /    '
        Visible = False
      end
      object ednumero_planilla: TEdit
        Left = 609
        Top = 34
        Width = 119
        Height = 21
        Color = clMoneyGreen
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        Visible = False
      end
      object dbgnovedades: TDBGrid
        Left = 8
        Top = 16
        Width = 417
        Height = 41
        Color = clMoneyGreen
        DataSource = dsnovedades
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clNavy
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = [fsBold]
        Visible = False
        Columns = <
          item
            Expanded = False
            FieldName = 'nov_nombre'
            Title.Caption = 'Novedad de:'
            Width = 395
            Visible = True
          end>
      end
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 185
    Width = 788
    Height = 172
    Align = alTop
    Caption = 'Panel4'
    TabOrder = 1
    object GroupBox4: TGroupBox
      Left = 10
      Top = 8
      Width = 759
      Height = 153
      Caption = 'Datos Basicos de Afiliado'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object Label30: TLabel
        Left = 22
        Top = 20
        Width = 86
        Height = 13
        Caption = 'Primer Apellido'
        FocusControl = DBEdit31
      end
      object Label31: TLabel
        Left = 244
        Top = 20
        Width = 97
        Height = 13
        Caption = 'Segundo Apellido'
        FocusControl = DBEdit32
      end
      object Label27: TLabel
        Left = 22
        Top = 60
        Width = 85
        Height = 13
        Caption = 'Primer Nombre'
        FocusControl = DBEdit28
      end
      object Label28: TLabel
        Left = 244
        Top = 60
        Width = 96
        Height = 13
        Caption = 'Segundo Nombre'
        FocusControl = DBEdit29
      end
      object Label33: TLabel
        Left = 470
        Top = 20
        Width = 116
        Height = 13
        Caption = 'Fecha de Nacimiento'
      end
      object Label24: TLabel
        Left = 626
        Top = 20
        Width = 28
        Height = 13
        Caption = 'Sexo'
      end
      object Label25: TLabel
        Left = 244
        Top = 106
        Width = 64
        Height = 13
        Caption = 'Estado Civil'
      end
      object Label36: TLabel
        Left = 22
        Top = 106
        Width = 74
        Height = 13
        Caption = 'Discapacidad'
      end
      object Label39: TLabel
        Left = 468
        Top = 60
        Width = 135
        Height = 13
        Caption = 'Estrato Socioeconomico'
      end
      object DBEdit31: TDBEdit
        Left = 24
        Top = 34
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
        TabOrder = 0
      end
      object DBEdit32: TDBEdit
        Left = 244
        Top = 34
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
        TabOrder = 1
      end
      object DBEdit28: TDBEdit
        Left = 24
        Top = 74
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
        Left = 244
        Top = 74
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
      object dblsexo: TDBLookupComboBox
        Left = 624
        Top = 34
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
        TabOrder = 3
      end
      object dblestrato: TDBLookupComboBox
        Left = 468
        Top = 74
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
        TabOrder = 6
      end
      object dbldiscapacidad: TDBLookupComboBox
        Left = 24
        Top = 120
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
        TabOrder = 7
      end
      object dblestadocivil: TDBLookupComboBox
        Left = 244
        Top = 120
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
        TabOrder = 8
      end
      object DBEdit1: TDBEdit
        Left = 472
        Top = 34
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
        TabOrder = 2
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 357
    Width = 788
    Height = 79
    Align = alClient
    BevelOuter = bvNone
    Caption = 'Panel3'
    TabOrder = 2
    object DBGrid1: TDBGrid
      Left = 0
      Top = 0
      Width = 788
      Height = 79
      Align = alClient
      Color = clMoneyGreen
      DataSource = dsrelacion_afiliados
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clNavy
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = [fsBold]
    end
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
    TabOrder = 3
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
    object dbltipos: TDBLookupComboBox
      Left = 39
      Top = 18
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
    end
    object Edit2: TEdit
      Left = 155
      Top = 19
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
      OnKeyPress = Edit2KeyPress
    end
    object BitBtn1: TBitBtn
      Left = 277
      Top = 16
      Width = 76
      Height = 25
      Caption = '&Consultar'
      Default = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = BitBtn1Click
    end
  end
  object qryafiliados: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      'Select distinct'
      '  afiliados.tip_documento,'
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
      'From afiliados,relacion_afiliados,novedades_afiliados na'
      'Where'
      '  afiliados.cod_tipo_afil='#39'C'#39' AND'
      '  afiliados.cod_estado='#39'S'#39' AND'
      '  relacion_afiliados.tip_documento_ben = :"tipo_doc"  and'#9
      '  relacion_afiliados.num_documento_ben = :"nro_doc" and'
      
        '  relacion_afiliados.tip_documento_cot = afiliados.tip_documento' +
        ' and'#9
      
        '  relacion_afiliados.num_documento_cot = afiliados.num_documento' +
        ' and'
      '  relacion_afiliados.tip_documento_cot = na.tip_documento and'#9
      '  relacion_afiliados.num_documento_cot = na.num_documento and'
      '  na.nov_codigo ='#39'66'#39' and'
      '  na.fec_novedad_afil <= (SELECT max(fec_novedad_afil)'
      #9#9#9#9#9#9#9'FROM novedades_afiliados'
      
        #9#9#9#9#9#9#9'WHERE na.tip_documento=novedades_afiliados.tip_documento ' +
        'and'
      #9#9#9#9#9#9#9#9#9'na.num_documento=novedades_afiliados.num_documento and'
      #9#9#9#9#9#9#9#9#9'novedades_afiliados.nov_codigo in ('#39'87'#39','#39'66'#39'))')
    Left = 433
    Top = 51
    ParamData = <
      item
        DataType = ftString
        Name = 'tipo_doc'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'nro_doc'
        ParamType = ptUnknown
      end>
    object qryafiliadostip_documento: TStringField
      FieldName = 'tip_documento'
      ReadOnly = True
      FixedChar = True
      Size = 3
    end
    object qryafiliadosnum_documento: TStringField
      FieldName = 'num_documento'
      ReadOnly = True
      FixedChar = True
      Size = 18
    end
    object qryafiliadoscod_sexo: TStringField
      FieldName = 'cod_sexo'
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object qryafiliadospri_apellido: TStringField
      FieldName = 'pri_apellido'
      ReadOnly = True
      FixedChar = True
      Size = 25
    end
    object qryafiliadosseg_apellido: TStringField
      FieldName = 'seg_apellido'
      ReadOnly = True
      FixedChar = True
      Size = 25
    end
    object qryafiliadospri_nombre: TStringField
      FieldName = 'pri_nombre'
      ReadOnly = True
      FixedChar = True
      Size = 25
    end
    object qryafiliadosseg_nombre: TStringField
      FieldName = 'seg_nombre'
      ReadOnly = True
      FixedChar = True
      Size = 25
    end
    object qryafiliadosfec_nacimiento: TDateTimeField
      FieldName = 'fec_nacimiento'
      ReadOnly = True
    end
    object qryafiliadoscod_estado_civ: TStringField
      FieldName = 'cod_estado_civ'
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object qryafiliadoscod_estrato: TStringField
      FieldName = 'cod_estrato'
      ReadOnly = True
      FixedChar = True
      Size = 3
    end
    object qryafiliadosfec_afiliacion_sis: TDateTimeField
      FieldName = 'fec_afiliacion_sis'
      ReadOnly = True
    end
    object qryafiliadosfec_afiliacion_uni: TDateTimeField
      FieldName = 'fec_afiliacion_uni'
      ReadOnly = True
    end
    object qryafiliadoscod_discapacidad: TStringField
      FieldName = 'cod_discapacidad'
      Origin = 'DBUNIMEC.afiliados.cod_discapacidad'
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object qryafiliadosnom_afiliado: TStringField
      FieldKind = fkCalculated
      FieldName = 'nom_afiliado'
      Size = 255
      Calculated = True
    end
  end
  object dsafiliados: TDataSource
    DataSet = qryafiliados
    Left = 461
    Top = 51
  end
  object qryrelacion_afiliados: TQuery
    DatabaseName = 'softeps'
    DataSource = dsafiliados
    SQL.Strings = (
      'Select distinct'
      '  dbo.relacion_afiliados.tip_documento_ben,'
      '  dbo.relacion_afiliados.num_documento_ben,'
      '  dbo.afiliados.pri_apellido,'
      '  dbo.afiliados.seg_apellido,'
      '  dbo.afiliados.pri_nombre,'
      '  dbo.afiliados.seg_nombre,'
      '  dbo.afiliados.cod_sexo,'
      '  dbo.afiliados.fec_nacimiento,'
      '  dbo.relacion_afiliados.cod_parentesco,'
      '  dbo.afiliados.cod_tipo_afil'
      'From dbo.relacion_afiliados,dbo.afiliados,novedades_afiliados na'
      'Where'
      '  relacion_afiliados.tip_documento_cot =:"tip_documento" AND'
      '  relacion_afiliados.num_documento_cot =:"num_documento" AND'
      
        '  afiliados.tip_documento=relacion_afiliados.tip_documento_ben A' +
        'ND'
      
        '  afiliados.num_documento=relacion_afiliados.num_documento_ben A' +
        'ND'
      '  relacion_afiliados.tip_documento_cot = na.tip_documento and'#9
      '  relacion_afiliados.num_documento_cot = na.num_documento and'
      '  na.nov_codigo ='#39'66'#39' and'
      '  na.fec_novedad_afil <= (SELECT max(fec_novedad_afil)'
      #9#9#9#9#9#9#9'FROM novedades_afiliados'
      
        #9#9#9#9#9#9#9'WHERE na.tip_documento=novedades_afiliados.tip_documento ' +
        'and'
      #9#9#9#9#9#9#9#9#9'na.num_documento=novedades_afiliados.num_documento and'
      #9#9#9#9#9#9#9#9#9'novedades_afiliados.nov_codigo in ('#39'87'#39','#39'66'#39')) and'
      '  relacion_afiliados.cod_estado = '#39'S'#39' '
      'Order By'
      ' dbo.afiliados.cod_tipo_afil desc'
      ''
      ''
      ''
      '')
    Left = 489
    Top = 51
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'tip_documento'
        ParamType = ptUnknown
        Size = 4
      end
      item
        DataType = ftFixedChar
        Name = 'num_documento'
        ParamType = ptUnknown
        Size = 19
      end>
    object qryrelacion_afiliadoscod_tipo_afil: TStringField
      DisplayLabel = 'Tipo de Afiliado'
      FieldName = 'cod_tipo_afil'
      Origin = 'DBUNIMEC.afiliados.cod_tipo_afil'
      FixedChar = True
      Size = 1
    end
    object qryrelacion_afiliadoscod_parentesco: TStringField
      DisplayLabel = 'Parentesco'
      FieldName = 'cod_parentesco'
      FixedChar = True
      Size = 3
    end
    object qryrelacion_afiliadostip_documento_ben: TStringField
      DisplayLabel = 'Tipo Doc'
      FieldName = 'tip_documento_ben'
      FixedChar = True
      Size = 3
    end
    object qryrelacion_afiliadosnum_documento_ben: TStringField
      DisplayLabel = 'Numero Doc'
      FieldName = 'num_documento_ben'
      FixedChar = True
      Size = 18
    end
    object qryrelacion_afiliadosseg_apellido: TStringField
      DisplayLabel = 'Segundo Apellido'
      FieldName = 'seg_apellido'
      Origin = 'DBUNIMEC.afiliados.seg_apellido'
      FixedChar = True
      Size = 25
    end
    object qryrelacion_afiliadospri_apellido: TStringField
      DisplayLabel = 'Primer Apellido'
      FieldName = 'pri_apellido'
      Origin = 'DBUNIMEC.afiliados.pri_apellido'
      FixedChar = True
      Size = 25
    end
    object qryrelacion_afiliadospri_nombre: TStringField
      DisplayLabel = 'Primer Nombre'
      FieldName = 'pri_nombre'
      Origin = 'DBUNIMEC.afiliados.pri_nombre'
      FixedChar = True
      Size = 25
    end
    object qryrelacion_afiliadosseg_nombre: TStringField
      DisplayLabel = 'Segundo Nombre'
      FieldName = 'seg_nombre'
      Origin = 'DBUNIMEC.afiliados.seg_nombre'
      FixedChar = True
      Size = 25
    end
    object qryrelacion_afiliadoscod_sexo: TStringField
      DisplayLabel = 'Sexo'
      FieldName = 'cod_sexo'
      Origin = 'DBUNIMEC.afiliados.cod_sexo'
      FixedChar = True
      Size = 1
    end
    object qryrelacion_afiliadosfec_nacimiento: TDateTimeField
      DisplayLabel = 'Fecha de Nac.'
      FieldName = 'fec_nacimiento'
      Origin = 'DBUNIMEC.afiliados.fec_nacimiento'
    end
  end
  object dsrelacion_afiliados: TDataSource
    DataSet = qryrelacion_afiliados
    Left = 517
    Top = 51
  end
  object dsnovedades: TDataSource
    DataSet = qrynovedades
    Left = 624
    Top = 32
  end
  object qrynovedades: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      '  SELECT novedades.nov_codigo,   '
      '                novedades.nov_nombre  '
      '    FROM novedades  '
      '   WHERE ( novedades.cla_novedad = :"clase_novedad" ) AND  '
      '                  ( novedades.tipo_novedad =:"tipo_novedad"  )'
      '                 ')
    Left = 656
    Top = 32
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
  object qryupdaterelacion_afiliados: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      '  UPDATE relacion_afiliados  '
      '     SET cod_estado = :"estado"'
      
        '   WHERE ( relacion_afiliados.tip_documento_ben =:"tip_documento' +
        '_ben" ) AND  '
      
        '         ( relacion_afiliados.num_documento_ben =:"num_documento' +
        '_ben" )  AND'
      '         ( relacion_afiliados.cod_estado = '#39'S'#39')')
    Left = 632
    Top = 96
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'estado'
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
      end>
  end
  object qryupdateafiliados: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      '  UPDATE afiliados  '
      '     SET cod_estado =:"estado",'
      '             fec_ultima_nov=:"fec_ult_nov"'
      
        '   WHERE ( afiliados.tip_documento = :"tip_documento_ben" ) AND ' +
        ' '
      
        '                  ( afiliados.num_documento = :"num_documento_be' +
        'n" ) AND'
      '                  ( afiliados.cod_estado = '#39'S'#39')')
    Left = 632
    Top = 64
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'estado'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'fec_ult_nov'
        ParamType = ptUnknown
      end
      item
        DataType = ftFixedChar
        Name = 'tip_documento_ben'
        ParamType = ptUnknown
        Size = 4
      end
      item
        DataType = ftFixedChar
        Name = 'num_documento_ben'
        ParamType = ptUnknown
        Size = 19
      end>
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
      '')
    Left = 616
    Top = 136
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
