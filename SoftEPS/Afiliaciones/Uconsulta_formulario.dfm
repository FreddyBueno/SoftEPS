object frmconsulta_formulario: Tfrmconsulta_formulario
  Left = 0
  Top = 98
  Width = 798
  Height = 473
  Caption = 'Consulta por Nombre'
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
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 0
    Top = 0
    Width = 790
    Height = 1
    Cursor = crVSplit
    Align = alTop
  end
  object Splitter2: TSplitter
    Left = 0
    Top = 138
    Width = 790
    Height = 1
    Cursor = crVSplit
    Align = alTop
  end
  object Panel1: TPanel
    Left = 0
    Top = 1
    Width = 790
    Height = 137
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Label26: TLabel
      Left = 214
      Top = 36
      Width = 436
      Height = 23
      Caption = 'CONSULTA DE AFILIADOS POR FORMULARIO'
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
      Left = 392
      Top = 108
      Width = 240
      Height = 25
      Flat = True
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
      Visible = False
    end
    object GroupBox16: TGroupBox
      Left = 8
      Top = 59
      Width = 779
      Height = 7
      TabOrder = 1
    end
    object gbdocumentos: TGroupBox
      Left = 8
      Top = 80
      Width = 377
      Height = 49
      Caption = 'Consulta'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      object Label1: TLabel
        Left = 8
        Top = 24
        Width = 127
        Height = 13
        Caption = 'Numero del Formulario'
      end
      object Edit2: TEdit
        Left = 148
        Top = 20
        Width = 117
        Height = 21
        Color = clMoneyGreen
        TabOrder = 0
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
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnClick = BitBtn1Click
      end
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 139
    Width = 790
    Height = 310
    Caption = 'Panel4'
    TabOrder = 1
  end
  object Panel3: TPanel
    Left = 0
    Top = 139
    Width = 790
    Height = 310
    Align = alClient
    BevelOuter = bvNone
    Caption = 'Panel3'
    TabOrder = 2
    object DBGrid2: TDBGrid
      Left = 0
      Top = 0
      Width = 790
      Height = 310
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
          FieldName = 'COD_TIPO_AFIL'
          Title.Caption = 'Tipo de Afiliado'
          Visible = True
        end
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
          FieldName = 'cod_sexo'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'pri_apellido'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'seg_apellido'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'pri_nombre'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'seg_nombre'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'fec_nacimiento'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cod_estado_civ'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cod_estrato'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'fec_afiliacion_sis'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'fec_afiliacion_uni'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cod_discapacidad'
          Visible = True
        end>
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
      '  afiliados.cod_discapacidad,'
      '  afiliados.COD_TIPO_AFIL'
      'From afiliados'
      'Where'
      '    afiliados.NUM_FORMATO_AFIL = :"formulario" ')
    Left = 433
    Top = 51
    ParamData = <
      item
        DataType = ftString
        Name = 'formulario'
        ParamType = ptUnknown
        Value = '3'
      end>
    object qryafiliadostip_documento: TStringField
      DisplayLabel = 'Tipo Doc'
      FieldName = 'tip_documento'
      ReadOnly = True
      FixedChar = True
      Size = 3
    end
    object qryafiliadosnum_documento: TStringField
      DisplayLabel = 'Num Doc'
      FieldName = 'num_documento'
      ReadOnly = True
      FixedChar = True
      Size = 18
    end
    object qryafiliadoscod_sexo: TStringField
      DisplayLabel = 'Sexo'
      FieldName = 'cod_sexo'
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object qryafiliadospri_apellido: TStringField
      DisplayLabel = 'Primer Apellido'
      FieldName = 'pri_apellido'
      ReadOnly = True
      FixedChar = True
      Size = 25
    end
    object qryafiliadosseg_apellido: TStringField
      DisplayLabel = 'Segundo Apellido'
      FieldName = 'seg_apellido'
      ReadOnly = True
      FixedChar = True
      Size = 25
    end
    object qryafiliadospri_nombre: TStringField
      DisplayLabel = 'Primer Nombre'
      FieldName = 'pri_nombre'
      ReadOnly = True
      FixedChar = True
      Size = 25
    end
    object qryafiliadosseg_nombre: TStringField
      DisplayLabel = 'Segundo Nombre'
      FieldName = 'seg_nombre'
      ReadOnly = True
      FixedChar = True
      Size = 25
    end
    object qryafiliadosfec_nacimiento: TDateTimeField
      DisplayLabel = 'Fecha de Nacimiento'
      FieldName = 'fec_nacimiento'
      ReadOnly = True
    end
    object qryafiliadoscod_estado_civ: TStringField
      DisplayLabel = 'Estado Civil'
      FieldName = 'cod_estado_civ'
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object qryafiliadoscod_estrato: TStringField
      DisplayLabel = 'Estrato'
      FieldName = 'cod_estrato'
      ReadOnly = True
      FixedChar = True
      Size = 3
    end
    object qryafiliadosfec_afiliacion_sis: TDateTimeField
      DisplayLabel = 'Fecha afil sistema'
      FieldName = 'fec_afiliacion_sis'
      ReadOnly = True
    end
    object qryafiliadosfec_afiliacion_uni: TDateTimeField
      DisplayLabel = 'Fecha Afiliaci'#243'n'
      FieldName = 'fec_afiliacion_uni'
      ReadOnly = True
    end
    object qryafiliadoscod_discapacidad: TStringField
      DisplayLabel = 'Discapacidad'
      FieldName = 'cod_discapacidad'
      Origin = 'DBUNIMEC.afiliados.cod_discapacidad'
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object qryafiliadosCOD_TIPO_AFIL: TStringField
      FieldName = 'COD_TIPO_AFIL'
      Origin = 'SOFTEPS.AFILIADOS.COD_TIPO_AFIL'
      Size = 1
    end
  end
  object dsafiliados: TDataSource
    DataSet = qryafiliados
    Left = 461
    Top = 51
  end
  object qryrelacion_afiliados: TQuery
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
      '  dbo.afiliados.cod_estado'
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
