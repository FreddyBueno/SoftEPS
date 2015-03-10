object frmusuarioslogin: Tfrmusuarioslogin
  Left = 117
  Top = 112
  Width = 544
  Height = 375
  Caption = 'Usuarios  con login disponibles'
  Color = clBtnFace
  DefaultMonitor = dmMainForm
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
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 536
    Height = 45
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 100
      Top = 14
      Width = 316
      Height = 25
      Caption = 'Usuario  Con login Disponibles'
      FocusControl = DBGrid1
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 45
    Width = 536
    Height = 303
    Align = alClient
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 534
      Height = 301
      Align = alClient
      Color = clMoneyGreen
      DataSource = DataSource1
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = DBGrid1DblClick
    end
  end
  object DataSource1: TDataSource
    DataSet = DataModule1.qrylogin
    Left = 424
    Top = 10
  end
end
