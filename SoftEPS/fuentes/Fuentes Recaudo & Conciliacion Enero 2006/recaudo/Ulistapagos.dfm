object frmlistadopagos: Tfrmlistadopagos
  Left = 290
  Top = 211
  Width = 492
  Height = 416
  Caption = 'Listdo de Afiliados con upc Adicional'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 484
    Height = 43
    Align = alTop
    TabOrder = 0
    object DBNavigator1: TDBNavigator
      Left = 1
      Top = 1
      Width = 482
      Height = 41
      DataSource = DataModule1.dtsautoliquidacion
      Align = alClient
      TabOrder = 0
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 43
    Width = 484
    Height = 346
    Align = alClient
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 482
      Height = 344
      Align = alClient
      DataSource = dtsupc
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
    end
  end
  object qryupc: TQuery
    DatabaseName = 'datosmec'
    SQL.Strings = (
      'sselect '
      '  '
      '   tip_documento_cot,'
      '   num_documento_cot,'
      '   tip_documento_ben,'
      '   num_documento_ben,'
      '   fec_nacimiento,'
      '   cod_sexo,'
      '   pri_apellido,'
      #9'seg_apellido,'
      #9'pri_nombre,'
      #9'seg_nombre'
      'from afiliados,relacion_afiliados'
      'where cod_tipo_afil="A" and '
      #9#9'relacion_afiliados.cod_estado = "A" and'
      #9' '#9'tip_documento_ben =  tip_documento and'
      #9#9'num_documento_ben = num_documento and '
      '      afiliados.cod_estado = "A"')
    Left = 138
    Top = 10
    object qryupctip_documento_ben: TStringField
      FieldName = 'tip_documento_ben'
      Origin = 'DATOSMEC.relacion_afiliados.tip_documento_ben'
      FixedChar = True
      Size = 3
    end
    object qryupcnum_documento_ben: TStringField
      FieldName = 'num_documento_ben'
      Origin = 'DATOSMEC.relacion_afiliados.num_documento_ben'
      FixedChar = True
      Size = 18
    end
    object qryupccod_sexo: TStringField
      FieldName = 'cod_sexo'
      Origin = 'DATOSMEC.afiliados.cod_sexo'
      FixedChar = True
      Size = 1
    end
    object qryupctip_documento_cot: TStringField
      FieldName = 'tip_documento_cot'
      Origin = 'DATOSMEC.relacion_afiliados.tip_documento_cot'
      FixedChar = True
      Size = 3
    end
    object qryupcnum_documento_cot: TStringField
      FieldName = 'num_documento_cot'
      Origin = 'DATOSMEC.relacion_afiliados.num_documento_cot'
      FixedChar = True
      Size = 18
    end
    object qryupcfec_nacimiento: TDateTimeField
      FieldName = 'fec_nacimiento'
      Origin = 'DATOSMEC.afiliados.fec_nacimiento'
    end
    object qryupcpri_apellido: TStringField
      FieldName = 'pri_apellido'
      Origin = 'DATOSMEC.afiliados.pri_apellido'
      FixedChar = True
      Size = 25
    end
    object qryupcseg_apellido: TStringField
      FieldName = 'seg_apellido'
      Origin = 'DATOSMEC.afiliados.seg_apellido'
      FixedChar = True
      Size = 25
    end
    object qryupcpri_nombre: TStringField
      FieldName = 'pri_nombre'
      Origin = 'DATOSMEC.afiliados.pri_nombre'
      FixedChar = True
      Size = 25
    end
    object qryupcseg_nombre: TStringField
      FieldName = 'seg_nombre'
      Origin = 'DATOSMEC.afiliados.seg_nombre'
      FixedChar = True
      Size = 25
    end
  end
  object dtsupc: TDataSource
    DataSet = qryupc
    Left = 178
    Top = 12
  end
end
