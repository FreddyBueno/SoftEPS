object frmconajustes: Tfrmconajustes
  Left = 131
  Top = 107
  Width = 598
  Height = 376
  Caption = 'Consulta de Ajustes Por Numero de Declaracion'
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
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 590
    Height = 65
    Align = alTop
    TabOrder = 0
    object Panel4: TPanel
      Left = 1
      Top = 1
      Width = 588
      Height = 63
      Align = alClient
      TabOrder = 0
      object Label3: TLabel
        Left = 116
        Top = 32
        Width = 322
        Height = 16
        Caption = 'Consulta de Ajustes Realizados a Una Declaracion'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 507
        Top = 12
        Width = 53
        Height = 16
        Caption = 'SOFTEPS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
      end
      object GroupBox2: TGroupBox
        Left = 76
        Top = 48
        Width = 421
        Height = 7
        TabOrder = 0
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 65
    Width = 590
    Height = 284
    Align = alClient
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 1
      Top = 45
      Width = 588
      Height = 238
      Align = alClient
      DataSource = DataSource1
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'num_declaracion'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'item'
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'valor_anterior'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nuevo_valor'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'fec_aplicativo'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'usuario'
          Visible = True
        end>
    end
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 588
      Height = 44
      Align = alTop
      TabOrder = 1
      object Label1: TLabel
        Left = 88
        Top = 17
        Width = 142
        Height = 13
        Caption = 'Numero de Declaracion :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Button1: TButton
        Left = 332
        Top = 7
        Width = 75
        Height = 25
        Caption = '&Consultar'
        Default = True
        TabOrder = 0
        OnClick = Button1Click
      end
      object Edit1: TEdit
        Left = 238
        Top = 11
        Width = 85
        Height = 21
        Color = clMoneyGreen
        TabOrder = 1
      end
    end
  end
  object DataSource1: TDataSource
    Left = 3
    Top = 54
  end
end
