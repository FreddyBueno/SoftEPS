object frmplanillasnrs: Tfrmplanillasnrs
  Left = 211
  Top = 174
  Width = 732
  Height = 480
  Caption = 'Planilla  en estado  NRS'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 212
    Width = 724
    Height = 241
    Align = alBottom
    TabOrder = 0
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 722
      Height = 239
      Align = alClient
      DataSource = DataModule1.dtsafiliaempresa
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'tip_documento_afi'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'num_documento_afi'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'val_sueldo_afil'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cod_estado'
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
        end>
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 724
    Height = 43
    Align = alTop
    TabOrder = 1
    object DBNavigator1: TDBNavigator
      Left = 1
      Top = 1
      Width = 722
      Height = 41
      DataSource = DataModule1.dtsdetalleauto
      Align = alClient
      TabOrder = 0
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 46
    Width = 724
    Height = 166
    Align = alBottom
    TabOrder = 2
    object DBGrid2: TDBGrid
      Left = 1
      Top = 1
      Width = 722
      Height = 164
      Align = alClient
      DataSource = DataModule1.dtsdetalleauto
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = DBGrid2DblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'num_planilla'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'afi_tipo_doc'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'afi_numero_doc'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ing_base_cot'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'val_total_cot'
          Visible = True
        end>
    end
  end
end
