object Form1: TForm1
  Left = 192
  Top = 107
  Width = 563
  Height = 381
  Caption = 'Cartera'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 555
    Height = 354
    ActivePage = TabSheet1
    Align = alClient
    TabIndex = 0
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Cartera Por Empresa'
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 547
        Height = 67
        Align = alTop
        TabOrder = 0
        object Label1: TLabel
          Left = 6
          Top = 30
          Width = 51
          Height = 13
          Caption = 'Tp.Doc :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label2: TLabel
          Left = 102
          Top = 30
          Width = 79
          Height = 13
          Caption = 'Numero Doc :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Edit1: TEdit
          Left = 60
          Top = 24
          Width = 37
          Height = 19
          TabOrder = 0
        end
        object Edit2: TEdit
          Left = 180
          Top = 24
          Width = 121
          Height = 19
          TabOrder = 1
        end
        object Button1: TButton
          Left = 465
          Top = 33
          Width = 75
          Height = 25
          Caption = '&Consultar'
          TabOrder = 2
          OnClick = Button1Click
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 67
        Width = 547
        Height = 212
        Align = alClient
        TabOrder = 1
        object DBGrid1: TDBGrid
          Left = 1
          Top = 1
          Width = 545
          Height = 210
          Align = alClient
          DataSource = DataSource1
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
        end
      end
      object Panel3: TPanel
        Left = 0
        Top = 279
        Width = 547
        Height = 47
        Align = alBottom
        TabOrder = 2
        object Label3: TLabel
          Left = 9
          Top = 18
          Width = 97
          Height = 13
          Caption = 'Valor Estimado Mora'
        end
        object Label4: TLabel
          Left = 237
          Top = 18
          Width = 143
          Height = 13
          Caption = 'Valor Estimado Compensacion'
        end
        object Edit3: TEdit
          Left = 111
          Top = 9
          Width = 121
          Height = 21
          TabOrder = 0
        end
        object Edit4: TEdit
          Left = 387
          Top = 9
          Width = 121
          Height = 21
          TabOrder = 1
        end
      end
    end
  end
  object Database1: TDatabase
    AliasName = 'dbunimec'
    Connected = True
    DatabaseName = 'dbunimec'
    Params.Strings = (
      'USER NAME=f_camacho')
    SessionName = 'Default'
    Left = 522
    Top = 6
  end
  object Query1: TQuery
    DatabaseName = 'dbunimec'
    SQL.Strings = (
      
        'SELECT cartera.tip_documento, cartera.num_documento, afiliados.p' +
        'ri_nombre, afiliados.pri_apellido, empresas.nom_empresa, cartera' +
        '.per_compensacion, cartera.tipo_mora, cartera.valor_mora, carter' +
        'a.valor_upc,cartera.interes'
      'FROM cartera,afiliados,empresas'
      'WHERE (cartera.tip_documento = afiliados.tip_documento AND'
      
        '               cartera.num_documento = afiliados.num_documento) ' +
        'AND'
      
        '               (cartera.tip_documento_emp = empresas.tip_documen' +
        'to AND'
      
        '               cartera.num_documento_emp = empresas.num_document' +
        'o AND'
      
        '               cartera.cod_sucursal_emp = empresas.cod_sucursal)' +
        ' AND'
      '               cartera.tip_documento_emp = :tp_doc AND'
      '               cartera.num_documento_emp = :num_doc AND'
      '               cartera.cod_tipo_afil = "C"'
      ''
      '')
    Left = 489
    Top = 6
    ParamData = <
      item
        DataType = ftString
        Name = 'tp_doc'
        ParamType = ptInputOutput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'num_doc'
        ParamType = ptInputOutput
        Value = ''
      end>
    object Query1tip_documento: TStringField
      FieldName = 'tip_documento'
      Origin = 'DBUNIMEC.cartera.tip_documento'
      FixedChar = True
      Size = 3
    end
    object Query1num_documento: TStringField
      FieldName = 'num_documento'
      Origin = 'DBUNIMEC.cartera.num_documento'
      FixedChar = True
      Size = 18
    end
    object Query1pri_nombre: TStringField
      FieldName = 'pri_nombre'
      Origin = 'DBUNIMEC.afiliados.pri_nombre'
      FixedChar = True
      Size = 25
    end
    object Query1pri_apellido: TStringField
      FieldName = 'pri_apellido'
      Origin = 'DBUNIMEC.afiliados.pri_apellido'
      FixedChar = True
      Size = 25
    end
    object Query1nom_empresa: TStringField
      FieldName = 'nom_empresa'
      Origin = 'DBUNIMEC.empresas.nom_empresa'
      FixedChar = True
      Size = 100
    end
    object Query1per_compensacion: TStringField
      FieldName = 'per_compensacion'
      Origin = 'DBUNIMEC.cartera.per_compensacion'
      FixedChar = True
      Size = 7
    end
    object Query1tipo_mora: TStringField
      FieldName = 'tipo_mora'
      Origin = 'DBUNIMEC.cartera.tipo_mora'
      FixedChar = True
      Size = 1
    end
    object Query1valor_mora: TFloatField
      FieldName = 'valor_mora'
      Origin = 'DBUNIMEC.cartera.valor_mora'
    end
    object Query1valor_upc: TFloatField
      FieldName = 'valor_upc'
      Origin = 'DBUNIMEC.cartera.valor_upc'
    end
    object Query1interes: TFloatField
      FieldName = 'interes'
      Origin = 'DBUNIMEC.cartera.interes'
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 456
    Top = 6
  end
end
