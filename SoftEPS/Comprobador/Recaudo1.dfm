object Form1: TForm1
  Left = 228
  Top = 35
  Width = 278
  Height = 450
  BorderStyle = bsSizeToolWin
  Caption = 'Datafono Comprobacion'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 46
    Top = 398
    Width = 175
    Height = 25
    Caption = 'Autorizar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnClick = Button1Click
    OnKeyPress = Button1KeyPress
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 269
    Height = 397
    TabOrder = 1
    object Label29: TLabel
      Left = 6
      Top = 4
      Width = 137
      Height = 13
      Caption = 'COMPROBADOR VER. 1.0.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 10
      Top = 358
      Width = 51
      Height = 13
      Caption = 'Servicio '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 10
      Top = 322
      Width = 111
      Height = 13
      Caption = 'Documento Afiliado'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Edit1: TEdit
      Left = 10
      Top = 336
      Width = 35
      Height = 21
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 48
      Top = 336
      Width = 133
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnExit = Edit2Exit
    end
    object Panel2: TPanel
      Left = 8
      Top = 24
      Width = 253
      Height = 215
      Caption = 'Panel2'
      TabOrder = 2
      object Memo1: TMemo
        Left = 1
        Top = 1
        Width = 251
        Height = 213
        Align = alClient
        BevelInner = bvSpace
        BevelKind = bkSoft
        BevelOuter = bvNone
        BorderStyle = bsNone
        Color = clMenuText
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindow
        Font.Height = -8
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Lines.Strings = (
          '')
        ParentFont = False
        ParentShowHint = False
        ScrollBars = ssHorizontal
        ShowHint = False
        TabOrder = 0
      end
    end
    object ComboBox1: TComboBox
      Left = 10
      Top = 372
      Width = 253
      Height = 21
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 3
      Text = 'GINECOLOGIA'
      Items.Strings = (
        'GINECOLOGIA'
        'PEDIATRIA'
        'MEDICINA INTERNA'
        'UROLOGIA'
        'MEDICINA GENERAL')
    end
    object Panel3: TPanel
      Left = 8
      Top = 242
      Width = 255
      Height = 79
      TabOrder = 4
      object Panel4: TPanel
        Left = 1
        Top = 1
        Width = 253
        Height = 12
        Align = alTop
        Caption = 'RESULTADO COMPROBACION'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -5
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object Edit3: TEdit
        Left = 6
        Top = 22
        Width = 71
        Height = 21
        TabOrder = 2
      end
      object Edit4: TEdit
        Left = 80
        Top = 22
        Width = 93
        Height = 21
        TabOrder = 3
      end
      object Memo2: TMemo
        Left = 1
        Top = 13
        Width = 253
        Height = 65
        Align = alClient
        Color = clWindowFrame
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindow
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
    end
  end
  object ADOConnection1: TADOConnection
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=villas;Persist Security Info=True;U' +
      'ser ID=sa;Initial Catalog=CALLCENTER;Data Source=192.168.13.2;Us' +
      'e Procedure for Prepare=1;Auto Translate=True;Packet Size=20480;' +
      'Workstation ID=GERENCIASIST;Use Encryption for Data=False;Tag wi' +
      'th column collation when possible=False'
    DefaultDatabase = 'Desarrollo'
    LoginPrompt = False
    Mode = cmWrite
    Provider = 'SQLOLEDB.1'
    Left = 178
    Top = 220
  end
  object ADOTable1: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Ingreso_Dineros_Recaudo'
    Left = 162
    Top = 176
    object ADOTable1Consecutivo: TBCDField
      FieldName = 'Consecutivo'
      Precision = 18
      Size = 0
    end
    object ADOTable1Fecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object ADOTable1Tipo_Transaccion: TStringField
      FieldName = 'Tipo_Transaccion'
      FixedChar = True
      Size = 2
    end
    object ADOTable1Valor: TBCDField
      FieldName = 'Valor'
      Precision = 19
    end
    object ADOTable1No_Planilla: TStringField
      FieldName = 'No_Planilla'
      FixedChar = True
      Size = 15
    end
    object ADOTable1Nit: TStringField
      FieldName = 'Nit'
      FixedChar = True
      Size = 15
    end
    object ADOTable1Nombre_Aportante: TStringField
      FieldName = 'Nombre_Aportante'
      FixedChar = True
      Size = 50
    end
    object ADOTable1Periodo: TStringField
      FieldName = 'Periodo'
      FixedChar = True
      Size = 6
    end
    object ADOTable1Usuario: TStringField
      FieldName = 'Usuario'
      FixedChar = True
      Size = 15
    end
    object ADOTable1Municipio: TStringField
      FieldName = 'Municipio'
      FixedChar = True
      Size = 5
    end
  end
  object ADOQuery1: TADOQuery
    Connection = ADOConnection1
    Parameters = <
      item
        Name = 'tipo'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 2
        Value = ''
      end
      item
        Name = 'numero'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 30
        Value = ''
      end>
    SQL.Strings = (
      'execute callcenter..sp_consultaafiliado :'#39'tipo'#39',:'#39'numero'#39)
    Left = 118
    Top = 182
    object ADOQuery1COLUMN1: TStringField
      FieldName = 'COLUMN1'
      ReadOnly = True
      Size = 3
    end
    object ADOQuery1COLUMN2: TStringField
      FieldName = 'COLUMN2'
      ReadOnly = True
      Size = 15
    end
    object ADOQuery1COLUMN3: TStringField
      FieldName = 'COLUMN3'
      ReadOnly = True
    end
    object ADOQuery1COLUMN4: TStringField
      FieldName = 'COLUMN4'
      ReadOnly = True
    end
    object ADOQuery1COLUMN5: TStringField
      FieldName = 'COLUMN5'
      ReadOnly = True
      Size = 15
    end
    object ADOQuery1COLUMN6: TStringField
      FieldName = 'COLUMN6'
      ReadOnly = True
      Size = 15
    end
    object ADOQuery1COLUMN7: TStringField
      FieldName = 'COLUMN7'
      ReadOnly = True
      Size = 1
    end
    object ADOQuery1COLUMN8: TStringField
      FieldName = 'COLUMN8'
      ReadOnly = True
      Size = 1
    end
    object ADOQuery1COLUMN9: TIntegerField
      FieldName = 'COLUMN9'
      ReadOnly = True
    end
    object ADOQuery1COLUMN10: TStringField
      FieldName = 'COLUMN10'
      ReadOnly = True
      Size = 1
    end
    object ADOQuery1COLUMN11: TStringField
      FieldName = 'COLUMN11'
      ReadOnly = True
      Size = 1
    end
    object ADOQuery1COLUMN12: TDateTimeField
      FieldName = 'COLUMN12'
      ReadOnly = True
    end
    object ADOQuery1COLUMN13: TIntegerField
      FieldName = 'COLUMN13'
      ReadOnly = True
    end
    object ADOQuery1COLUMN14: TStringField
      FieldName = 'COLUMN14'
      ReadOnly = True
      Size = 1
    end
    object ADOQuery1COLUMN15: TStringField
      FieldName = 'COLUMN15'
      ReadOnly = True
      Size = 2
    end
    object ADOQuery1COLUMN16: TStringField
      FieldName = 'COLUMN16'
      ReadOnly = True
      Size = 3
    end
    object ADOQuery1COLUMN17: TStringField
      FieldName = 'COLUMN17'
      ReadOnly = True
      Size = 1
    end
    object ADOQuery1COLUMN18: TStringField
      FieldName = 'COLUMN18'
      ReadOnly = True
      Size = 15
    end
    object ADOQuery1COLUMN19: TStringField
      FieldName = 'COLUMN19'
      ReadOnly = True
      Size = 15
    end
    object ADOQuery1COLUMN20: TStringField
      FieldName = 'COLUMN20'
      ReadOnly = True
      Size = 80
    end
    object ADOQuery1COLUMN21: TStringField
      FieldName = 'COLUMN21'
      ReadOnly = True
      Size = 15
    end
    object ADOQuery1COLUMN22: TStringField
      FieldName = 'COLUMN22'
      ReadOnly = True
      Size = 1
    end
    object ADOQuery1COLUMN23: TStringField
      FieldName = 'COLUMN23'
      ReadOnly = True
      Size = 1
    end
    object ADOQuery1COLUMN24: TIntegerField
      FieldName = 'COLUMN24'
      ReadOnly = True
    end
    object ADOQuery1COLUMN25: TIntegerField
      FieldName = 'COLUMN25'
      ReadOnly = True
    end
    object ADOQuery1COLUMN26: TDateTimeField
      FieldName = 'COLUMN26'
      ReadOnly = True
    end
    object ADOQuery1COLUMN27: TStringField
      FieldName = 'COLUMN27'
      ReadOnly = True
      Size = 15
    end
    object ADOQuery1COLUMN28: TStringField
      FieldName = 'COLUMN28'
      ReadOnly = True
      Size = 1
    end
    object ADOQuery1COLUMN29: TStringField
      FieldName = 'COLUMN29'
      ReadOnly = True
      Size = 100
    end
    object ADOQuery1COLUMN30: TStringField
      FieldName = 'COLUMN30'
      ReadOnly = True
      Size = 255
    end
    object ADOQuery1COLUMN31: TStringField
      FieldName = 'COLUMN31'
      ReadOnly = True
    end
    object ADOQuery1COLUMN32: TStringField
      FieldName = 'COLUMN32'
      ReadOnly = True
      Size = 80
    end
    object ADOQuery1COLUMN33: TDateTimeField
      FieldName = 'COLUMN33'
      ReadOnly = True
    end
    object ADOQuery1COLUMN34: TStringField
      FieldName = 'COLUMN34'
      ReadOnly = True
      Size = 255
    end
    object ADOQuery1COLUMN35: TIntegerField
      FieldName = 'COLUMN35'
      ReadOnly = True
    end
    object ADOQuery1COLUMN36: TStringField
      FieldName = 'COLUMN36'
      ReadOnly = True
      Size = 80
    end
    object ADOQuery1COLUMN37: TDateTimeField
      FieldName = 'COLUMN37'
      ReadOnly = True
    end
    object ADOQuery1COLUMN38: TStringField
      FieldName = 'COLUMN38'
      ReadOnly = True
      Size = 15
    end
  end
  object qryconsecutivos: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    SQL.Strings = (
      'select * from callcenter..tblconsecutivos')
    Left = 78
    Top = 180
    object qryconsecutivostip_radicacion: TStringField
      FieldName = 'tip_radicacion'
      Size = 3
    end
    object qryconsecutivoscon_radicacion: TStringField
      FieldName = 'con_radicacion'
      Size = 15
    end
    object qryconsecutivosdes_radicacion: TStringField
      FieldName = 'des_radicacion'
      Size = 60
    end
  end
  object qryregistrocomp: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    SQL.Strings = (
      'select * from callcenter..tblcomprobacionesIPS')
    Left = 46
    Top = 172
    object qryregistrocompcos_comprobacion: TStringField
      FieldName = 'cos_comprobacion'
      Size = 15
    end
    object qryregistrocomptip_ident_usuar: TStringField
      FieldName = 'tip_ident_usuar'
      Size = 3
    end
    object qryregistrocompnur_ident_usuar: TStringField
      FieldName = 'nur_ident_usuar'
      Size = 15
    end
    object qryregistrocompnom_afiliado: TStringField
      FieldName = 'nom_afiliado'
      Size = 35
    end
    object qryregistrocomptip_usuario: TStringField
      FieldName = 'tip_usuario'
      Size = 1
    end
    object qryregistrocomptip_afiliado: TStringField
      FieldName = 'tip_afiliado'
      Size = 1
    end
    object qryregistrocompuni_medida_edad: TStringField
      FieldName = 'uni_medida_edad'
      Size = 1
    end
    object qryregistrocompfec_nacimiento: TDateTimeField
      FieldName = 'fec_nacimiento'
    end
    object qryregistrocompval_edad: TStringField
      FieldName = 'val_edad'
      Size = 3
    end
    object qryregistrocompsexo: TStringField
      FieldName = 'sexo'
      Size = 1
    end
    object qryregistrocompdpt_res_habitual: TStringField
      FieldName = 'dpt_res_habitual'
      Size = 2
    end
    object qryregistrocompmun_res_habitual: TStringField
      FieldName = 'mun_res_habitual'
      Size = 3
    end
    object qryregistrocompdir_res_habitual: TStringField
      FieldName = 'dir_res_habitual'
      Size = 100
    end
    object qryregistrocompnum_carnet: TStringField
      FieldName = 'num_carnet'
      Size = 15
    end
    object qryregistrocompcod_empresa: TStringField
      FieldName = 'cod_empresa'
      Size = 15
    end
    object qryregistrocompnom_empresa: TStringField
      FieldName = 'nom_empresa'
      Size = 80
    end
    object qryregistrocompfec_afiliacion: TDateTimeField
      FieldName = 'fec_afiliacion'
    end
    object qryregistrocompcod_ips_capitado: TStringField
      FieldName = 'cod_ips_capitado'
      Size = 15
    end
    object qryregistrocompnom_ips_capitado: TStringField
      FieldName = 'nom_ips_capitado'
      Size = 80
    end
    object qryregistrocompcod_estrato: TStringField
      FieldName = 'cod_estrato'
      Size = 1
    end
    object qryregistrocompsem_cot_sistema: TBCDField
      FieldName = 'sem_cot_sistema'
      Precision = 18
      Size = 0
    end
    object qryregistrocompsem_cot_eps: TBCDField
      FieldName = 'sem_cot_eps'
      Precision = 18
      Size = 0
    end
    object qryregistrocompper_mora: TStringField
      FieldName = 'per_mora'
      Size = 15
    end
    object qryregistrocompest_afilia: TStringField
      FieldName = 'est_afilia'
      Size = 1
    end
    object qryregistrocompdes_pagos: TStringField
      FieldName = 'des_pagos'
      Size = 2000
    end
    object qryregistrocompnom_ips_comprueba: TStringField
      FieldName = 'nom_ips_comprueba'
      Size = 80
    end
    object qryregistrocompdpt_ips_comprueba: TStringField
      FieldName = 'dpt_ips_comprueba'
      Size = 2
    end
    object qryregistrocompmun_ips_comprueba: TStringField
      FieldName = 'mun_ips_comprueba'
      Size = 3
    end
    object qryregistrocompnom_fun_comprueba: TStringField
      FieldName = 'nom_fun_comprueba'
      Size = 80
    end
    object qryregistrocompnum_fax_comprueba: TStringField
      FieldName = 'num_fax_comprueba'
      Size = 50
    end
    object qryregistrocompdes_observacion: TStringField
      FieldName = 'des_observacion'
      Size = 2000
    end
    object qryregistrocompfec_comprobacion: TDateTimeField
      FieldName = 'fec_comprobacion'
    end
    object qryregistrocomphora_comprobacion: TDateTimeField
      FieldName = 'hora_comprobacion'
    end
    object qryregistrocompcod_usuario_comp: TStringField
      FieldName = 'cod_usuario_comp'
      Size = 15
    end
    object qryregistrocomphoracomprobacion: TStringField
      FieldName = 'horacomprobacion'
      FixedChar = True
      Size = 15
    end
    object qryregistrocompservicio: TStringField
      FieldName = 'servicio'
      FixedChar = True
      Size = 25
    end
  end
  object qryclave: TADOQuery
    Connection = ADOConnection1
    Parameters = <
      item
        Name = 'cod'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end
      item
        Name = 'pw'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end>
    SQL.Strings = (
      'select nom_usuario from callcenter..tblusuariosIPS'
      'where cod_usuario = :cod'
      'and pwd_usuario = :pw')
    Left = 142
    Top = 88
    object qryclavenom_usuario: TStringField
      FieldName = 'nom_usuario'
      Size = 30
    end
  end
  object version: TADOQuery
    Connection = ADOConnection1
    Parameters = <
      item
        Name = 'ap'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 1
        Value = Null
      end
      item
        Name = 'pp'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 1
        Value = Null
      end>
    SQL.Strings = (
      'select * from callcenter..tblversiones'
      'where aplicativo = :ap'
      'and version = :pp')
    Left = 42
    Top = 106
    object versionaplicativo: TStringField
      FieldName = 'aplicativo'
      FixedChar = True
      Size = 1
    end
    object versionversion: TStringField
      FieldName = 'version'
      FixedChar = True
      Size = 1
    end
  end
end
