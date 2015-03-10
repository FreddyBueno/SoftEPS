object frmcampos: Tfrmcampos
  Left = 283
  Top = 145
  Width = 562
  Height = 366
  BorderIcons = [biSystemMenu]
  Caption = 'Campos  de los Formatos'
  Color = clBtnFace
  DefaultMonitor = dmMainForm
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 554
    Height = 339
    Align = alClient
    TabOrder = 0
    object Label7: TLabel
      Left = 120
      Top = 32
      Width = 320
      Height = 24
      Caption = 'Campos  de los  Formatos Bancos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object GroupBox1: TGroupBox
      Left = 16
      Top = 68
      Width = 531
      Height = 217
      Caption = 'Listado de  Especialidades'
      TabOrder = 0
      object DBGrid1: TDBGrid
        Left = 2
        Top = 15
        Width = 527
        Height = 200
        Align = alClient
        Color = clMoneyGreen
        DataSource = dtsgrupoespecialidades
        Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'CODCAMPO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOMCAMPO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FORMATO'
            Visible = True
          end>
      end
    end
    object DBNavigator1: TDBNavigator
      Left = 20
      Top = 288
      Width = 508
      Height = 37
      DataSource = dtsgrupoespecialidades
      VisibleButtons = [nbInsert, nbEdit, nbPost, nbRefresh]
      TabOrder = 1
    end
  end
  object dtsgrupoespecialidades: TDataSource
    DataSet = DataModule1.qrycampos
    Left = 160
    Top = 88
  end
end
