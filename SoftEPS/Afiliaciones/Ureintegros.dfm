object frmreintegros: Tfrmreintegros
  Left = 1
  Top = 98
  Width = 796
  Height = 472
  Caption = 'frmreintegros'
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
  object Panel2: TPanel
    Left = 0
    Top = 181
    Width = 788
    Height = 257
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 4
    TabOrder = 0
    object PageControl1: TPageControl
      Left = 4
      Top = 176
      Width = 780
      Height = 77
      ActivePage = TabSheet1
      Align = alClient
      MultiLine = True
      TabOrder = 0
      TabPosition = tpRight
      object TabSheet1: TTabSheet
        Caption = 'Afiliados'
        object DBGrid1: TDBGrid
          Left = 0
          Top = 0
          Width = 734
          Height = 69
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
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clNavy
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = [fsBold]
          Columns = <
            item
              Expanded = False
              FieldName = 'cod_tipo_afil'
              Width = 27
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'cod_parentesco'
              Width = 59
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'tip_documento_ben'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'num_documento_ben'
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'nom_afiliado'
              Width = 284
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'cod_sexo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'fec_nacimiento'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'nom_estado'
              Visible = True
            end>
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Empresas'
        ImageIndex = 1
        object DBGrid2: TDBGrid
          Left = 0
          Top = 0
          Width = 734
          Height = 76
          Align = alClient
          Color = clMoneyGreen
          DataSource = dsafiliados_empresas
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          ParentFont = False
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clNavy
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = [fsBold]
          Columns = <
            item
              Expanded = False
              FieldName = 'tip_documento_emp'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'num_documento_emp'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'cod_sucursal'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'nom_empresa'
              Width = 243
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'fec_ingreso_uni'
              Width = 89
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'fec_egreso_uni'
              Width = 88
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'val_sueldo_afil'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'nom_estado'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'cod_estado'
              Visible = True
            end>
        end
      end
    end
    object Panel4: TPanel
      Left = 4
      Top = 4
      Width = 780
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
  end
  object Panel5: TPanel
    Left = 0
    Top = 113
    Width = 788
    Height = 68
    Align = alTop
    BevelOuter = bvNone
    BorderWidth = 4
    TabOrder = 1
    object GroupBox2: TGroupBox
      Left = 6
      Top = 1
      Width = 762
      Height = 63
      Caption = 'Datos Adicionales'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object Label13: TLabel
        Left = 431
        Top = 16
        Width = 109
        Height = 13
        Caption = 'Fecha de Reintegro'
        Visible = False
      end
      object Label14: TLabel
        Left = 517
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
        Left = 432
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
        TabOrder = 0
        Text = '  /  /    '
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
        TabOrder = 1
        Visible = False
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 788
    Height = 113
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 2
    object Label26: TLabel
      Left = 130
      Top = 34
      Width = 645
      Height = 23
      Caption = 'REINTEGROS DE AFILIADOS O LEVENTAMIENTO DE EXCLUSIONES'
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
    object DBNavigator1: TDBNavigator
      Left = 312
      Top = 12
      Width = 240
      Height = 25
      DataSource = dsafiliados
      Flat = True
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 3
      Visible = False
    end
    object btnreintegros_ben: TButton
      Left = 689
      Top = 76
      Width = 70
      Height = 25
      Caption = '&Reintegros'
      TabOrder = 2
      OnClick = btnreintegros_benClick
    end
    object btnreingreso_cot: TButton
      Left = 689
      Top = 76
      Width = 70
      Height = 25
      Caption = '&Reintegro'
      TabOrder = 1
      OnClick = btnreingreso_cotClick
    end
    object GroupBox16: TGroupBox
      Left = 8
      Top = 57
      Width = 779
      Height = 7
      TabOrder = 4
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
      object dbltipos: TDBLookupComboBox
        Left = 39
        Top = 18
        Width = 49
        Height = 21
        Hint = 'Selecione el tipo de Documento'
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
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnExit = dbltiposExit
      end
      object Edit2: TEdit
        Left = 157
        Top = 19
        Width = 97
        Height = 21
        Hint = 'Digite el numero de docuemnto'
        Color = clMoneyGreen
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
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
  end
  object qryafiliados: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      'Select'
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
      'From afiliados'
      'Where'
      '  afiliados.cod_estado='#39'A'#39' AND'
      '  afiliados.tip_documento =:"tip_doc"  and'#9
      '  afiliados.num_documento =:"num_doc" ')
    Left = 433
    Top = 51
    ParamData = <
      item
        DataType = ftString
        Name = 'tip_doc'
        ParamType = ptUnknown
        Value = 'CC'
      end
      item
        DataType = ftString
        Name = 'num_doc'
        ParamType = ptUnknown
        Value = '40402044'
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
    OnCalcFields = qryrelacion_afiliadosCalcFields
    DatabaseName = 'softeps'
    DataSource = dscotiza
    SQL.Strings = (
      'Select'
      '  dbo.relacion_afiliados.tip_documento_ben,'
      '  dbo.relacion_afiliados.num_documento_ben,'
      '  dbo.relacion_afiliados.tip_documento_cot,'
      '  dbo.relacion_afiliados.num_documento_cot,'
      '  dbo.afiliados.pri_apellido,'
      '  dbo.afiliados.seg_apellido,'
      '  dbo.afiliados.pri_nombre,'
      '  dbo.afiliados.seg_nombre,'
      '  dbo.afiliados.cod_sexo,'
      '  dbo.afiliados.fec_nacimiento,'
      '  dbo.relacion_afiliados.cod_parentesco,'
      '  dbo.afiliados.cod_tipo_afil,'
      '  dbo.afiliados.fec_afiliacion_uni,'
      '  dbo.afiliados.cod_departamento_res,'
      '  dbo.afiliados.cod_ciudad_res,'
      '  dbo.afiliados.cod_discapacidad,  '
      '  sysdate,'
      '  dbo.afiliados.cod_estado,'
      '  dbo.afiliados.sem_cotizacion,'
      '  dbo.relacion_afiliados.fec_exclusion_nov  '
      'From dbo.relacion_afiliados,dbo.afiliados '
      'Where'
      
        '          afiliados.tip_documento=relacion_afiliados.tip_documen' +
        'to_ben AND'
      
        '          afiliados.num_documento=relacion_afiliados.num_documen' +
        'to_ben and'
      '          afiliados.cod_tipo_afil <> '#39'C'#39' and'
      '           afiliados.cod_estado = '#39'I'#39' and'
      
        '          relacion_afiliados.tip_documento_cot=:"tip_documento_c' +
        'ot" and'
      
        '          relacion_afiliados.num_documento_cot=:"num_documento_c' +
        'ot" and'
      '          relacion_afiliados.cod_estado = '#39'I'#39
      ''
      'order by afiliados.cod_tipo_afil desc'
      '')
    Left = 492
    Top = 53
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'tip_documento_cot'
        ParamType = ptUnknown
        Size = 4
      end
      item
        DataType = ftFixedChar
        Name = 'num_documento_cot'
        ParamType = ptUnknown
        Size = 19
      end>
    object qryrelacion_afiliadosnom_parentesco: TStringField
      FieldKind = fkLookup
      FieldName = 'nom_parentesco'
      LookupDataSet = dmafiliaciones.tblparentescos
      LookupKeyFields = 'cod_parentesco'
      LookupResultField = 'nom_parentesco'
      KeyFields = 'cod_parentesco'
      Size = 50
      Lookup = True
    end
    object qryrelacion_afiliadosnom_sexo: TStringField
      FieldKind = fkLookup
      FieldName = 'nom_sexo'
      LookupDataSet = dmafiliaciones.tblsexo
      LookupKeyFields = 'cod_sexo'
      LookupResultField = 'nom_sexo'
      KeyFields = 'cod_sexo'
      Size = 50
      Lookup = True
    end
    object qryrelacion_afiliadosnom_tipo: TStringField
      FieldKind = fkLookup
      FieldName = 'nom_tipo'
      LookupDataSet = dmafiliaciones.tbltiposafiliados
      LookupKeyFields = 'cod_tipo_afil'
      LookupResultField = 'nom_tipo_afil'
      KeyFields = 'cod_tipo_afil'
      Size = 50
      Lookup = True
    end
    object qryrelacion_afiliadosnom_estado: TStringField
      DisplayLabel = 'Estado'
      FieldKind = fkLookup
      FieldName = 'nom_estado'
      LookupDataSet = dmafiliaciones.tblestados
      LookupKeyFields = 'cod_estado'
      LookupResultField = 'nom_estado'
      KeyFields = 'cod_estado'
      Size = 50
      Lookup = True
    end
    object qryrelacion_afiliadoscod_tipo_afil: TStringField
      DisplayLabel = 'Tipo'
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
    object qryrelacion_afiliadospri_apellido: TStringField
      DisplayLabel = 'Primer Apellido'
      FieldName = 'pri_apellido'
      Origin = 'DBUNIMEC.afiliados.pri_apellido'
      FixedChar = True
      Size = 25
    end
    object qryrelacion_afiliadosseg_apellido: TStringField
      DisplayLabel = 'Segundo Apellido'
      FieldName = 'seg_apellido'
      Origin = 'DBUNIMEC.afiliados.seg_apellido'
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
    object qryrelacion_afiliadosnom_afiliado: TStringField
      DisplayLabel = 'Nombre'
      FieldKind = fkCalculated
      FieldName = 'nom_afiliado'
      Size = 255
      Calculated = True
    end
    object qryrelacion_afiliadosfec_afiliacion_uni: TDateTimeField
      FieldName = 'fec_afiliacion_uni'
      Origin = 'DBUNIMEC.afiliados.fec_afiliacion_uni'
    end
    object qryrelacion_afiliadoscod_departamento_res: TStringField
      FieldName = 'cod_departamento_res'
      Origin = 'DBUNIMEC.afiliados.cod_departamento_res'
      FixedChar = True
      Size = 2
    end
    object qryrelacion_afiliadoscod_ciudad_res: TStringField
      FieldName = 'cod_ciudad_res'
      Origin = 'DBUNIMEC.afiliados.cod_ciudad_res'
      FixedChar = True
      Size = 3
    end
    object qryrelacion_afiliadosnom_depto: TStringField
      FieldKind = fkLookup
      FieldName = 'nom_depto'
      LookupDataSet = dmafiliaciones.tbldepartamentos
      LookupKeyFields = 'cod_departamento'
      LookupResultField = 'nom_departamento'
      KeyFields = 'cod_departamento_res'
      Size = 50
      Lookup = True
    end
    object qryrelacion_afiliadosnom_ciudad: TStringField
      FieldKind = fkLookup
      FieldName = 'nom_ciudad'
      LookupDataSet = dmafiliaciones.tblciudades
      LookupKeyFields = 'cod_departamento;cod_ciudad'
      LookupResultField = 'nom_ciudad'
      KeyFields = 'cod_departamento_res;cod_ciudad_res'
      Size = 50
      Lookup = True
    end
    object qryrelacion_afiliadostip_documento_cot: TStringField
      FieldName = 'tip_documento_cot'
      Origin = 'DBUNIMEC.relacion_afiliados.tip_documento_cot'
      FixedChar = True
      Size = 3
    end
    object qryrelacion_afiliadosnum_documento_cot: TStringField
      FieldName = 'num_documento_cot'
      Origin = 'DBUNIMEC.relacion_afiliados.num_documento_cot'
      FixedChar = True
      Size = 18
    end
    object qryrelacion_afiliadosnom_deptociudad: TStringField
      FieldKind = fkCalculated
      FieldName = 'nom_deptociudad'
      Size = 255
      Calculated = True
    end
    object qryrelacion_afiliadoscod_discapacidad: TStringField
      FieldName = 'cod_discapacidad'
      FixedChar = True
      Size = 1
    end
    object qryrelacion_afiliadoscod_estrato: TStringField
      FieldKind = fkCalculated
      FieldName = 'cod_estrato'
      Size = 1
      Calculated = True
    end
    object qryrelacion_afiliadosdoc_ben: TStringField
      FieldKind = fkCalculated
      FieldName = 'doc_ben'
      Size = 30
      Calculated = True
    end
    object qryrelacion_afiliadosdoc_cot: TStringField
      FieldKind = fkCalculated
      FieldName = 'doc_cot'
      Size = 30
      Calculated = True
    end
    object qryrelacion_afiliadoscod_estado: TStringField
      FieldName = 'cod_estado'
      FixedChar = True
      Size = 2
    end
    object qryrelacion_afiliadosSEM_COTIZACION: TFloatField
      FieldName = 'SEM_COTIZACION'
    end
    object qryrelacion_afiliadosSYSDATE: TDateTimeField
      FieldName = 'SYSDATE'
    end
    object qryrelacion_afiliadosfec_exclusion_nov: TDateTimeField
      FieldName = 'fec_exclusion_nov'
    end
  end
  object dsrelacion_afiliados: TDataSource
    DataSet = qryrelacion_afiliados
    Left = 517
    Top = 51
  end
  object dscotiza: TDataSource
    DataSet = qrycotiza
    Left = 520
    Top = 16
  end
  object qrycotiza: TQuery
    DatabaseName = 'softeps'
    DataSource = dsafiliados
    SQL.Strings = (
      'SELECT tip_documento_cot,'
      '               num_documento_cot'
      'FROM relacion_afiliados'
      
        'WHERE  relacion_afiliados.tip_documento_ben = :"tip_documento"  ' +
        'and'
      
        '                relacion_afiliados.num_documento_ben = :"num_doc' +
        'umento" and'
      '                relacion_afiliados.cod_estado = '#39'A'#39
      '')
    Left = 488
    Top = 16
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
    object qrycotizatip_documento_cot: TStringField
      FieldName = 'tip_documento_cot'
      FixedChar = True
      Size = 3
    end
    object qrycotizanum_documento_cot: TStringField
      FieldName = 'num_documento_cot'
      FixedChar = True
      Size = 18
    end
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
  object qryfecha_ultima_exclusion: TQuery
    DatabaseName = 'softeps'
    DataSource = dsafiliados
    SQL.Strings = (
      '  SELECT *'
      '    FROM relacion_afiliados  '
      
        '   WHERE ( relacion_afiliados.tip_documento_cot = :"tip_document' +
        'o"  ) AND  '
      
        '         ( relacion_afiliados.num_documento_cot = :"num_document' +
        'o" ) AND  '
      
        '         ( relacion_afiliados.tip_documento_ben = :"tip_document' +
        'o"  ) AND  '
      
        '         ( relacion_afiliados.num_documento_ben = :"num_document' +
        'o" ) AND  '
      #9#9#9'( relacion_afiliados.fec_exclusion_nov is not null ) and'
      
        '         ( relacion_afiliados.fec_inclusion_nov = (  SELECT MAX(' +
        'relacion_afiliados.fec_inclusion_nov)  '
      
        '                                                       FROM rela' +
        'cion_afiliados  '
      
        '                                                      WHERE ( re' +
        'lacion_afiliados.tip_documento_cot = :"tip_documento"  ) AND  '
      
        '                                                            ( re' +
        'lacion_afiliados.num_documento_cot = :"num_documento" ) AND  '
      
        '                                                            ( re' +
        'lacion_afiliados.tip_documento_ben = :"tip_documento"  ) AND  '
      
        '                                                            ( re' +
        'lacion_afiliados.num_documento_ben = :"num_documento" )  ))')
    Left = 680
    Top = 184
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'tip_documento'
        ParamType = ptUnknown
        Size = 4
      end
      item
        DataType = ftString
        Name = 'num_documento'
        ParamType = ptUnknown
        Size = 19
      end
      item
        DataType = ftFixedChar
        Name = 'tip_documento'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'num_documento'
        ParamType = ptUnknown
      end
      item
        DataType = ftFixedChar
        Name = 'tip_documento'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'num_documento'
        ParamType = ptUnknown
      end
      item
        DataType = ftFixedChar
        Name = 'tip_documento'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'num_documento'
        ParamType = ptUnknown
      end>
    object qryfecha_ultima_exclusionfec_exclusion_nov: TDateTimeField
      FieldName = 'fec_exclusion_nov'
    end
    object qryfecha_ultima_exclusiontip_documento_ben: TStringField
      FieldName = 'tip_documento_ben'
      FixedChar = True
      Size = 3
    end
    object qryfecha_ultima_exclusionnum_documento_ben: TStringField
      FieldName = 'num_documento_ben'
      FixedChar = True
      Size = 18
    end
    object qryfecha_ultima_exclusioncod_estado: TStringField
      FieldName = 'cod_estado'
      FixedChar = True
      Size = 2
    end
    object qryfecha_ultima_exclusionfec_inclusion_nov: TDateTimeField
      FieldName = 'fec_inclusion_nov'
    end
  end
  object Query1: TQuery
    DatabaseName = 'softeps'
    Left = 680
    Top = 120
  end
  object Qryafiliados_empresas: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      'Select *'
      ' FROM afiliados_empresas,empresas '
      
        'WHERE ( afiliados_empresas.tip_documento_afi = :"tip_documento_b' +
        'en" ) AND '
      
        '               ( afiliados_empresas.num_documento_afi = :"num_do' +
        'cumento_ben" ) AND '
      
        '               ( afiliados_empresas.fec_egreso_uni = :"fec_ingre' +
        'so_uni") and'
      
        '               (afiliados_empresas.tip_documento_emp = empresas.' +
        'tip_documento) and'
      
        '               (afiliados_empresas.num_documento_emp = empresas.' +
        'num_documento) and'
      
        '               (afiliados_empresas.cod_sucursal = empresas.cod_s' +
        'ucursal)')
    Left = 712
    Top = 120
    ParamData = <
      item
        DataType = ftString
        Name = 'tip_documento_ben'
        ParamType = ptUnknown
        Value = 'i'
      end
      item
        DataType = ftString
        Name = 'num_documento_ben'
        ParamType = ptUnknown
        Value = 'i'
      end
      item
        DataType = ftString
        Name = 'fec_ingreso_uni'
        ParamType = ptUnknown
        Value = '2001/01/01'
      end>
    object Qryafiliados_empresastip_documento_emp: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'tip_documento_emp'
      Origin = 'DBUNIMEC.afiliados_empresas.tip_documento_emp'
      FixedChar = True
      Size = 3
    end
    object Qryafiliados_empresasnum_documento_emp: TStringField
      DisplayLabel = 'Numero'
      FieldName = 'num_documento_emp'
      Origin = 'DBUNIMEC.afiliados_empresas.num_documento_emp'
      FixedChar = True
      Size = 18
    end
    object Qryafiliados_empresascod_sucursal: TStringField
      DisplayLabel = 'Suc'
      FieldName = 'cod_sucursal'
      Origin = 'DBUNIMEC.afiliados_empresas.cod_sucursal'
      FixedChar = True
      Size = 2
    end
    object Qryafiliados_empresasnom_empresa: TStringField
      DisplayLabel = 'Nombre de la Empresa'
      FieldName = 'nom_empresa'
      Origin = 'DBUNIMEC.afiliados_empresas.cod_zona'
      FixedChar = True
      Size = 100
    end
    object Qryafiliados_empresasfec_ingreso_uni: TDateTimeField
      DisplayLabel = 'Fecha de Ingreso'
      FieldName = 'fec_ingreso_uni'
      Origin = 'DBUNIMEC.afiliados_empresas.fec_ingreso_uni'
    end
    object Qryafiliados_empresasfec_egreso_uni: TDateTimeField
      DisplayLabel = 'Fecha de Egreso'
      FieldName = 'fec_egreso_uni'
      Origin = 'DBUNIMEC.afiliados_empresas.fec_egreso_uni'
    end
    object Qryafiliados_empresasval_sueldo_afil: TFloatField
      DisplayLabel = 'Salario Base'
      FieldName = 'val_sueldo_afil'
      Origin = 'DBUNIMEC.afiliados_empresas.val_sueldo_afil'
      currency = True
    end
    object Qryafiliados_empresasnom_estado: TStringField
      DisplayLabel = 'Estado'
      FieldKind = fkLookup
      FieldName = 'nom_estado'
      LookupDataSet = dmafiliaciones.tblestados
      LookupKeyFields = 'cod_estado'
      LookupResultField = 'nom_estado'
      KeyFields = 'cod_estado'
      Size = 50
      Lookup = True
    end
    object Qryafiliados_empresascod_estado: TStringField
      DisplayLabel = 'Estado'
      FieldName = 'cod_estado'
      Origin = 'DBUNIMEC.afiliados_empresas.cod_estado'
      FixedChar = True
      Size = 2
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
      '                                   '#39'reintegro'#39',   '
      '                                   '#39#39', '
      '                                   '#39'afiliados'#39',   '
      '                                   '#39'reintegro'#39',   '
      '                                   :"fecha_novedad",   '
      '                                   :"fecha_sistema",'
      '                                   :"tip_doc_emp",'
      '                                   :"num_doc_emp",'
      '                                   :"cod_sucursal",'
      '                                   :"num_planilla",'
      '                                   nov_afiliados.nextval)'
      '')
    Left = 680
    Top = 154
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
  object dsafiliados_empresas: TDataSource
    DataSet = Qryafiliados_empresas
    Left = 712
    Top = 152
  end
end
