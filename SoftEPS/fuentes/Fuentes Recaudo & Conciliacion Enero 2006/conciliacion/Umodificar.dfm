object frmmodificar: Tfrmmodificar
  Left = 54
  Top = 91
  Width = 696
  Height = 478
  ActiveControl = dbcbbancos
  Caption = 'Modificacion Estracto'
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
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 688
    Height = 47
    Align = alTop
    TabOrder = 0
    object dbcbbancos: TDBLookupComboBox
      Left = 24
      Top = 14
      Width = 309
      Height = 21
      Color = clMoneyGreen
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      KeyField = 'cod_banco'
      ListField = 'nom_banco'
      ListSource = DataModule1.dtsbancos
      ParentFont = False
      TabOrder = 0
    end
    object DBNavigator1: TDBNavigator
      Left = 352
      Top = 10
      Width = 297
      Height = 23
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbEdit, nbPost, nbCancel, nbRefresh]
      TabOrder = 1
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 47
    Width = 688
    Height = 404
    Align = alClient
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 686
      Height = 402
      Align = alClient
      Color = clMoneyGreen
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'fec_recaudo'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'num_documento'
          ReadOnly = True
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'num_planilla'
          ReadOnly = True
          Width = 165
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'val_consignacion'
          Width = 168
          Visible = True
        end>
    end
  end
end
