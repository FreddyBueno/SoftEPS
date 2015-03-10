object frmhistoria_afiliado: Tfrmhistoria_afiliado
  Left = -3
  Top = 99
  Width = 805
  Height = 472
  Caption = 'Historia del Afiliado'
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
  object Splitter1: TSplitter
    Left = 0
    Top = 0
    Width = 797
    Height = 1
    Cursor = crVSplit
    Align = alTop
  end
  object Splitter2: TSplitter
    Left = 0
    Top = 122
    Width = 797
    Height = 1
    Cursor = crVSplit
    Align = alTop
  end
  object Panel1: TPanel
    Left = 0
    Top = 1
    Width = 797
    Height = 121
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Label26: TLabel
      Left = 230
      Top = 32
      Width = 384
      Height = 23
      Caption = 'RELACION DE LOS AFILIADOS ACTIVOS'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
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
    object GroupBox16: TGroupBox
      Left = -4
      Top = 57
      Width = 779
      Height = 7
      TabOrder = 0
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
      TabOrder = 1
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
        Top = 20
        Width = 49
        Height = 21
        Color = clMoneyGreen
        Font.Charset = DEFAULT_CHARSET
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
        Left = 154
        Top = 20
        Width = 97
        Height = 21
        Color = clMoneyGreen
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnKeyPress = Edit2KeyPress
      end
      object BitBtn1: TBitBtn
        Left = 272
        Top = 16
        Width = 81
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
  object Panel4: TPanel
    Left = 0
    Top = 263
    Width = 797
    Height = 175
    Align = alClient
    TabOrder = 1
    object DBGrid2: TDBGrid
      Left = 1
      Top = 1
      Width = 795
      Height = 173
      Align = alClient
      Color = clMoneyGreen
      DataSource = dsafiliados
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
          FieldName = 'tip_documento'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'num_documento'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nov_codigo'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nov_nombre'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'fec_novedad_afil'
          Width = 120
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dat_campo_ant'
          Width = 300
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dat_campo_des'
          Width = 300
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'fec_evento'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'fec_aplicativo'
          Visible = True
        end
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
          FieldName = 'num_planilla'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'usu_tipo_doc'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'usu_numero_doc'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cod_oficina'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cod_regional'
          Visible = True
        end>
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 123
    Width = 797
    Height = 140
    Align = alTop
    BevelOuter = bvNone
    Caption = 'Panel3'
    TabOrder = 2
    object DBGrid1: TDBGrid
      Left = 0
      Top = 0
      Width = 797
      Height = 140
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
  object qryafiliados: TQuery
    AutoRefresh = True
    DatabaseName = 'softeps'
    SQL.Strings = (
      ' SELECT novedades.nov_codigo,   '
      '         novedades.nov_nombre,   '
      '         novedades_afiliados.tip_documento,'
      '         novedades_afiliados.num_documento,'
      '         novedades_afiliados.fec_novedad_afil,   '
      '         novedades_afiliados.dat_campo_ant,   '
      '         novedades_afiliados.dat_campo_des,   '
      '         novedades_afiliados.fec_evento,   '
      '         novedades_afiliados.fec_aplicativo,   '
      '         novedades_afiliados.tip_documento_emp,   '
      '         novedades_afiliados.num_documento_emp,   '
      '         novedades_afiliados.cod_sucursal,   '
      '         novedades_afiliados.num_planilla,   '
      '         novedades_afiliados.usu_tipo_doc,   '
      '         novedades_afiliados.usu_numero_doc,   '
      '         novedades_afiliados.cod_oficina,   '
      '         novedades_afiliados.cod_regional  '
      '    FROM novedades,   '
      '         novedades_afiliados  '
      
        '  WHERE ( novedades_afiliados.nov_codigo = novedades.nov_codigo ' +
        ') and  '
      
        '                 ( novedades_afiliados.tip_documento = :"tipo" )' +
        ' AND  '
      
        '                 (novedades_afiliados.num_documento = :"numero" ' +
        ')   '
      'ORDER BY novedades_afiliados.fec_novedad_afil DESC ')
    Left = 433
    Top = 51
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'tipo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'numero'
        ParamType = ptUnknown
      end>
    object qryafiliadostip_documento: TStringField
      DisplayLabel = 'Tipo Doc'
      FieldName = 'tip_documento'
      Origin = 'DBUNIMEC.novedades_afiliados.tip_documento'
      FixedChar = True
      Size = 3
    end
    object qryafiliadosnum_documento: TStringField
      DisplayLabel = 'Num Doc'
      FieldName = 'num_documento'
      Origin = 'DBUNIMEC.novedades_afiliados.num_documento'
      FixedChar = True
      Size = 18
    end
    object qryafiliadosnov_codigo: TStringField
      DisplayLabel = 'Codigo'
      FieldName = 'nov_codigo'
      Origin = 'DBUNIMEC.novedades.nov_codigo'
      FixedChar = True
      Size = 3
    end
    object qryafiliadosnov_nombre: TStringField
      DisplayLabel = 'Nombre de la Novedad'
      FieldName = 'nov_nombre'
      Origin = 'DBUNIMEC.novedades.nov_nombre'
      FixedChar = True
      Size = 50
    end
    object qryafiliadosfec_novedad_afil: TDateTimeField
      DisplayLabel = 'Fecha Novedad'
      FieldName = 'fec_novedad_afil'
      Origin = 'DBUNIMEC.novedades_afiliados.fec_novedad_afil'
    end
    object qryafiliadosdat_campo_ant: TStringField
      DisplayLabel = 'Dato Antes'
      FieldName = 'dat_campo_ant'
      Origin = 'DBUNIMEC.novedades_afiliados.dat_campo_ant'
      FixedChar = True
      Size = 255
    end
    object qryafiliadosdat_campo_des: TStringField
      DisplayLabel = 'Dato Despues'
      FieldName = 'dat_campo_des'
      Origin = 'DBUNIMEC.novedades_afiliados.dat_campo_des'
      FixedChar = True
      Size = 255
    end
    object qryafiliadosfec_evento: TDateTimeField
      DisplayLabel = 'Fecha de Evento'
      FieldName = 'fec_evento'
      Origin = 'DBUNIMEC.novedades_afiliados.fec_evento'
    end
    object qryafiliadosfec_aplicativo: TDateTimeField
      DisplayLabel = 'Fecha del Aplicativo'
      FieldName = 'fec_aplicativo'
      Origin = 'DBUNIMEC.novedades_afiliados.fec_aplicativo'
    end
    object qryafiliadostip_documento_emp: TStringField
      DisplayLabel = 'Tipo Doc Emp'
      FieldName = 'tip_documento_emp'
      Origin = 'DBUNIMEC.novedades_afiliados.tip_documento_emp'
      FixedChar = True
      Size = 3
    end
    object qryafiliadosnum_documento_emp: TStringField
      DisplayLabel = 'Num Doc Emp'
      FieldName = 'num_documento_emp'
      Origin = 'DBUNIMEC.novedades_afiliados.num_documento_emp'
      FixedChar = True
      Size = 18
    end
    object qryafiliadoscod_sucursal: TStringField
      DisplayLabel = 'Codigo Sucursal'
      FieldName = 'cod_sucursal'
      Origin = 'DBUNIMEC.novedades_afiliados.cod_sucursal'
      FixedChar = True
      Size = 2
    end
    object qryafiliadosnum_planilla: TStringField
      DisplayLabel = 'Planilla'
      FieldName = 'num_planilla'
      Origin = 'DBUNIMEC.novedades_afiliados.num_planilla'
      FixedChar = True
      Size = 15
    end
    object qryafiliadosusu_tipo_doc: TStringField
      DisplayLabel = 'Tipo Doc Usuario'
      FieldName = 'usu_tipo_doc'
      Origin = 'DBUNIMEC.novedades_afiliados.usu_tipo_doc'
      FixedChar = True
      Size = 3
    end
    object qryafiliadosusu_numero_doc: TStringField
      DisplayLabel = 'Num Doc Usuario'
      FieldName = 'usu_numero_doc'
      Origin = 'DBUNIMEC.novedades_afiliados.usu_numero_doc'
      FixedChar = True
      Size = 18
    end
    object qryafiliadoscod_oficina: TStringField
      DisplayLabel = 'Oficina'
      FieldName = 'cod_oficina'
      Origin = 'DBUNIMEC.novedades_afiliados.cod_oficina'
      FixedChar = True
      Size = 3
    end
    object qryafiliadoscod_regional: TStringField
      DisplayLabel = 'Regional'
      FieldName = 'cod_regional'
      Origin = 'DBUNIMEC.novedades_afiliados.cod_regional'
      FixedChar = True
      Size = 3
    end
  end
  object dsafiliados: TDataSource
    DataSet = qryafiliados
    Left = 461
    Top = 51
  end
  object qryrelacion_afiliados: TQuery
    AutoRefresh = True
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
      '  SYSDATE,'
      '  dbo.afiliados.cod_estado '
      'From dbo.relacion_afiliados,dbo.afiliados'
      'Where'
      
        '          afiliados.tip_documento=relacion_afiliados.tip_documen' +
        'to_ben AND'
      
        '          afiliados.num_documento=relacion_afiliados.num_documen' +
        'to_ben and'
      '          relacion_afiliados.cod_estado='#39'A'#39' and'
      
        '          relacion_afiliados.tip_documento_cot=:"tip_documento_c' +
        'ot" and'
      
        '          relacion_afiliados.num_documento_cot=:"num_documento_c' +
        'ot"'
      ''
      'order by afiliados.cod_tipo_afil desc'
      ''
      ''
      '')
    Left = 489
    Top = 51
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'tip_documento_cot'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'num_documento_cot'
        ParamType = ptUnknown
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
  end
  object dsrelacion_afiliados: TDataSource
    DataSet = qryrelacion_afiliados
    Left = 517
    Top = 51
  end
  object dstipos_documentos: TDataSource
    DataSet = dmafiliaciones.tbltipos_documentos
    Left = 736
    Top = 72
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
      '                relacion_afiliados.cod_estado = '#39'A'#39)
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
  object dscotiza: TDataSource
    DataSet = qrycotiza
    Left = 520
    Top = 16
  end
end
