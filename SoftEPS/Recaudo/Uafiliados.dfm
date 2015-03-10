object frmafiliados: Tfrmafiliados
  Left = 241
  Top = 101
  Width = 593
  Height = 371
  Caption = 'Afiliados  Activos  en la  Empresa'
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
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 299
    Width = 585
    Height = 45
    Align = alBottom
    TabOrder = 0
    object DBNavigator1: TDBNavigator
      Left = 1
      Top = 1
      Width = 583
      Height = 43
      DataSource = dtsafiliados
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert]
      Align = alClient
      TabOrder = 0
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 585
    Height = 299
    Align = alClient
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 583
      Height = 297
      Align = alClient
      Color = clMoneyGreen
      DataSource = DataModule1.dtsafilados
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
  object dtsafiliados: TDataSource
    Left = 594
    Top = 8
  end
end
